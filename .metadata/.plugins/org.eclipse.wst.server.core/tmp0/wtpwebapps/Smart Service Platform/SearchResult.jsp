<%@ page language="java"  import="java.util.*,net.simflow.ssp.*" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>搜索结果</title>
<!-- Bootstrap core CSS
   
 -->
  <link href="dist/css/bootstrap.css" rel="stylesheet">
      <script type="text/javascript" src="dist/js/jquery.js"></script>  
   <script type="text/javascript" src="dist/js/bootstrap.js"></script>
    <!-- Custom styles for this template -->
  <!-- <link href="signin.css" rel="stylesheet"> 
    <link href="square.css" rel="stylesheet">
-->  
</head>
<body>
<header class="navbar navbar-inverse navbar-fixed-top bs-docs-nav" role="banner">
  <div class="container">
    <nav class="collapse navbar-collapse bs-navbar-collapse" role="navigation">
      <ul class="nav navbar-nav">
        <li  class="active">
          <a><font color=yellow size=4>智能服务平台</font></a>
        
      </ul>
      <ul class="nav navbar-nav">
        <li  class="active">
          <li>
          <a href="MainPage.jsp">首页</a>
          </li>
        
      </ul>
      <ul class="nav navbar-nav navbar-right">

 <%
      if((request.getSession()).getValue("LogInUser")!=null){
      out.println("<li>");
      out.println("<a href=\"/Smart_Service_Platform/UserInfo.jsp?userid="+((User)(request.getSession()).getValue("LogInUser")).getid()+"\"target=\"_blank\">您好,"+((User)(request.getSession()).getValue("LogInUser")).getName()+"</a>");
      out.println("</li>");
      out.println("<li>");
      out.println("<a href=\"/Smart_Service_Platform/servlet/LogOut\">注销</a>");
      out.println("</li>");
      }
      else{
      out.println("<li>");
      out.println("<a href=\"/Smart_Service_Platform/Login.jsp\">登录</a>");
      out.println("</li>");
      out.println("<li>");
      out.println("<a href=\"/Smart_Service_Platform/Register.jsp\">注册</a>");
      out.println("</li>");
      }     
       %>

      </ul>
    </nav>
  </div>
</header>
<br>
<br>
<br>
<div class="container">
   
       <div class="col-md-4">

       <%
       out.println("<h4>已注册服务</h4>");
       out.println("<hr>");
       out.println("<h4>平台服务</h4>");
       out.println("<hr>");
       ArrayList platservicelist=new ArrayList<PlatService>();
       PlatServiceDAO platservicedao=new PlatServiceDAO();
       platservicelist=platservicedao.GetGlobalLatestPlatService(5);
       for(int i=0;i<platservicelist.size();i++){
			out.println("<h5>"+"<a href=\""+((PlatService)(platservicelist.get(i))).getplatserviceurl()+"\"target=\"_blank\">"+((PlatService)(platservicelist.get(i))).getplatservicename()+"</a><br>"+"</h5>");
			out.println("<h6>"+((PlatService)(platservicelist.get(i))).getcontent()+"</h6>");
			out.println("<p>"+((PlatService)(platservicelist.get(i))).getbirthday()+"</p>");
       }
       
       out.println("<hr>");
       out.println("<h4>酒店服务</h4>");
       out.println("<hr>");
       ArrayList hotelservicelist=new ArrayList<HotelService>();
       HotelServiceDAO hotelservicedao=new HotelServiceDAO();
       hotelservicelist=hotelservicedao.GetGlobalLatestHotelService(5);
       for(int i=0;i<hotelservicelist.size();i++){
			out.println("<h5>"+"<a href=\""+((HotelService)(hotelservicelist.get(i))).gethotelurl()+"\"target=\"_blank\">"+((HotelService)(hotelservicelist.get(i))).gethotelservicename()+"</a><br>"+"</h5>");
			out.println("<h6>"+"最低价："+((HotelService)(hotelservicelist.get(i))).gethotelprice()+"；"+((HotelService)(hotelservicelist.get(i))).gethoteltype()+"；"+((HotelService)(hotelservicelist.get(i))).gethotelarea()+"</h6>");
			out.println("<h6>"+((HotelService)(hotelservicelist.get(i))).gethoteladd()+"</h6>");
			out.println("<IMG alt=\"\" src="+((HotelService)(hotelservicelist.get(i))).gethotelpic()+" width=\"200\" />");
       }
		%>
		<hr>
	  	</div>
	  	
        <div class="col-md-4">               
   		<%@include file="search.jsp" %>

   		<% 
   		request.setCharacterEncoding("utf-8");
   		PlatServiceDAO platservicedaosearch=new PlatServiceDAO();
	    String SearchPlatService=(String)request.getParameter("SearService");	     
	    ArrayList platal=new ArrayList<PlatService>();
		platal=platservicedaosearch.SearchPlatService(SearchPlatService);
		out.println("<hr>");
		if (platal.size() == 0) {
       		out.println("<h4> 没有符合条件的平台服务。。</h4>");
       		out.println("<hr>");
       	} else {
      	out.println("<h4> 符合条件的平台服务:</h4>");
       	out.println("<hr>");
       	int size = platal.size();
       	if (platal.size()>=10) {
       		size = 10;
       	}
       	for(int i=0;i<size;i++){
			//out.println("<h3>"+((PlatService)(platal.get(i))).getownername()+"</h3>");
			out.println("<h5>"+"<a href=\""+((PlatService)(platal.get(i))).getplatserviceurl()+"\"target=\"_blank\">"+((PlatService)(platal.get(i))).getplatservicename()+"</a><br>"+"</h5>");
			//out.println("<h3>"+"<a href=\"/Smart_Service_Platform/UserInfo.jsp?userid="+((PlatService)(platal.get(i))).getownid()+"\">"+((PlatService)(platal.get(i))).getownername()+"</a><br>"+"</h3>");
			out.println("<h6>"+((PlatService)(platal.get(i))).getcontent()+"</h6>");
			out.println("<p>"+((PlatService)(platal.get(i))).getbirthday()+"</p>");
        }  
        out.println("<hr>");
       	}
       	
       	HotelServiceDAO hotelservicedaosearch=new HotelServiceDAO();
	    String SearchHotelService=(String)request.getParameter("SearService");	     
	    ArrayList hotelal=new ArrayList<HotelService>();
		hotelal=hotelservicedaosearch.SearchHotelService(SearchHotelService);
       	if (hotelal.size() == 0) {
       		out.println("<h4> 没有符合条件的酒店服务。。</h4>");
       		out.println("<hr>");
       	} else {
      	out.println("<h4> 符合条件的酒店服务:</h4>");
       	out.println("<hr>");
       	int size = hotelal.size();
       	if (hotelal.size()>=10) {
       		size = 10;
       	}
        for(int i=0;i<size;i++){
			//out.println("<h3>"+((HotelService)(hotelal.get(i))).getownername()+"</h3>");
			out.println("<h5>"+"<a href=\""+((HotelService)(hotelal.get(i))).gethotelurl()+"\"target=\"_blank\">"+((HotelService)(hotelal.get(i))).gethotelservicename()+"</a><br>"+"</h5>");
			//out.println("<h3>"+"<a href=\"/Smart_Service_Hotelform/UserInfo.jsp?userid="+((HotelService)(hotelal.get(i))).getownid()+"\">"+((HotelService)(hotelal.get(i))).getownername()+"</a><br>"+"</h3>");
			out.println("<h6>"+"最低价："+((HotelService)(hotelal.get(i))).gethotelprice()+"；"+((HotelService)(hotelal.get(i))).gethoteltype()+"；"+((HotelService)(hotelal.get(i))).gethotelarea()+"</h6>");
			out.println("<h6>"+((HotelService)(hotelal.get(i))).gethoteladd()+"</h6>");
			out.println("<IMG alt=\"\" src="+((HotelService)(hotelal.get(i))).gethotelpic()+" width=\"200\" />");
        }  
        out.println("<hr>");
       	}
  
         %>
    	</div>
    	
        <div class="col-md-4">
        <%
        out.println("<h4>服务推荐</h4>");
        out.println("<hr>");
        out.println("<h4>平台服务</h4>");
        out.println("<hr>");
        ArrayList platservicelistrec=new ArrayList<PlatService>();
        PlatServiceDAO platservicedaorec=new PlatServiceDAO();
        platservicelistrec=platservicedaorec.GetGlobalLatestPlatService(5);
        for(int i=0;i<platservicelistrec.size();i++){
 			out.println("<h5>"+"<a href=\""+((PlatService)(platservicelistrec.get(i))).getplatserviceurl()+"\"target=\"_blank\">"+((PlatService)(platservicelistrec.get(i))).getplatservicename()+"</a><br>"+"</h5>");
 			out.println("<h6>"+((PlatService)(platservicelistrec.get(i))).getcontent()+"</h6>");
 			out.println("<p>"+((PlatService)(platservicelistrec.get(i))).getbirthday()+"</p>");
        }
        
        out.println("<hr>");
        out.println("<h4>酒店服务</h4>");
        out.println("<hr>");
        ArrayList hotelservicelistrec=new ArrayList<HotelService>();
        HotelServiceDAO hotelservicedaorec=new HotelServiceDAO();
        hotelservicelistrec=hotelservicedaorec.GetGlobalLatestHotelService(5);
        for(int i=0;i<hotelservicelistrec.size();i++){
 			out.println("<h5>"+"<a href=\""+((HotelService)(hotelservicelistrec.get(i))).gethotelurl()+"\"target=\"_blank\">"+((HotelService)(hotelservicelistrec.get(i))).gethotelservicename()+"</a><br>"+"</h5>");
 			out.println("<h6>"+"最低价："+((HotelService)(hotelservicelistrec.get(i))).gethotelprice()+"；"+((HotelService)(hotelservicelistrec.get(i))).gethoteltype()+"；"+((HotelService)(hotelservicelistrec.get(i))).gethotelarea()+"</h6>");
 			out.println("<h6>"+((HotelService)(hotelservicelistrec.get(i))).gethoteladd()+"</h6>");
 			out.println("<IMG alt=\"\" src="+((HotelService)(hotelservicelistrec.get(i))).gethotelpic()+" width=\"200\" />");
        }
		%>
		<hr>
      	</div>     

</div>

         

</body>
</html>