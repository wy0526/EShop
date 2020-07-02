<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="../css/base.css" type="text/css" rel="stylesheet">
<link href="../css/shopCarList.css" type="text/css" rel="stylesheet">
</head>
<body>
	<div id="box">
		<jsp:include page="/comm/header.jsp"></jsp:include>
		<div id="main">
		    <div id="main_div">
		    	<img alt="" src="../images/icon_goods.gif"  id="img_top">
		    	<div id="mes_List">
			   		<img alt="" src="../images/Car_07.gif" class="img_center">
			    	<div class="List_font"><a href="#" id="other">查看购物车商品</a></div>
					<img alt="" src="../images/Car_09.gif" class="img_center">
			    	<div class="List_font"><a href="#">确认订单信息</a></div>
			    	<img alt="" src="../images/Car_11.gif" class="img_center">
			    	<div class="List_font"><a href="#">订单提交成功</a></div>
		    	</div>
		    	<table id="table">
		    		<tr class="table_bg" >
		    			<th>商品名称</th>
		    			<th>市场价</th>
		    			<th>会员价</th>
		    			<th>数量</th>
		    			<th>金额</th>
		    			<th>删除</th>
		    		</tr>
		    		<tr class="table_tr">
		    			<td><a href="#" class="book_name">管理是什么</a></td>
		    			<td>￥56.0</td>
		    			<td>￥50.0</td>
		    			<td><input type="text" value="1"></td>
		    			<td>￥50.0</td>
		    			<td><img src="../images/delete_01.gif"></td>
		    		</tr>
		    		<tr class="table_tr">
		    			<td><a href="#" class="book_name">贫民窟的百万富翁</a></td>
		    			<td>￥66.0</td>
		    			<td>￥45.0</td>
		    			<td><input type="text" value="2"></td>
		    			<td>￥45.0</td>
		    			<td><img src="../images/delete_01.gif"></td>
		    		</tr>
		    		<tr>
		    			<td colspan="6" class="table_bg">
		    				<img alt="" src="../images/me03.gif">
		    				<font>总金额：￥140.0（不包括配送费用）</font>
		    			</td>
		    		</tr>
		    	</table>
		    	<div id="img_bottom">
		    		<img alt="" src="../images/Car_icon_01.gif">
		    		<img alt="" src="../images/Car_icon_02.gif">
		    		<img alt="" src="../images/Car_icon_03.gif">
		    	</div>
		    </div>      
		</div>
		<jsp:include page="/comm/footer.jsp"></jsp:include>
	</div>
</body>
</html>