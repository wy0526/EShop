<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="../css/base.css" type="text/css" rel="stylesheet">
<link href="../css/ordersList.css" type="text/css" rel="stylesheet">
</head>
<body>
	<div id="box">
		<jsp:include page="/comm/header.jsp"></jsp:include>
		<div id="main">
			<div class="orderListInfo">
				<img alt="" src="../images/icon_order.gif">
				<table>
					<tr class="table_bg">
						<th>订单编号</th>
						<th>金额</th>
						<th>下单日期</th>
						<th>订单状态</th>
						<th>编辑</th>
					</tr>
					<tr>
						<td>123456789</td>
						<td>￥50</td>
						<td>2018-5-06</td>
						<td>已下单，未受理</td>
						<td>
							<a href="#">查看订单</a>
							<a href="#">删除订单</a>
						</td>
					</tr>
				</table>
			</div>
		</div>
		<div id="footer">
		          版权所有：长春优尼克斯软件有限公司    编写人：波波
		</div>
	</div>
</body>
</html>