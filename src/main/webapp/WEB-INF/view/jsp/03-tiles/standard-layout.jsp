<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<spring:url value="/style" var="styleUrl" />
		<link href="${styleUrl}/app.css" rel="stylesheet">
		<title><tiles:importAttribute name="title" /></title>
	</head>
	<body>
		<div class="container" style="padding-top: 50px;">
			<jsp:include page="/WEB-INF/view/jsp/menu.jsp"/>	
				<tiles:insertAttribute name="main" />
			<jsp:include page="/WEB-INF/view/jsp/footer.jsp"/>	
		</div>
	</body>

</html>