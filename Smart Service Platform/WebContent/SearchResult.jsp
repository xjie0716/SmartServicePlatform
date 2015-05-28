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
    <div class="navbar-header">
      <button class="navbar-toggle" type="button" data-toggle="collapse" data-target=".bs-navbar-collapse">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a href="#" class="navbar-brand">智能服务平台</a>
    </div>
    <nav class="collapse navbar-collapse bs-navbar-collapse" role="navigation">
      <ul class="nav navbar-nav">
        <li class="active">
          <a href="/Smart_Service_Platform/MainPage.jsp">首页</a>
        </li>
       
      </ul>
      <ul class="nav navbar-nav navbar-right">

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

   		<% 
   		request.setCharacterEncoding("utf-8");
   		PostDAO postdao1=new PostDAO();
	    String SearchBlog=(String)request.getParameter("SearBlog");	     
	    ArrayList al=new ArrayList<Post>();
		al=postdao1.SearchPost(SearchBlog);
       	if (al.size() == 0) {
       		out.println("<h5> 没有符合条件的服务！</h5>");
       		out.println("<hr>");
       	} else {
      	out.println("<h5> 符合条件的服务:</h5>");
       	out.println("<hr>");
        for(int i=0;i<al.size();i++){
			//out.println("<h3>"+((Post)(al.get(i))).getownername()+"</h3>");
			out.println("<h5>"+"<a href=\""+((Post)(al.get(i))).getposturl()+"\">"+((Post)(al.get(i))).getpostname()+"</a><br>"+"</h5>");
			//out.println("<h3>"+"<a href=\"/Smart_Service_Platform/UserInfo.jsp?userid="+((Post)(al.get(i))).getownid()+"\">"+((Post)(al.get(i))).getownername()+"</a><br>"+"</h3>");
			out.println("<h6>"+((Post)(al.get(i))).getcontent()+"</h6>");
			out.println("<p>"+((Post)(al.get(i))).getbirthday()+"</p>");
        }  
        out.println("<hr>");
       	}
  
         %>
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