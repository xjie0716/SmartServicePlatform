<%@ page language="java" import="net.simflow.ssp.*" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>服务注册界面</title>
<!-- Bootstrap core CSS -->
    <link href="dist/css/bootstrap.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="/Smart_Service_Platform/dist/css/signin.css" rel="stylesheet">
    <style>
body{font-family:"ff-tisa-web-pro-1","ff-tisa-web-pro-2","Lucida Grande","Helvetica Neue",Helvetica,Arial,"Hiragino Sans GB","Hiragino Sans GB W3","WenQuanYi Micro Hei",sans-serif;}
h1, .h1, h2, .h2, h3, .h3, h4, .h4, .lead {font-family:"ff-tisa-web-pro-1","ff-tisa-web-pro-2","Lucida Grande","Helvetica Neue",Helvetica,Arial,"Hiragino Sans GB","Hiragino Sans GB W3","Microsoft YaHei UI","Microsoft YaHei","WenQuanYi Micro Hei",sans-serif;}
pre code { background: transparent; }
@media (min-width: 768px) {
    .bs-docs-home .bs-social, 
    .bs-docs-home .bs-masthead-links {
      margin-left: 0;
    }
}
</style>
</head>
<body>
 <script src="scripts/jquery-1.10.2.min.js" type="text/javascript"></script>
 <script src="scripts/jquery.validate.js" type="text/javascript"></script>
 <script src="scripts/my.js" type="text/javascript"></script>
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

<div class="container">
      <form  id="RegisterForm" name="RegisterForm" class="form-signin" role="form" method="service"  action="servlet/AddPlatService">
        <h2 class="form-signin-heading">平台服务注册</h2>
        <input  id="platservicename" name="platservicename" type="text" class="form-control" placeholder="服务名称" required autofocus>
        <br>
        <textarea name="content" style="width:300px;height:200px;" placeholder="服务描述" required></textarea>
        <br>
        <br>
        <input id="platserviceurl" name="platserviceurl" type="text" class="form-control" placeholder="服务接口" required>
        <br>
        <button class="btn btn-lg btn-primary btn-block" type="submit">注册</button>
      </form>

    </div> <!-- /container -->
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
 
 
 
 
</body>
</html>