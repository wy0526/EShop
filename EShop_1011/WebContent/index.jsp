<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="css/base.css" type="text/css" rel="stylesheet">
<link href="css/memberUpdate.css" type="text/css" rel="stylesheet">
<script type="text/javascript">
function doLogin(){
	var u = document.getElementById("loginName");
	var p = document.getElementById("loginPwd");
	
	alert(u.value+","+p.value);
	
	location.href='${pageContext.request.contextPath}/member?m=login&loginName='+u.value+'&loginPwd='+p.value;
}
function doUserExit(){
	location.href='${pageContext.request.contextPath}/member?m=exit';
}
</script>
</head>
<body>
	<div id="box">
		<jsp:include page="/comm/header.jsp"></jsp:include>
		<div id="main">		  
			<div class="memberUpdateInfo_left">
				<div class="leftDiv_top">
				<c:if test="${memberPO eq null}">
					<div class="Div_img">会员登录</div>
					<table>
						<tr>
							<td>登录账号：</td>
							<td><input type="text" id="loginName" value=""></td>
						</tr>
						<tr>
							<td>登录密码：</td>
							<td><input type="password" id="loginPwd" value=""></td>
						</tr>
					</table>
					<button class="but_top">注册</button>
					<button class="but_bot" onclick="doLogin()">登录</button>
				</c:if>
				<c:if test="${memberPO ne null}">
					<div class="Div_img">欢迎您登陆商城！</div>
					<table>
						<tr>
							<td>登录账号：</td>
							<td>${memberPO.loginName}</td>
						</tr>
						<tr>
							<td>会员名称：</td>
							<td>${memberPO.memberName}</td>
						</tr>
					</table>
					<button class="but_bot" onclick="doLogin()" onclick="doUserExit()">安全退出</button>
				</c:if>
				</div>
				<div class="leftDiv_bottom">
					<div class="Div_img">商品类型</div>
					<ul>
						<c:forEach items="${cateList }" var="cate">
							<li>								
								<img alt="" src="${pageContext.request.contextPath }/images/cateIcon.gif">
								<a href="#${cate.id}">${cate.cateName}</a>
							</li>
						</c:forEach>
					</ul>
				</div>
			</div>
			<div class="memberUpdateInfo_right">
				<div class="all_up">
					<div class="mark_up">
						<img alt="" src="${pageContext.request.contextPath }/images/Icon_TeJia.gif">
						<img alt="" src="${pageContext.request.contextPath }/images/icon_more.gif" class="img_more" 
						onclick="javascript:location.href='${pageContext.request.contextPath}/merchandise?m=getMerList&special=1'">
					</div>
					<div class="mark_down">
						<c:forEach items="${specialMerList }" var="speMer" begin="0" end="2">
							<div class="div_detail">
								<div class="div_book" >
									<div class="img_book">
									<img alt="" src="${pageContext.request.contextPath}${speMer.picture}">
									</div>
									<p><a href="#" rel="" >${speMer.merName}</a></p>
									<p>市场价：￥${speMer.price}<p>
									<p>特价：￥${speMer.sprice}</p>
									<button class="but_detail"
									onclick="javascript:location.href='${pageContext.request.contextPath}/merchandise?m=getMerById&id=${speMer.id }'"></button>
									<button class="but_buy"></button>
								</div >
							</div>
						</c:forEach>
						
					</div>
				</div>
				
				<div class="all_up">
					<div class="mark_up">
						<img alt="" src="${pageContext.request.contextPath }/images/NewGoods_03.gif">
						<img alt="" src="${pageContext.request.contextPath }/images/icon_more.gif" class="img_more"
						onclick="javascript:location.href='${pageContext.request.contextPath}/merchandise?m=getMerList&special=0'">
						
					</div>
					<div class="mark_down">
						<div class="div_detail">
							<div class="div_book" >
								<div class="img_book">
								<img alt="" src="${pageContext.request.contextPath }/Picture/9250656-1_b.jpg">
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
								<img alt="" src="${pageContext.request.contextPath }/Picture/9255064-1_b.jpg">
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
								<img alt="" src="${pageContext.request.contextPath }/Picture/20522936-1_b.jpg">
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