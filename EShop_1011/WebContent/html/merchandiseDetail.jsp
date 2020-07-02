<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="${pageContext.request.contextPath }/css/base.css" type="text/css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/css/merchandiseDetail.css" type="text/css" rel="stylesheet">
</head>
<body>
	<div id="box">
		<jsp:include page="/comm/header.jsp"></jsp:include>
		<div id="main">
			<div class="merchandiseDetailInfo">
				<img alt="" src="${pageContext.request.contextPath }/images/icon_goods.gif">
				<div class="merchandiseDiv">
					<img class="merImg"  src="${pageContext.request.contextPath }${merchandisePO.picture}"
							 width="120px" height="160px">
					<p>商品类别：${merchandisePO.category}</p>
					<p>商品名称：${merchandisePO.merName}</p>
					<p>商品型号：${merchandisePO.merModel}</p>
					<p>市场价：${merchandisePO.price}</p>
					<c:if test="${merchandisePO.special eq '1'}">
					<p>特价：${merchandisePO.sprice}</p>
					</c:if>
					<p>生产厂家：${merchandisePO.manufacturer}</p>
					<p>出产日期：${merchandisePO.leaveFactoryDate}</p>
					<p>商品描述：${merchandisePO.merDesc}
					</p>
					<img class="buyLogo"  src="${pageContext.request.contextPath }/images/icon_buy.gif">
				</div>
			</div>
		</div>
		<jsp:include page="/comm/footer.jsp"></jsp:include>
	</div>
</body>
</html>