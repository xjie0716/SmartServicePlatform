<%@ page language="java" import="java.util.*,java.util.ArrayList,net.simflow.ssp.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>服务管理界面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
   	<link href="dist/css/bootstrap.css" rel="stylesheet">
    <script type="text/javascript" src="dist/js/jquery.js"></script>  
   	<script type="text/javascript" src="dist/js/bootstrap.js"></script>
 
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
	    HttpSession mysession=request.getSession();
	    User user=(User)mysession.getValue("LogInUser");  
       %>
       <%if((request.getSession()).getValue("LogInUser")!=null){ %>
	      <li><a href="/Smart_Service_Platform/UserInfo.jsp?userid= <%=((User)(request.getSession()).getValue("LogInUser")).getid() %>" target="_blank">您好,<%=((User)(request.getSession()).getValue("LogInUser")).getName() %></a></li>
	      <li><a href="/Smart_Service_Platform/servlet/LogOut">注销</a></li>
	   <% }else{ %>
		      <li><a href="/Smart_Service_Platform/Login.jsp">登录</a></li>
		     <li><a href="/Smart_Service_Platform/Register.jsp">注册</a></li>
	   <% }%>     

      </ul>
    </nav>
  </div>
</header>
<br>
<br>
<br>
<div class="container">
   
       <div class="col-md-8">

	   	<h4>您管理的服务</h4><hr>
		<h4>平台服务</h4><hr>
       <%
	       ArrayList platservicelist=new ArrayList<PlatService>();
	       PlatServiceDAO platservicedao=new PlatServiceDAO();
	       platservicelist=platservicedao.GetGlobalLatestPlatService(2);
	       for(int i=0;i<platservicelist.size();i++){
	    %>
	    		<form  class="form-signin" role="form" id="servicemanagement" target="_blank" action="/Smart_Service_Platform/ServiceManagement.jsp" method="service">
            		<h5><a href="<%=((PlatService)(platservicelist.get(i))).getplatserviceurl()%>" target="_blank"><%=((PlatService)(platservicelist.get(i))).getplatservicename()%></a>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
           			<button type="submit" class="btn btn-sm btn-primary">查看</button>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
           			<button type="submit" class="btn btn-sm btn-primary">编辑</button>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
           			<button type="submit" class="btn btn-sm btn-primary">删除</button></h5>
            	</form>
				
				<h6><%=((PlatService)(platservicelist.get(i))).getcontent() %></h6>
				<p><%=((PlatService)(platservicelist.get(i))).getbirthday() %></p>
	     <%  } %>
	       <hr>
	       
	       <h4>酒店服务</h4><hr>
	     <%  
	       ArrayList hotelservicelist=new ArrayList<HotelService>();
	       HotelServiceDAO hotelservicedao=new HotelServiceDAO();
	       hotelservicelist=hotelservicedao.GetGlobalLatestHotelService(2);
	       for(int i=0;i<hotelservicelist.size();i++){
	     %>
	     		<form  class="form-signin" role="form" id="servicemanagement" target="_blank" action="/Smart_Service_Platform/ServiceManagement.jsp" method="service">
            		<h5><a href="<%=((HotelService)(hotelservicelist.get(i))).gethotelurl() %>" target="_blank"><%=((HotelService)(hotelservicelist.get(i))).gethotelservicename() %></a>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
           			<button type="submit" class="btn btn-sm btn-primary">查看</button>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
           			<button type="submit" class="btn btn-sm btn-primary">编辑</button>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
           			<button type="submit" class="btn btn-sm btn-primary">删除</button></h5>
            	</form>
				
				<h6>最低价：<%=((HotelService)(hotelservicelist.get(i))).gethotelprice() %>；<%=((HotelService)(hotelservicelist.get(i))).gethoteltype() %>；<%=((HotelService)(hotelservicelist.get(i))).gethotelarea() %></h6>
				<h6><%=((HotelService)(hotelservicelist.get(i))).gethoteladd() %></h6>
	      <% }%>
	      <hr>
	  	</div>
	  	
	  	<div class="col-md-4">  
                     
   		<%@include file="search.jsp" %>
	    	
    	</div>
        
</div>
      

  </body>
</html>
