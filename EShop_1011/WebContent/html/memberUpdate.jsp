<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="../css/base.css" type="text/css" rel="stylesheet">
<link href="../css/memberUpdate.css" type="text/css" rel="stylesheet">
</head>
<body>
	<div id="box">
		<jsp:include page="/comm/header.jsp"></jsp:include>
		<div id="main">
			<div class="memberUpdateInfo_left">
				<div class="leftDiv_top">
					<div class="Div_img">会员登录</div>
					<table>
						<tr>
							<td>登录账号：</td>
							<td>
							<input type="text">
							</td>
						</tr>
						<tr>
							<td>登录密码：</td>
							<td>
							<input type="password">
							</td>
						</tr>
					</table>
					<button class="but_top">注册</button>
					<button class="but_bot">登录</button>
				</div>
				<div class="leftDiv_bottom">
					<div class="Div_img">商品类型</div>
					<ul>
						<li><img alt="" src="../images/cateIcon.gif" class="ul_img">计算机类</li>
						<li><img alt="" src="../images/cateIcon.gif" class="ul_img">管理类</li>
						<li><img alt="" src="../images/cateIcon.gif" class="ul_img">英语类</li>
						<li><img alt="" src="../images/cateIcon.gif" class="ul_img">小说类</li>
						<li><img alt="" src="../images/cateIcon.gif" class="ul_img">玄幻类</li>
					</ul>
				</div>
			</div>
			<div class="memberUpdateInfo_right">
				<div class="all_up">
					<div class="mark_up">
						<img alt="" src="../images/Icon_TeJia.gif">
						<img alt="" src="../images/icon_more.gif" class="img_more">
					</div>
					<div class="mark_down">
						<div class="div_detail">
							<div class="div_book" >
								<div class="img_book">
								<img alt="" src="../Picture/8768781-1_b.jpg">
								</div>
								<p><a href="#" rel="" >管理是什么</a></p>
								<p>市场价：￥56.0<p>
								<p>特价：￥50.0</p>
								<button class="but_detail"></button>
								<button class="but_buy"></button>
							</div >
						</div>
						<div class="div_detail">
							<div class="div_book" >
								<div class="img_book">
								<img alt="" src="../Picture/20525341-1_b.jpg">
								</div>
								<p><a href="#" rel="" >贫民窟的百万富翁</a></p>
								<p>市场价：￥66.0<p>
								<p>特价：￥45.0</p>
								<button class="but_detail"></button>
								<button class="but_buy"></button>
							</div >
						</div>
						<div class="div_detail">
							<div class="div_book" >
								<div class="img_book">
								<img alt="" src="../Picture/9304959-1_b.jpg">
								</div>
								<p><a href="#" rel="" >货币战争</a></p>
								<p>市场价：￥56.0<p>
								<p>特价：￥45.0</p>
								<button class="but_detail"></button>
								<button class="but_buy"></button>
							</div >
						</div>
					</div>
				</div>
				
				<div class="all_up">
					<div class="mark_up">
						<img alt="" src="../images/NewGoods_03.gif">
						<img alt="" src="../images/icon_more.gif" class="img_more">
					</div>
					<div class="mark_down">
						<div class="div_detail">
							<div class="div_book" >
								<div class="img_book">
								<img alt="" src="../Picture/9250656-1_b.jpg">
								</div>
								<p><a href="#" rel="" >领导力是什么</a></p>
								<p>市场价：￥56.0<p>
								<p>特价：￥50.0</p>
								<button class="but_detail"></button>
								<button class="but_buy"></button>
							</div >
						</div>
						<div class="div_detail">
							<div class="div_book" >
								<div class="img_book">
								<img alt="" src="../Picture/9255064-1_b.jpg">
								</div>
								<p><a href="#" rel="" >士兵突击</a></p>
								<p>市场价：￥66.0<p>
								<p>特价：￥45.0</p>
								<button class="but_detail"></button>
								<button class="but_buy"></button>
							</div >
						</div>
						<div class="div_detail">
							<div class="div_book" >
								<div class="img_book">
								<img alt="" src="../Picture/20522936-1_b.jpg">
								</div>
								<p><a href="#" rel="" >巴菲特教你读财报</a></p>
								<p>市场价：￥56.0<p>
								<p>特价：￥45.0</p>
								<button class="but_detail"></button>
								<button class="but_buy"></button>
							</div >
						</div>
					</div>
				</div>
			</div>
		</div>
		<jsp:include page="/comm/footer.jsp"></jsp:include>
	</div>
</body>
</html>