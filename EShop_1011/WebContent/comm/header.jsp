<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id="top">
	<div id="searchDiv">
		<img alt="" src="${pageContext.request.contextPath }/images/icon_login.gif" class="navSearch"> 
		<input class="navSearch"> <select class="navSearch">
			<option>所有商品</option>
			<c:forEach items="${cateList}" var="cate">
				<option value="${cate.id }">${cate.cateName }</option>
			</c:forEach>	
						
			<option>计算机类</option>
			<option>管理类</option>
		</select> <img alt="" src="${pageContext.request.contextPath }/images/icon_search.gif" class="navSearch">
	</div>
</div>
<div id="menu">
	<ul id="menu_ul">
		<li><a href="${pageContext.request.contextPath }/browseIndex">商城首页</a></li>
		<li><a href="${pageContext.request.contextPath }/userFilter/cart?m=list">购物车管理</a></li>
		<li><a href="${pageContext.request.contextPath }/userFilter/orders?m=list">订单管理</a></li>
		<li><a href="${pageContext.request.contextPath }/userFilter/customerWorld?m=list">顾客留言</a></li>
		<li><a href="${pageContext.request.contextPath }/userFilter/member?m=update">修改注册资料</a></li>
	</ul>
</div>
</body>
</html>