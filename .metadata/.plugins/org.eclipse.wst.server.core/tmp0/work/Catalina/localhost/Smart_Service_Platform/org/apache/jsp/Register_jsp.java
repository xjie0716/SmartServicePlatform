/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.0.23
 * Generated at: 2015-06-08 12:09:40 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import net.simflow.ssp.*;

public final class Register_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_packages.add("net.simflow.ssp");
    _jspx_imports_classes = null;
  }

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

final java.lang.String _jspx_method = request.getMethod();
if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET POST or HEAD");
return;
}

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=utf-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=ISO-8859-1\">\n");
      out.write("<title>用户注册界面</title>\n");
      out.write("<!-- Bootstrap core CSS -->\n");
      out.write("    <link href=\"dist/css/bootstrap.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("    <!-- Custom styles for this template -->\n");
      out.write("    <link href=\"signin.css\" rel=\"stylesheet\">\n");
      out.write("    <style>\n");
      out.write("body{font-family:\"ff-tisa-web-pro-1\",\"ff-tisa-web-pro-2\",\"Lucida Grande\",\"Helvetica Neue\",Helvetica,Arial,\"Hiragino Sans GB\",\"Hiragino Sans GB W3\",\"WenQuanYi Micro Hei\",sans-serif;}\n");
      out.write("h1, .h1, h2, .h2, h3, .h3, h4, .h4, .lead {font-family:\"ff-tisa-web-pro-1\",\"ff-tisa-web-pro-2\",\"Lucida Grande\",\"Helvetica Neue\",Helvetica,Arial,\"Hiragino Sans GB\",\"Hiragino Sans GB W3\",\"Microsoft YaHei UI\",\"Microsoft YaHei\",\"WenQuanYi Micro Hei\",sans-serif;}\n");
      out.write("pre code { background: transparent; }\n");
      out.write("@media (min-width: 768px) {\n");
      out.write("    .bs-docs-home .bs-social, \n");
      out.write("    .bs-docs-home .bs-masthead-links {\n");
      out.write("      margin-left: 0;\n");
      out.write("    }\n");
      out.write("}\n");
      out.write("</style>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write(" <script src=\"scripts/jquery-1.10.2.min.js\" type=\"text/javascript\"></script>\n");
      out.write(" <script src=\"scripts/jquery.validate.js\" type=\"text/javascript\"></script>\n");
      out.write(" <script src=\"scripts/my.js\" type=\"text/javascript\"></script>\n");
      out.write("  <header class=\"navbar navbar-inverse navbar-fixed-top bs-docs-nav\" role=\"banner\">\n");
      out.write("  <div class=\"container\">\n");
      out.write("    <nav class=\"collapse navbar-collapse bs-navbar-collapse\" role=\"navigation\">\n");
      out.write("      <ul class=\"nav navbar-nav\">\n");
      out.write("        <li  class=\"active\">\n");
      out.write("          <a><font color=yellow size=4>智能服务平台</font></a>\n");
      out.write("        \n");
      out.write("      </ul>\n");
      out.write("      <ul class=\"nav navbar-nav\">\n");
      out.write("        <li  class=\"active\">\n");
      out.write("          <li>\n");
      out.write("          <a href=\"MainPage.jsp\">首页</a>\n");
      out.write("          </li>\n");
      out.write("        \n");
      out.write("      </ul>\n");
      out.write("      <ul class=\"nav navbar-nav navbar-right\">\n");
      out.write("       ");

      out.println("<li>");
      out.println("<a href=\"/Smart_Service_Platform/Login.jsp\">登录</a>");
      out.println("</li>");
       
      out.write("\n");
      out.write("      </ul>\n");
      out.write("    </nav>\n");
      out.write("  </div>\n");
      out.write("</header>\n");
      out.write("\n");
      out.write("<div class=\"container\">\n");
      out.write("      <form  id=\"RegisterForm\" name=\"RegisterForm\" class=\"form-signin\" role=\"form\" method=\"service\"  action=\"servlet/AddUser\">\n");
      out.write("        <h2 class=\"form-signin-heading\">请注册</h2>\n");
      out.write("        <input  id=\"name\" name=\"name\" type=\"text\" class=\"form-control\" placeholder=\"用户名\" required autofocus>\n");
      out.write("        <br> \n");
      out.write("        <input id=\"password\" name=\"password\" type=\"password\" class=\"form-control\"  placeholder=\"密码\">\n");
      out.write("         <br>\n");
      out.write("        <input id=\"confirm_password\" name=\"confirm_password\" type=\"password\" class=\"form-control\"  placeholder=\"再次确认密码\">\n");
      out.write("        <br>\n");
      out.write("        <input id=\"email\" name=\"email\" type=\"text\" class=\"form-control\" placeholder=\"邮箱\" required>\n");
      out.write("        <br>\n");
      out.write("\t\t<input id=\"age\" name=\"age\" type=\"text\" class=\"form-control\" placeholder=\"年龄\" required>\n");
      out.write("        <label class=\"checkbox\">\n");
      out.write("          <input type=\"checkbox\" value=\"direct_to_mainpage\">转向主页\n");
      out.write("        </label>\n");
      out.write("        <button class=\"btn btn-lg btn-primary btn-block\" type=\"submit\">注册</button>\n");
      out.write("      </form>\n");
      out.write("\n");
      out.write("    </div> <!-- /container -->\n");
      out.write("    <!-- Bootstrap core JavaScript\n");
      out.write("    ================================================== -->\n");
      out.write("    <!-- Placed at the end of the document so the pages load faster -->\n");
      out.write(" \n");
      out.write(" \n");
      out.write(" \n");
      out.write(" \n");
      out.write("</body>\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
