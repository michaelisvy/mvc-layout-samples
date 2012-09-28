<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:url value="/users/all/jsp-plain.htm" var="usersPlain" />
<c:url value="/users/all/custom-tags.htm" var="usersCustomTags" />
<c:url value="/users/all/tiles.htm" var="usersTiles" />
<c:url value="/users/all/thymeleaf.htm" var="usersThymeleaf" />
<c:url value="/images/springsource_banner_green.png" var="headerImage" />
<div class="header well">
	<img src="${headerImage}"/>
	<div class="page-header">
		<h1>${title}</h1>
	</div>	
	<ul>
		<li><a href="${usersPlain}">No template</a></li>
		<li><a href="${usersCustomTags}">Custom tags</a></li>
		<li><a href="${usersTiles}">Apache Tiles</a></li>
		<li><a href="${usersThymeleaf}">Thymeleaf</a></li>
	</ul>
</div>