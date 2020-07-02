<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="../css/base.css" type="text/css" rel="stylesheet">
<link href="../css/shopCarSubmit.css" type="text/css" rel="stylesheet">
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
			    	<div class="List_font"><a href="#">确认订单信息</a></div>
			    	<img alt="" src="../images/Car_11.gif" class="img_center">
			    	<div class="List_font"><a href="#" id="other">订单提交成功</a></div>
		    	</div>
		    	<table id="table">
		    		<tr>
	    				<td rowspan="4"><img alt="" src="../images/Car_icon_10.gif" id="table_img"></td>
	    				<td class="table_td" id="other">恭喜您，订单提交成功</td>
		    		</tr>
		    		<tr class="table_bg">
	    				<td class="table_td">订单编号：1527732518890</td>
		    		</tr>
		    		<tr class="table_bg">
	    				<td class="table_td">总金额：￥66.0</td>
		    		</tr>
		    		<tr class="table_bg">
	    				<td class="table_td">下单日期：2018年05月31日 10:08:38</td>
		    		</tr>
		    	</table>
			</div>
		</div>
		<jsp:include page="/comm/footer.jsp"></jsp:include>
	</div>
</body>
</html>