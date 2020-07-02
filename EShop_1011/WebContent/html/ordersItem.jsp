<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="../css/base.css" type="text/css" rel="stylesheet">
<link href="../css/ordersItem.css" type="text/css" rel="stylesheet">
</head>
<body>
	<div id="box">
		<jsp:include page="/comm/header.jsp"></jsp:include>
		<div id="main">
			<div class="ordersItemInfo">
				<img alt="" src="../images/icon_goods.gif">
				<table>
					<tr class="table_bg">
						<td class="leftTD">订单编号：</td>
						<td>1527732518890</td>
					</tr>
					<tr class="table_bg">
						<td class="leftTD">金额：</td>
						<td>￥50.0元</td>
					</tr>
					<tr class="table_bg">
						<td class="leftTD">下单日期：</td>
						<td>2018年05月31日 10:08:38</td>
					</tr>
					<tr class="table_bg">
						<td class="leftTD">会员级别：</td>
						<td>普通会员</td>
					</tr>
					<tr class="table_bg">
						<td class="leftTD">会员优惠:</td>
						<td>七五折</td>
					</tr>
					<tr class="table_bg">
						<td class="leftTD">收货人姓名:</td>
						<td>steven</td>
					</tr>
					<tr class="table_bg">
						<td class="leftTD">收货人联系电话:</td>
						<td>13121612353</td>
					</tr>
					<tr class="table_bg">
						<td class="leftTD">收货人邮编:</td>
						<td>1000001</td>
					</tr>
					<tr class="table_bg">
						<td class="leftTD">收货人详细地址:</td>
						<td>我的家在东北</td>
					</tr>
				</table>
				<table>
				<caption>订单购物明细表</caption>
					<tr class="table_bg">
						<th class="centerTD">商品名称</th>
						<th>市场价</th>
						<th>会员价</th>
						<th>数量</th>
						<th>金额</th>
					</tr>
					<tr>
						<td class="centerTD"><a href="#">管理是什么</a></td>
						<td>￥56.0</td>
						<td>￥50.0</td>
						<td>1</td>
						<td>￥50.0</td>					
					</tr>
					<tr>
						<td colspan="5" class="centerTD"><a href="#">返回</a></td>
					</tr>
				</table>
			</div>
		</div>
		<jsp:include page="/comm/footer.jsp"></jsp:include>
	</div>
</body>
</html>