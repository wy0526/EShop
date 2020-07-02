<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="../css/base.css" type="text/css" rel="stylesheet">
<link href="../css/customerLeavewords.css" type="text/css" rel="stylesheet">
</head>
<body>
	<div id="box">
		<jsp:include page="/comm/header.jsp"></jsp:include>
		<div id="main">
			<div class="LeavewordsInfo">
				<img alt="" src="../images/icon_liuyan.gif">
				<table class="table">
					<tr class="table_bg" >
						<td>
							<b>留言标题：</b>ccut
						</td>
						<td class="rightTD">
							<b>顾客姓名：</b>1<b>留言时间：</b>2018年06月26日
						</td>
					</tr>
					<tr >
						<td>hhh</td>
						<td></td>
					</tr>
				</table>
				<table class="table">
					<tr class="table_bg">
						<td>
							<b>留言标题：</b>ccut
						</td>
						<td class="rightTD">
							<b>顾客姓名：</b>1<b>留言时间：</b>2018年06月26日
						</td>
					</tr>
					<tr>
						<td>hhh</td>
						<td></td>
					</tr>
				</table>
				<table  class="table">
					<tr class="table_bg">
						<td>
							<b>留言标题：</b>书籍
						</td>
						<td class="rightTD">
							<b >顾客姓名：</b>steven<b>留言时间：</b>2018年05月30日
						</td>
					</tr>
					<tr>
						<td>书籍比较便宜，加油</td>
						<td></td>
					</tr>
					<tr class="table_bg">
						<td colspan="2">
							<b>管理员回复：</b>
						</td>
					</tr>
					<tr>
						<td>我们会好好努力的！</td>
						<td></td>
					</tr>
				</table>
				<img alt="" src="../images/icon_LeaveWord.gif">
				<p>
					<b>留言标题：</b><input id="input_first">
				</p>
				<p>
					<b>留言内容：</b><input id="input_secend">
				</p>
				<button class="saveDiv">提交留言</button>
			</div>
		</div>
		<jsp:include page="/comm/footer.jsp"></jsp:include>
	</div>
</body>
</html>