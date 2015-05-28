<%@ page language="java" import="java.util.*,java.util.ArrayList,net.simflow.ssp.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>首页</title>
    
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
    <div class="navbar-header">
      <button class="navbar-toggle" type="button" data-toggle="collapse" data-target=".bs-navbar-collapse">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a href="MainPage.jsp" class="navbar-brand">智能服务平台</a>
    </div>
    <nav class="collapse navbar-collapse bs-navbar-collapse" role="navigation">
      <ul class="nav navbar-nav">
        <li  class="active">
          <a href="MainPage.jsp">首页</a>
        
      </ul>
      <ul class="nav navbar-nav navbar-right">

      <%  
    HttpSession mysession=request.getSession();
    User user=(User)mysession.getValue("LogInUser");  
       %>
          <%
      if((request.getSession()).getValue("LogInUser")!=null){
      out.println("<li>");
      out.println("<a href=\"/Smart_Service_Platform/UserInfo.jsp?userid="+((User)(request.getSession()).getValue("LogInUser")).getid()+"\">您好,"+((User)(request.getSession()).getValue("LogInUser")).getName()+"</a>");
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
       ArrayList postlist=new ArrayList<Post>();
       PostDAO postdao=new PostDAO();
       postlist=postdao.GetGlobalLatestPost(5);
       for(int i=0;i<postlist.size();i++){
			out.println("<h5>"+"<a href=\""+((Post)(postlist.get(i))).getposturl()+"\">"+((Post)(postlist.get(i))).getpostname()+"</a><br>"+"</h5>");
			out.println("<h6>"+((Post)(postlist.get(i))).getcontent()+"</h6>");
			out.println("<p>"+((Post)(postlist.get(i))).getbirthday()+"</p>");
       }
		%>
		<hr>
	  	</div>
	  	
        <div class="col-md-4">               
   		<%@include file="search.jsp" %>
    	</div>
    	
        <div class="col-md-4">
        <%
        out.println("<h4>服务推荐</h4>");
        out.println("<hr>");
       	ArrayList postlist2=new ArrayList<Post>();
       	PostDAO postdao2=new PostDAO();
       	postlist2=postdao2.GetGlobalLatestPost(5);
       	for(int i=0;i<postlist.size();i++){
			out.println("<h5>"+"<a href=\""+((Post)(postlist2.get(i))).getposturl()+"\">"+((Post)(postlist2.get(i))).getpostname()+"</a><br>"+"</h5>");
			out.println("<h6>"+((Post)(postlist2.get(i))).getcontent()+"</h6>");
			out.println("<p>"+((Post)(postlist2.get(i))).getbirthday()+"</p>");
       	}
		%>
		<hr>
      	</div>     

</div>
      

  </body>
</html>
