<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ attribute name="collection" required="true" rtexprvalue="true" type="java.util.Collection"%>
<%@ attribute name="headerLabels" required="true" rtexprvalue="true" %>

<c:choose>
   <c:when test="${empty collection}">
        Table is empty.
   </c:when>
   <c:otherwise>
 		<table>
			<thead>
		        <tr>
		        	<c:forEach items="${headerLabels}" var="label">
						<th> ${label} </th>
					</c:forEach>
		        </tr>
			</thead>
		    <tbody>
				<jsp:doBody />
 			</tbody>
		</table>  		
    </c:otherwise>
</c:choose>
