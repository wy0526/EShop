<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="../css/base.css" type="text/css" rel="stylesheet">
<link href="../css/memberRegister.css" type="text/css" rel="stylesheet">
</head>
<body>
	<div id="box">
		<jsp:include page="/comm/header.jsp"></jsp:include>
		<div id="main">
			<div class="orderListInfo">
				<img alt="" src="../images/EditUser_01.gif">
				<form action="doMemberRegedit" method="post">
					<table>
					<tr class="table_bg">
						<td class="leftTD">会员级别：</td>
						<td>
							<select name="memberlevel">
								<option value="1">普通会员</option>
								<option value="2">银卡会员</option>
								<option value="3">金卡会员</option>
								<option value="4">钻石会员</option>
							</select>					
					</tr>
					<tr class="table_bg">
						<td class="leftTD">真实姓名：</td>
						<td>
						<input type="text" value="张三" name="memberName">
						</td>
					</tr>
					<tr class="table_bg">
						<td class="leftTD">登录账号：</td>
						<td>
						<input type="text" value="zhangsan" name="loginName">
						</td>
					</tr>
					<tr class="table_bg">
						<td class="leftTD">登录密码：</td>
						<td>
						<input type="password" name="loginPwd">
						</td>
					</tr>
					<tr class="table_bg">
						<td class="leftTD">核对密码：</td>
						<td>
						<input type="text" name="loginPwd2" >
						</td>
					</tr>
					<tr class="table_bg">
						<td class="leftTD">联系电话：</td>
						<td>
						<input type="text" value="13756305180" name="phone">
						</td>
					</tr>
					<tr class="table_bg">
						<td class="leftTD">联系地址：</td>
						<td>
						<input type="text" value="长春硅谷大街" name="address">
						</td>
					</tr>
					<tr class="table_bg">
						<td class="leftTD">邮政编码：</td>
						<td>
						<input type="text" value="13000000" name="email">
						</td>
					</tr>
					<tr class="table_bg">
						<td class="leftTD">电子邮箱：</td>
						<td>
						<input type="text" value="syswjb@126.com" name="zip">
						</td>
					</tr>
					<tr>
						<td colspan="2"  class="centerTD">
							${message}
						</td>
					</tr>
					<tr>
						<td colspan="2"  class="centerTD">
							<button class="saveDiv">保存</button>
						</td>
					</tr>
				</table>
				</form>
			</div>
		</div>
		<jsp:include page="/comm/footer.jsp"></jsp:include>
	</div>
</body>
</html>