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
	   <h4>已注册服务</h4>
     <div class="show-content">

			
<!-- 不使用serviceclass -->
					<h4>
	   					<img class="registed_service" src="dist/images/arrowright.png" style="width:15px;height:15px;margin-right:5px;"/>
	   					<span >平台服务</span>
	   				</h4>
	   				<div class="registed_service_div">
						<%
					        ArrayList platservicelist_registed=new ArrayList<PlatService>();
					        PlatServiceDAO platservicedao_registed=new PlatServiceDAO();
					        platservicelist_registed=platservicedao_registed.GetGlobalLatestPlatService(5);
					        for(int i=0;i<platservicelist_registed.size();i++){
					     %>
					 		<h5><a href="<%=((PlatService)(platservicelist_registed.get(i))).getplatserviceurl()%>">&nbsp&nbsp<%=((PlatService)(platservicelist_registed.get(i))).getplatservicename()%></a><br></h5>	
					 		<h6>&nbsp&nbsp<%=((PlatService)(platservicelist_registed.get(i))).getcontent()%></h6>
					 		<p>&nbsp&nbsp<%=((PlatService)(platservicelist_registed.get(i))).getbirthday()%></p>
					     <% } %>
	   				</div>
	   				<h4>
	   					<img class="registed_hotel" src="dist/images/arrowright.png" style="width:15px;height:15px;margin-right:5px;"/>
	   					<span >酒店服务</span>
	   				</h4>
	   				<div class="registed_hotel_div">
			   			<%
					        ArrayList hotelservicelist_registed=new ArrayList<HotelService>();
					        HotelServiceDAO hotelservicedao_registed=new HotelServiceDAO();
					        hotelservicelist_registed=hotelservicedao_registed.GetGlobalLatestHotelService(5);
					        for(int i=0;i<hotelservicelist_registed.size();i++){
					     %>
					 			<h5><a href="<%=((HotelService)(hotelservicelist_registed.get(i))).gethotelurl()%>" target="_blank">&nbsp&nbsp<%=((HotelService)(hotelservicelist_registed.get(i))).gethotelservicename()%></a><br></h5>
			
								<h6>&nbsp&nbsp最低价：<%=((HotelService)(hotelservicelist_registed.get(i))).gethotelprice()%>;&nbsp&nbsp<%=((HotelService)(hotelservicelist_registed.get(i))).gethoteltype()%>;&nbsp&nbsp<%=((HotelService)(hotelservicelist_registed.get(i))).gethotelarea()%></h6>
			
								<h6>&nbsp&nbsp<%=((HotelService)(hotelservicelist_registed.get(i))).gethoteladd()%></h6>
								<div style="text-align: center;">
									<IMG alt="" src="<%=((HotelService)(hotelservicelist_registed.get(i))).gethotelpic()%>" width=150 />
								</div>
					     <%   } %>
	   				</div>
	   				<h4>
	   					<img class="registed_restaurant" src="dist/images/arrowright.png" style="width:15px;height:15px;margin-right:5px;"/>
	   					<span >餐馆服务</span>
	   				</h4>
	   				<div class="registed_restaurant_div">
	   				<%
					        ArrayList restaurantservicelist_registed=new ArrayList<PlatService>();
					        RestaurantServiceDAO restaurantservicedao_registed=new RestaurantServiceDAO();
					        restaurantservicelist_registed=restaurantservicedao_registed.GetGlobalLatestRestaurantService(5);
					        for(int i=0;i<restaurantservicelist_registed.size();i++){
					     %>
					 		<h5><a href="<%=((RestaurantService)(restaurantservicelist_registed.get(i))).GetRestaurantlink()%>">&nbsp&nbsp<%=((RestaurantService)(restaurantservicelist_registed.get(i))).GetRestaurantservicename()%></a><br></h5>	
					 		<h6>&nbsp&nbsp<%=((RestaurantService)(restaurantservicelist_registed.get(i))).GetCookingstyle()%>;&nbsp&nbsp<%=((RestaurantService)(restaurantservicelist_registed.get(i))).GetDistrict()%>;&nbsp&nbsp<%=((RestaurantService)(restaurantservicelist_registed.get(i))).GetArea()%></h6>
					 		<h6>&nbsp&nbsp人均价：<%=((RestaurantService)(restaurantservicelist_registed.get(i))).GetPriceperperson()%></h6>
					 		<h6>&nbsp&nbsp营业时间：<%=((RestaurantService)(restaurantservicelist_registed.get(i))).GetOpentime()%></h6>
					 		<h6>&nbsp&nbsp<%=((RestaurantService)(restaurantservicelist_registed.get(i))).GetAddress()%></h6>
					 		<div style="text-align: center;">
									<IMG alt="" src="<%=((RestaurantService)(restaurantservicelist_registed.get(i))).GetRestaurantpic()%>" width=150 />
							</div>
					     <% } %>
	   				</div>
	   				<h4>
	   					<img class="registed_scenicspot" src="dist/images/arrowright.png" style="width:15px;height:15px;margin-right:5px;"/>
	   					<span >景点服务</span>
	   				</h4>
	   				<div class="registed_scenicspot_div">
	   				<%
					        ArrayList scenicspotservicelist_registed=new ArrayList<PlatService>();
					        ScenicspotServiceDAO scenicspotservicedao_registed=new ScenicspotServiceDAO();
					        scenicspotservicelist_registed=scenicspotservicedao_registed.GetGlobalLatestScenicspotService(5);
					        for(int i=0;i<scenicspotservicelist_registed.size();i++){
					     %>
					 		<h5><a href="<%=((ScenicspotService)(scenicspotservicelist_registed.get(i))).GetScenicspotlink()%>">&nbsp&nbsp<%=((ScenicspotService)(scenicspotservicelist_registed.get(i))).GetScenicspotname()%></a><br></h5>	
					 		<h6>&nbsp&nbsp票价：<%=((ScenicspotService)(scenicspotservicelist_registed.get(i))).GetTicket()%></h6>
					 		<h6>&nbsp&nbsp营业时间：<%=((ScenicspotService)(scenicspotservicelist_registed.get(i))).GetOpeningTime()%></h6>
					 		<h6>&nbsp&nbsp<%=((ScenicspotService)(scenicspotservicelist_registed.get(i))).GetAddress()%></h6>
					 		<div style="text-align: center;">
									<IMG alt="" src="<%=((ScenicspotService)(scenicspotservicelist_registed.get(i))).GetScenicspotpic()%>" width=150 />
							</div>
					     <% } %>
	   				</div>
	   	</div>
	  	</div>
	  	
        <div class="col-md-4">               
   		<%@include file="search.jsp" %>
		  <div class="show-content" style="height:550px;margin-top:10px;">
   		<% 
   		//搜索平台服务
   		request.setCharacterEncoding("utf-8");
   		PlatServiceDAO platservicedaosearch=new PlatServiceDAO();
	    String SearchPlatService=(String)request.getParameter("SearService");	     
	    ArrayList platal=new ArrayList<PlatService>();
		platal=platservicedaosearch.SearchPlatService(SearchPlatService);
		if (platal.size() == 0) {
       		out.println("<h4> 没有符合条件的平台服务。</h4>");
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
			out.println("<h5>"+"<a href=\""+((PlatService)(platal.get(i))).getplatserviceurl()+"\"target=\"_blank\">&nbsp&nbsp"+((PlatService)(platal.get(i))).getplatservicename()+"</a><br>"+"</h5>");
			//out.println("<h3>"+"<a href=\"/Smart_Service_Platform/UserInfo.jsp?userid="+((PlatService)(platal.get(i))).getownid()+"\">"+((PlatService)(platal.get(i))).getownername()+"</a><br>"+"</h3>");
			out.println("<h6>&nbsp&nbsp"+((PlatService)(platal.get(i))).getcontent()+"</h6>");
			out.println("<p>&nbsp&nbsp"+((PlatService)(platal.get(i))).getbirthday()+"</p>");
        }  
       	}
       	//搜索酒店服务
       	HotelServiceDAO hotelservicedaosearch=new HotelServiceDAO();
	    String SearchHotelService=(String)request.getParameter("SearService");	     
	    ArrayList hotelal=new ArrayList<HotelService>();
		hotelal=hotelservicedaosearch.SearchHotelService(SearchHotelService);
       	if (hotelal.size() == 0) {
       		out.println("<h4> 没有符合条件的酒店服务。</h4>");
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
			out.println("<h5>"+"<a href=\""+((HotelService)(hotelal.get(i))).gethotelurl()+"\"target=\"_blank\">&nbsp&nbsp"+((HotelService)(hotelal.get(i))).gethotelservicename()+"</a><br>"+"</h5>");
			//out.println("<h3>"+"<a href=\"/Smart_Service_Hotelform/UserInfo.jsp?userid="+((HotelService)(hotelal.get(i))).getownid()+"\">"+((HotelService)(hotelal.get(i))).getownername()+"</a><br>"+"</h3>");
			out.println("<h6>&nbsp&nbsp"+"最低价："+((HotelService)(hotelal.get(i))).gethotelprice()+"；"+((HotelService)(hotelal.get(i))).gethoteltype()+"；"+((HotelService)(hotelal.get(i))).gethotelarea()+"</h6>");
			out.println("<h6>&nbsp&nbsp"+((HotelService)(hotelal.get(i))).gethoteladd()+"</h6>");
			out.println("<div style='text-align: center;'><IMG alt=\"\" src="+((HotelService)(hotelal.get(i))).gethotelpic()+" width=\"150\" /></div>");
        }  
       	}
  		//搜索餐馆服务
  		RestaurantServiceDAO restaurantservicedaosearch=new RestaurantServiceDAO();
	    String SearchRestaurantService=(String)request.getParameter("SearService");	     
	    ArrayList restaurantal=new ArrayList<RestaurantService>();
	    restaurantal=restaurantservicedaosearch.SearchRestaurantService(SearchRestaurantService);
       	if (restaurantal.size() == 0) {
       		out.println("<h4> 没有符合条件的餐馆服务。</h4>");
       		out.println("<hr>");
       	} else {
      	out.println("<h4> 符合条件的餐馆服务:</h4>");
       	out.println("<hr>");
       	int size = restaurantal.size();
       	if (restaurantal.size()>=10) {
       		size = 10;
       	}
        for(int i=0;i<size;i++){
			//out.println("<h3>"+((HotelService)(hotelal.get(i))).getownername()+"</h3>");
			out.println("<h5>"+"<a href=\""+((RestaurantService)(restaurantal.get(i))).GetRestaurantlink()+"\"target=\"_blank\">&nbsp&nbsp"+((RestaurantService)(restaurantal.get(i))).GetRestaurantservicename()+"</a><br>"+"</h5>");
			//out.println("<h3>"+"<a href=\"/Smart_Service_Hotelform/UserInfo.jsp?userid="+((HotelService)(hotelal.get(i))).getownid()+"\">"+((HotelService)(hotelal.get(i))).getownername()+"</a><br>"+"</h3>");
			out.println("<h6>&nbsp&nbsp人均价："+((RestaurantService)(restaurantal.get(i))).GetPriceperperson()+"</h6>");
			out.println("<h6>&nbsp&nbsp营业时间："+((RestaurantService)(restaurantal.get(i))).GetOpentime()+"</h6>");
			out.println("<h6>&nbsp&nbsp"+((RestaurantService)(restaurantal.get(i))).GetAddress()+"</h6>");
			out.println("<div style='text-align: center;'><IMG alt=\"\" src="+((RestaurantService)(restaurantal.get(i))).GetRestaurantpic()+" width=\"150\" /></div>");
        }  
       	}
  		//搜索景点服务
  		ScenicspotServiceDAO scenicspotservicedaosearch=new ScenicspotServiceDAO();
	    String SearchScenicspotService=(String)request.getParameter("SearService");	     
	    ArrayList scenicspotal=new ArrayList<ScenicspotService>();
	    scenicspotal=scenicspotservicedaosearch.SearchScenicSpotService(SearchScenicspotService);
       	if (scenicspotal.size() == 0) {
       		out.println("<h4> 没有符合条件的景点服务。</h4>");
       		out.println("<hr>");
       	} else {
      	out.println("<h4> 符合条件的景点服务:</h4>");
       	out.println("<hr>");
       	int size = scenicspotal.size();
       	if (scenicspotal.size()>=10) {
       		size = 10;
       	}
        for(int i=0;i<size;i++){
			//out.println("<h3>"+((HotelService)(hotelal.get(i))).getownername()+"</h3>");
			out.println("<h5>"+"<a href=\""+((ScenicspotService)(scenicspotal.get(i))).GetScenicspotlink()+"\"target=\"_blank\">&nbsp&nbsp"+((ScenicspotService)(scenicspotal.get(i))).GetScenicspotname()+"</a><br>"+"</h5>");
			//out.println("<h3>"+"<a href=\"/Smart_Service_Hotelform/UserInfo.jsp?userid="+((HotelService)(hotelal.get(i))).getownid()+"\">"+((HotelService)(hotelal.get(i))).getownername()+"</a><br>"+"</h3>");
			out.println("<h6>&nbsp&nbsp门票："+((ScenicspotService)(scenicspotal.get(i))).GetTicket()+"</h6>");
			out.println("<h6>&nbsp&nbsp开放时间："+((ScenicspotService)(scenicspotal.get(i))).GetOpeningTime()+"</h6>");
			out.println("<h6>&nbsp&nbsp"+((ScenicspotService)(scenicspotal.get(i))).GetAddress()+"</h6>");
			out.println("<div style='text-align: center;'><IMG alt=\"\" src="+((ScenicspotService)(scenicspotal.get(i))).GetScenicspotpic()+" width=\"150\" /></div>");
        }  
       	}
         %>
         </div>
    	</div>
    	
        <div class="col-md-4">
        		<h4>服务推荐</h4>
        <div class="show-content">
		        <div style="text-align: center;"><h4>平台服务</h4></div>
		        <hr>
		        <%
			        ArrayList platservicelistrec=new ArrayList<PlatService>();
			        PlatServiceDAO platservicedaorec=new PlatServiceDAO();
			        platservicelistrec=platservicedaorec.GetGlobalLatestPlatService(3);
			        for(int i=0;i<platservicelistrec.size();i++){
			     %>
			 		<h5><a href="<%=((PlatService)(platservicelistrec.get(i))).getplatserviceurl()%>">&nbsp&nbsp<%=((PlatService)(platservicelistrec.get(i))).getplatservicename()%></a><br></h5>	
			 		<h6>&nbsp&nbsp<%=((PlatService)(platservicelistrec.get(i))).getcontent()%></h6>
			 		<p>&nbsp&nbsp<%=((PlatService)(platservicelistrec.get(i))).getbirthday()%></p>
			     <% } %>
			        <hr>
			        <div style="text-align: center;"><h4>酒店服务</h4></div>
			        <hr>
			     <%
			        ArrayList hotelservicelistrec=new ArrayList<HotelService>();
			        HotelServiceDAO hotelservicedaorec=new HotelServiceDAO();
			        hotelservicelistrec=hotelservicedaorec.GetGlobalLatestHotelService(2);
			        for(int i=0;i<hotelservicelistrec.size();i++){
			     %>
			 			<h5><a href="<%=((HotelService)(hotelservicelistrec.get(i))).gethotelurl()%>" target="_blank">&nbsp&nbsp<%=((HotelService)(hotelservicelistrec.get(i))).gethotelservicename()%></a><br></h5>
	
						<h6>&nbsp&nbsp最低价：<%=((HotelService)(hotelservicelistrec.get(i))).gethotelprice()%>;<%=((HotelService)(hotelservicelistrec.get(i))).gethoteltype()%>; <%=((HotelService)(hotelservicelistrec.get(i))).gethotelarea()%></h6>
	
						<h6>&nbsp&nbsp<%=((HotelService)(hotelservicelistrec.get(i))).gethoteladd()%></h6>
						<div style="text-align: center;">
							<IMG alt="" src="<%=((HotelService)(hotelservicelistrec.get(i))).gethotelpic()%>" width=150 />
						</div>
			     <%   } %>
			     <hr>
			        <div style="text-align: center;"><h4>餐馆服务</h4></div>
			     <hr>
			     <%
					        ArrayList restaurantservicelistrec=new ArrayList<PlatService>();
					        RestaurantServiceDAO restaurantservicedaorec=new RestaurantServiceDAO();
					        restaurantservicelistrec=restaurantservicedaorec.GetGlobalLatestRestaurantService(2);
					        for(int i=0;i<restaurantservicelistrec.size();i++){
				 %>
					 		<h5><a href="<%=((RestaurantService)(restaurantservicelistrec.get(i))).GetRestaurantlink()%>">&nbsp&nbsp<%=((RestaurantService)(restaurantservicelistrec.get(i))).GetRestaurantservicename()%></a><br></h5>	
					 		<h6>&nbsp&nbsp<%=((RestaurantService)(restaurantservicelistrec.get(i))).GetCookingstyle()%>;&nbsp&nbsp<%=((RestaurantService)(restaurantservicelistrec.get(i))).GetDistrict()%>;&nbsp&nbsp<%=((RestaurantService)(restaurantservicelistrec.get(i))).GetArea()%></h6>
					 		<h6>&nbsp&nbsp人均价：<%=((RestaurantService)(restaurantservicelistrec.get(i))).GetPriceperperson()%></h6>
					 		<h6>&nbsp&nbsp<%=((RestaurantService)(restaurantservicelistrec.get(i))).GetAddress()%></h6>
					 		<div style="text-align: center;">
									<IMG alt="" src="<%=((RestaurantService)(restaurantservicelistrec.get(i))).GetRestaurantpic()%>" width=150 />
							</div>
				 <% } %>
				 <hr>
			        <div style="text-align: center;"><h4>景点服务</h4></div>
			     <hr>
			     <%
					        ArrayList scenicspotservicelistrec=new ArrayList<PlatService>();
					        ScenicspotServiceDAO scenicspotservicedaorec=new ScenicspotServiceDAO();
					        scenicspotservicelistrec=scenicspotservicedaorec.GetGlobalLatestScenicspotService(2);
					        for(int i=0;i<scenicspotservicelistrec.size();i++){
					     %>
					 		<h5><a href="<%=((ScenicspotService)(scenicspotservicelistrec.get(i))).GetScenicspotlink()%>">&nbsp&nbsp<%=((ScenicspotService)(scenicspotservicelistrec.get(i))).GetScenicspotname()%></a><br></h5>	
					 		<h6>&nbsp&nbsp票价：<%=((ScenicspotService)(scenicspotservicelistrec.get(i))).GetTicket()%></h6>
					 		<h6>&nbsp&nbsp营业时间：<%=((ScenicspotService)(scenicspotservicelistrec.get(i))).GetOpeningTime()%></h6>
					 		<h6>&nbsp&nbsp<%=((ScenicspotService)(scenicspotservicelistrec.get(i))).GetAddress()%></h6>
					 		<div style="text-align: center;">
									<IMG alt="" src="<%=((ScenicspotService)(scenicspotservicelistrec.get(i))).GetScenicspotpic()%>" width=150 />
							</div>
				<% } %>
			</div>
      	</div>     

</div>

<script>
	//页面加载时的函数
	$(document).ready(function(){
    	//隐藏相关列表内容
		$(".show-content div[class='registed_service_div']").hide();
		$(".show-content div[class='registed_hotel_div']").hide();
		$(".show-content div[class='registed_restaurant_div']").hide();
		$(".show-content div[class='registed_scenicspot_div']").hide();
		
	});

	$(".registed_service").click(function(){
//		$(this).parent().append(msg);	
//		alert("ok");
//		$(this).parent().find("ul").remove();
		
		if ($(this).attr("src")=="dist/images/arrowright.png"){		//需要展开内容
			//修改箭头
			$(this).attr("src","dist/images/arrowdown.png");
			//增加内容
			$(".show-content div[class='registed_service_div']").show(100);
		}else{														//需要删除内容
			//修改箭头
			$(this).attr("src","dist/images/arrowright.png");
			//隐藏内容
			$(".show-content div[class='registed_service_div']").hide(100);
		}
        
	});
	
	$(".registed_hotel").click(function(){
		if ($(this).attr("src")=="dist/images/arrowright.png"){		//需要展开内容
			//修改箭头
			$(this).attr("src","dist/images/arrowdown.png");
			//增加内容
			$(".show-content div[class='registed_hotel_div']").show(100);
		}else{														//需要删除内容
			//修改箭头
			$(this).attr("src","dist/images/arrowright.png");
			//隐藏内容
			$(".show-content div[class='registed_hotel_div']").hide(100);
		}
        
	});
	
	$(".registed_restaurant").click(function(){
		if ($(this).attr("src")=="dist/images/arrowright.png"){		//需要展开内容
			//修改箭头
			$(this).attr("src","dist/images/arrowdown.png");
			//增加内容
			$(".show-content div[class='registed_restaurant_div']").show(100);
		}else{														//需要删除内容
			//修改箭头
			$(this).attr("src","dist/images/arrowright.png");
			//隐藏内容
			$(".show-content div[class='registed_restaurant_div']").hide(100);
		}
        
	});
	
	$(".registed_scenicspot").click(function(){
		if ($(this).attr("src")=="dist/images/arrowright.png"){		//需要展开内容
			//修改箭头
			$(this).attr("src","dist/images/arrowdown.png");
			//增加内容
			$(".show-content div[class='registed_scenicspot_div']").show(100);
		}else{														//需要删除内容
			//修改箭头
			$(this).attr("src","dist/images/arrowright.png");
			//隐藏内容
			$(".show-content div[class='registed_scenicspot_div']").hide(100);
		}
        
	});
	
</script>         

</body>
</html>