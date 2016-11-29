<%@ page contentType="text/plain; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:choose>
	<c:when test="${empty user}">
		true
	</c:when>
	<c:otherwise>
		false
	</c:otherwise>
</c:choose>