<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="${pageContext.request.contextPath}/css/base.css" type="text/css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/merchandiseList.css" type="text/css" rel="stylesheet">
</head>
<body>
	<div id="box">
		<jsp:include page="/comm/header.jsp"></jsp:include>
		<div id="main">
			<div class="merchandiseListInfo">
				<div class="listImgLog">
				  <c:if test="${spe eq '1' }">
		                 <img alt="" src="${pageContext.request.contextPath}/images/NewGoods_05.gif">
		             </c:if>
		             <c:if test="${spe eq '0' }">
		                 <img alt="" src="${pageContext.request.contextPath}/images/NewGoods_03.gif">
		             </c:if>
				</div>
				
				<table>
					<tr class="table_bg">
						<th width="15%">商品图片</th>
						<th width="15%">商品基本信息</th>
						<th>商品描述</th>
						<th width="15%">基本操作</th>
					</tr>
					
					<c:forEach items="${merList }" var="mer">
				
					<tr>
						<td>
							<img alt="" src="${pageContext.request.contextPath}${mer.picture}" class="merImg">
						</td>
						<td>
							<p><a href="#">${mer.merName}</a></p>
							<p>市场价：￥${mer.price}</p>
							<p>特价：￥${mer.sprice}</p>
							<p>生产厂家：${mer.manufacturer}</p>
						</td>
						<td>
							${mer.merDesc}
						</td>
						<td>
							<img alt="" src="${pageContext.request.contextPath}/images/icon_car.gif">
							<img alt="" src="${pageContext.request.contextPath}/images/icon_buy.gif">
						</td>
					</tr>
					</c:forEach>
				</table>
				
			</div>
		</div>
		<jsp:include page="/comm/footer.jsp"></jsp:include>
	</div>
</body>
</html>