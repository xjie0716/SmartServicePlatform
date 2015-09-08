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
   

<!-- 不使用serviceclass -->
	  	
        <div class="col-md-12">  
                     
   		<%@include file="searchconcise.jsp" %>
	    	
    	</div>
    	
		</div>
  

  </body>
</html>
