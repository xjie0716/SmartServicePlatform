/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.0.23
 * Generated at: 2015-06-16 11:59:22 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;
import java.util.ArrayList;
import net.simflow.ssp.*;

public final class MainPage_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(1);
    _jspx_dependants.put("/search.jsp", Long.valueOf(1434369926000L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("java.util");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_packages.add("net.simflow.ssp");
    _jspx_imports_classes = new java.util.HashSet<>();
    _jspx_imports_classes.add("java.util.ArrayList");
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

      out.write('\n');

String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">\n");
      out.write("<html>\n");
      out.write("  <head>\n");
      out.write("    <base href=\"");
      out.print(basePath);
      out.write("\">\n");
      out.write("    \n");
      out.write("    <title>首页</title>\n");
      out.write("    \n");
      out.write("\t<meta http-equiv=\"pragma\" content=\"no-cache\">\n");
      out.write("\t<meta http-equiv=\"cache-control\" content=\"no-cache\">\n");
      out.write("\t<meta http-equiv=\"expires\" content=\"0\">    \n");
      out.write("\t<meta http-equiv=\"keywords\" content=\"keyword1,keyword2,keyword3\">\n");
      out.write("\t<meta http-equiv=\"description\" content=\"This is my page\">\n");
      out.write("   \t<link href=\"dist/css/bootstrap.css\" rel=\"stylesheet\">\n");
      out.write("    <script type=\"text/javascript\" src=\"dist/js/jquery.js\"></script>  \n");
      out.write("   \t<script type=\"text/javascript\" src=\"dist/js/bootstrap.js\"></script>\n");
      out.write(" \n");
      out.write("  </head>\n");
      out.write("  \n");
      out.write("  <body>\n");
      out.write("  <header class=\"navbar navbar-inverse navbar-fixed-top bs-docs-nav\" role=\"banner\">\n");
      out.write("  <div class=\"container\">\n");
      out.write("\n");
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
      out.write("\n");
      out.write("      ");
  
	    HttpSession mysession=request.getSession();
	    User user=(User)mysession.getValue("LogInUser");  
       
      out.write("\n");
      out.write("       ");
if((request.getSession()).getValue("LogInUser")!=null){ 
      out.write("\n");
      out.write("\t      <li><a href=\"/Smart_Service_Platform/UserInfo.jsp?userid= ");
      out.print(((User)(request.getSession()).getValue("LogInUser")).getid() );
      out.write("\" target=\"_blank\">您好,");
      out.print(((User)(request.getSession()).getValue("LogInUser")).getName() );
      out.write("</a></li>\n");
      out.write("\t      <li><a href=\"/Smart_Service_Platform/servlet/LogOut\">注销</a></li>\n");
      out.write("\t   ");
 }else{ 
      out.write("\n");
      out.write("\t\t      <li><a href=\"/Smart_Service_Platform/Login.jsp\">登录</a></li>\n");
      out.write("\t\t     <li><a href=\"/Smart_Service_Platform/Register.jsp\">注册</a></li>\n");
      out.write("\t   ");
 }
      out.write("     \n");
      out.write("\n");
      out.write("      </ul>\n");
      out.write("    </nav>\n");
      out.write("  </div>\n");
      out.write("</header>\n");
      out.write("<br>\n");
      out.write("<br>\n");
      out.write("<br>\n");
      out.write("<div class=\"container\">\n");
      out.write("   \n");
      out.write("       <div class=\"col-md-4\">\n");
      out.write("\n");
      out.write("\t   \t<h4>已注册服务</h4>\n");
      out.write("\t   \t<div class=\"show-content\">\n");
      out.write("\t   \t\t");
 
	   			ArrayList serviceclasslist = new ArrayList<ServiceClass>();
	   			ServiceClassDAO serviceclassdao = new ServiceClassDAO();
	   			serviceclasslist = serviceclassdao.SearchAllClassservice();
	   			ServiceClass serviceclass = new ServiceClass();
	   			for(int i = 0; i < serviceclasslist.size(); i++){
	   				serviceclass = (ServiceClass)serviceclasslist.get(i);
	   		
      out.write("\n");
      out.write("\t   \t\t\t\t<h4>\n");
      out.write("\t   \t\t\t\t\t<img class=\"level1\" src=\"dist/images/arrowright.png\" style=\"width:15px;height:15px;margin-right:5px;\"/>\n");
      out.write("\t   \t\t\t\t\t<span class=\"level1\" classid = \"");
      out.print(serviceclass.getClassid() );
      out.write("\" table=\"");
      out.print( serviceclass.getClasstable() );
      out.write('"');
      out.write('>');
      out.print( serviceclass.getClassname() );
      out.write("</span>\n");
      out.write("\t   \t\t\t\t</h4>\n");
      out.write("\t   \t\t\t\t\n");
      out.write("\t   \t\t");
 
	   			}
	   		
      out.write("\t\n");
      out.write("\t   \t</div>\n");
      out.write("\t   \t\n");
      out.write("<!-- \t\t<h4>平台服务</h4>\n");
      out.write("       ");

	       ArrayList platservicelist=new ArrayList<PlatService>();
	       PlatServiceDAO platservicedao=new PlatServiceDAO();
	       platservicelist=platservicedao.GetGlobalLatestPlatService(5);
	       for(int i=0;i<platservicelist.size();i++){
	    
      out.write("\n");
      out.write("\t\t\t\t<h5><a href=\"");
      out.print(((PlatService)(platservicelist.get(i))).getplatserviceurl());
      out.write("\" target=\"_blank\">");
      out.print(((PlatService)(platservicelist.get(i))).getplatservicename());
      out.write("</a><br></h5>\n");
      out.write("\t\t\t\t<h6>");
      out.print(((PlatService)(platservicelist.get(i))).getcontent() );
      out.write("</h6>\n");
      out.write("\t\t\t\t<p>");
      out.print(((PlatService)(platservicelist.get(i))).getbirthday() );
      out.write("</p>\n");
      out.write("\t     ");
  } 
      out.write("\n");
      out.write("\t       \n");
      out.write("\t       <h4>酒店服务</h4><hr>\n");
      out.write("\t     ");
  
	       ArrayList hotelservicelist=new ArrayList<HotelService>();
	       HotelServiceDAO hotelservicedao=new HotelServiceDAO();
	       hotelservicelist=hotelservicedao.GetGlobalLatestHotelService(5);
	       for(int i=0;i<hotelservicelist.size();i++){
	     
      out.write("\n");
      out.write("\t\t\t\t<h5><a href=\"");
      out.print(((HotelService)(hotelservicelist.get(i))).gethotelurl() );
      out.write("\" target=\"_blank\">");
      out.print(((HotelService)(hotelservicelist.get(i))).gethotelservicename() );
      out.write("</a><br></h5>\n");
      out.write("\t\t\t\t<h6>最低价：");
      out.print(((HotelService)(hotelservicelist.get(i))).gethotelprice() );
      out.write('；');
      out.print(((HotelService)(hotelservicelist.get(i))).gethoteltype() );
      out.write('；');
      out.print(((HotelService)(hotelservicelist.get(i))).gethotelarea() );
      out.write("</h6>\n");
      out.write("\t\t\t\t<h6>");
      out.print(((HotelService)(hotelservicelist.get(i))).gethoteladd() );
      out.write("</h6>\n");
      out.write("\t\t\t\t<IMG alt=\"\" src=\"");
      out.print(((HotelService)(hotelservicelist.get(i))).gethotelpic() );
      out.write("\"  width=100 />\n");
      out.write("\t      ");
 }
      out.write("\n");
      out.write(" -->\n");
      out.write("\t  \t</div>\n");
      out.write("\t  \t\n");
      out.write("        <div class=\"col-md-4\">  \n");
      out.write("                     \n");
      out.write("   \t\t");
      out.write("\n");
      out.write("\n");
      out.write("    <form  class=\"form-signin\" role=\"form\" id=\"searchservice\" action=\"/Smart_Service_Platform/SearchResult.jsp\" method=\"service\">\n");
      out.write("    \t<h4>搜索服务</h4>\n");
      out.write("    \t<input id=\"SearService\" name=\"SearService\" type=\"text\"  class=\"form-control\" placeholder=\"请输入想要搜索的服务\" required >\n");
      out.write("    \t<br>\n");
      out.write("   \t\t<button type=\"submit\" class=\"btn btn-sm btn-primary\">搜索</button>\n");
      out.write("    </form>");
      out.write("\n");
      out.write("    \t</div>\n");
      out.write("    \t\n");
      out.write("        <div class=\"col-md-4\">\n");
      out.write("\t        <h4>服务推荐</h4>\n");
      out.write("\t        <div class=\"show-content\">\n");
      out.write("\t\t        <h4>平台服务</h4>\n");
      out.write("\t\t        ");

			        ArrayList platservicelistrec=new ArrayList<PlatService>();
			        PlatServiceDAO platservicedaorec=new PlatServiceDAO();
			        platservicelistrec=platservicedaorec.GetGlobalLatestPlatService(5);
			        for(int i=0;i<platservicelistrec.size();i++){
			     
      out.write("\n");
      out.write("\t\t\t \t\t<h5><a href=\"");
      out.print(((PlatService)(platservicelistrec.get(i))).getplatserviceurl());
      out.write('"');
      out.write('>');
      out.print(((PlatService)(platservicelistrec.get(i))).getplatservicename());
      out.write("</a><br></h5>\t\n");
      out.write("\t\t\t \t\t<h6>");
      out.print(((PlatService)(platservicelistrec.get(i))).getcontent());
      out.write("</h6>\n");
      out.write("\t\t\t \t\t<p>");
      out.print(((PlatService)(platservicelistrec.get(i))).getbirthday());
      out.write("</p>\n");
      out.write("\t\t\t     ");
 } 
      out.write("\n");
      out.write("\t\t\t        \n");
      out.write("\t\t\t        <h4>酒店服务</h4><hr>\n");
      out.write("\t\t\t     ");

			        ArrayList hotelservicelistrec=new ArrayList<HotelService>();
			        HotelServiceDAO hotelservicedaorec=new HotelServiceDAO();
			        hotelservicelistrec=hotelservicedaorec.GetGlobalLatestHotelService(5);
			        for(int i=0;i<hotelservicelistrec.size();i++){
			     
      out.write("\n");
      out.write("\t\t\t \t\t\t<h5><a href=\"");
      out.print(((HotelService)(hotelservicelistrec.get(i))).gethotelurl());
      out.write("\" target=\"_blank\">");
      out.print(((HotelService)(hotelservicelistrec.get(i))).gethotelservicename());
      out.write("</a><br></h5>\n");
      out.write("\t\n");
      out.write("\t\t\t\t\t\t<h6>最低价：");
      out.print(((HotelService)(hotelservicelistrec.get(i))).gethotelprice());
      out.write(';');
      out.print(((HotelService)(hotelservicelistrec.get(i))).gethoteltype());
      out.write(';');
      out.write(' ');
      out.print(((HotelService)(hotelservicelistrec.get(i))).gethotelarea());
      out.write("</h6>\n");
      out.write("\t\n");
      out.write("\t\t\t\t\t\t<h6>");
      out.print(((HotelService)(hotelservicelistrec.get(i))).gethoteladd());
      out.write("</h6>\n");
      out.write("\t\n");
      out.write("\t\t\t\t\t\t<IMG alt=\"\" src=\"");
      out.print(((HotelService)(hotelservicelistrec.get(i))).gethotelpic());
      out.write("\" width=100 />\n");
      out.write("\t\t\t     ");
   } 
      out.write("\n");
      out.write("\t\t\t</div>\n");
      out.write("      \t</div>     \n");
      out.write("\n");
      out.write("</div>\n");
      out.write("<script>\n");
      out.write("\t$(\".level1\").click(function(){\n");
      out.write("\t\tvar msg = \"<ul><li>");
      out.print(((ServiceClass)serviceclasslist.get(1)).getClassname() );
      out.write("</li></ul>\";\n");
      out.write("\t\t$(this).parent().append(msg);\t\n");
      out.write("\t\talert(\"ok\");\n");
      out.write("\t\t$(this).parent().find(\"ul\").remove();\n");
      out.write("        \n");
      out.write("\t});\n");
      out.write("\n");
      out.write("</script>      \n");
      out.write("\n");
      out.write("  </body>\n");
      out.write("</html>\n");
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
