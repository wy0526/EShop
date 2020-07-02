<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="${pageContext.request.contextPath}/css/base.css" type="text/css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/notLogin.css" type="text/css" rel="stylesheet">
</head>
<body>
	<div id="box">
		<jsp:include page="/comm/header.jsp"></jsp:include>
		<div id="main">
		
		   <table>
		       <tr>
		           <td>
		              <img alt="" src="${pageContext.request.contextPath}/images/sorry.gif">
		           </td>
		           <td>
		                                          请先进行登录，在进行浏览信息。
		           </td>
		       </tr>
		   </table>
		
		</div>
		<jsp:include page="/comm/footer.jsp"></jsp:include>
	</div>
</body>
</html>