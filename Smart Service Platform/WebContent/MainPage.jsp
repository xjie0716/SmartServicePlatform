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
									<IMG alt="" src="<%=((HotelService)(hotelservicelist_registed.get(i))).gethotelpic()%>" width=100 />
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
									<IMG alt="" src="<%=((RestaurantService)(restaurantservicelist_registed.get(i))).GetRestaurantpic()%>" width=100 />
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
									<IMG alt="" src="<%=((ScenicspotService)(scenicspotservicelist_registed.get(i))).GetScenicspotpic()%>" width=100 />
							</div>
					     <% } %>
	   				</div>
	   	</div>
	   	

	  	</div>
	  	
        <div class="col-md-4">  
                     
   		<%@include file="search.jsp" %>
	    	
    	</div>
    	
        <div class="col-md-4">
        	<%if((request.getSession()).getValue("LogInUser")!=null){
        		String type = ((User)(request.getSession()).getValue("LogInUser")).getType();
        		if(type.equals("管理员")){%>
        			<form  class="form-signin" role="form" id="serviceregistration" target="_blank" action="/Smart_Service_Platform/ServiceRegistration.jsp" method="service">
            		<h4>服务注册
           			<button type="submit" class="btn btn-sm btn-primary">GO</button></h4>
            		</form>
            		<form  class="form-signin" role="form" id="servicemanagement" target="_blank" action="/Smart_Service_Platform/ServiceManagement.jsp" method="service">
            		<h4>服务管理
           			<button type="submit" class="btn btn-sm btn-primary">GO</button></h4>
            		</form>
     			<%}else{}%>
	   		<%}else{}%>
	        
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
			 		<h5><a href="<%=((PlatService)(platservicelistrec.get(i))).getplatserviceurl()%>"><%=((PlatService)(platservicelistrec.get(i))).getplatservicename()%></a><br></h5>	
			 		<h6><%=((PlatService)(platservicelistrec.get(i))).getcontent()%></h6>
			 		<p><%=((PlatService)(platservicelistrec.get(i))).getbirthday()%></p>
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
			 			<h5><a href="<%=((HotelService)(hotelservicelistrec.get(i))).gethotelurl()%>" target="_blank"><%=((HotelService)(hotelservicelistrec.get(i))).gethotelservicename()%></a><br></h5>
	
						<h6>最低价：<%=((HotelService)(hotelservicelistrec.get(i))).gethotelprice()%>;<%=((HotelService)(hotelservicelistrec.get(i))).gethoteltype()%>; <%=((HotelService)(hotelservicelistrec.get(i))).gethotelarea()%></h6>
	
						<h6><%=((HotelService)(hotelservicelistrec.get(i))).gethoteladd()%></h6>
	
						<IMG alt="" src="<%=((HotelService)(hotelservicelistrec.get(i))).gethotelpic()%>" width=100 />
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
									<IMG alt="" src="<%=((RestaurantService)(restaurantservicelistrec.get(i))).GetRestaurantpic()%>" width=100 />
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
									<IMG alt="" src="<%=((ScenicspotService)(scenicspotservicelistrec.get(i))).GetScenicspotpic()%>" width=100 />
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
