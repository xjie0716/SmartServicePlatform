<%@ page language="java" contentType="text/html; charset=utf-8"%>

    <form  class="form-signin" role="form" id="searchservice" action="/Smart_Service_Platform/SearchResult.jsp" method="service">
    	<h4>欢迎使用智能服务平台</h4>
    	<input id="SearService" name="SearService" type="text"  class="form-control" placeholder="请输入您的需求" required >
    	<br>
   		<button type="submit" class="btn btn-sm btn-primary">确定</button>
    </form>
    <form  class="form-signin" role="form" id="searchservice" action="/Smart_Service_Platform/MainPageDetailed.jsp" method="service">
   		<button type="submit" class="btn btn-sm btn-primary">进入高级模式</button>
    </form>