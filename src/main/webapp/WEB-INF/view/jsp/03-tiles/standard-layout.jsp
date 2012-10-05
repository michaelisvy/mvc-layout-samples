<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>

<html> 
	<head>
		<meta charset="utf-8">
		<spring:url value="/style" var="styleUrl" />
		<link href="${styleUrl}/app.css" rel="stylesheet">
		<title>${title}</title>
	</head>
	
	<body>
		<div class="container" style="padding-top: 50px;">
			<jsp:include page="/WEB-INF/view/jsp/menu.jsp"/>	
			<tiles:insertAttribute name="main" />
			<jsp:include page="/WEB-INF/view/jsp/footer.jsp"/>	
		</div>
	</body>
</html>