<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="../css/base.css" type="text/css" rel="stylesheet">
<link href="../css/shopCarConfirm.css" type="text/css" rel="stylesheet">
</head>
<body>
	<div id="box">
		<jsp:include page="/comm/header.jsp"></jsp:include>
		<div id="main">
			<div id="main_div">
				<img alt="" src="../images/icon_goods.gif"  id="img_top">
		    	<div id="mes_List">
			   		<img alt="" src="../images/Car_07.gif" class="img_center">
			    	<div class="List_font"><a href="#">查看购物车商品</a></div>
					<img alt="" src="../images/Car_09.gif" class="img_center">
			    	<div class="List_font"><a href="#" id="other">确认订单信息</a></div>
			    	<img alt="" src="../images/Car_11.gif" class="img_center">
			    	<div class="List_font"><a href="#">订单提交成功</a></div>
		    	</div>
		    	<table id="table">
		    		<tr class="table_bg">
		    			<td class="left_td">会员级别：</td>
		    			<td>普通会员</td>
		    		</tr>
		    		<tr class="table_bg">
		    			<td class="left_td">会员优惠：</td>
		    			<td>95折</td>
		    		</tr>
		    		<tr class="table_bg">
		    			<td class="left_td">收货人姓名：</td>
		    			<td><input type="text" value="steven"></td>
		    		</tr>
		  			<tr class="table_bg">
		    			<td class="left_td">收货人联系电话：</td>
		    			<td><input type="text" value="13121612353"></td>
		    		</tr>
		    		<tr class="table_bg">
		    			<td class="left_td">收货人邮箱：</td>
		    			<td><input type="text" value="1000001"></td>
		    		</tr>
		    		<tr class="table_bg">
		    			<td class="left_td">收货人详细地址：</td>
		    			<td><input type="text" value="我的家在东北"></td>
		    		</tr>
		    		<tr class="table_bg">
		    			<td colspan="2" id="other">
		    				<img alt="" src="../images/Car_icon_back.gif"  >
		    				<img alt="" src="../images/Car_icon_06.gif">
		    			</td>
		    		</tr>
		    	</table>
			</div>      
		</div>
		<jsp:include page="/comm/footer.jsp"></jsp:include>
	</div>
</body>
</html>