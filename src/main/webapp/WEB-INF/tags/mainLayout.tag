<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ attribute name="title" required="true" rtexprvalue="true" %>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>${title}</title>
		<spring:url value="/style" var="styleUrl" />
		<link href="${styleUrl}/app.css" rel="stylesheet">
	</head>
<body>
	<div class="container" style="padding-top: 50px;">
		<jsp:include page="/WEB-INF/view/jsp/menu.jsp"/>	
			<jsp:doBody />
		<jsp:include page="/WEB-INF/view/jsp/footer.jsp"/>	
	</div>
</body>
