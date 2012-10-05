<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ attribute name="title" required="true" rtexprvalue="true" %>

<html>
	<head>
		<meta charset="utf-8">
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
</html>
