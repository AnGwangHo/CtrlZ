<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html PUBLIC "-//W#C//DTD HTML 4.01 Transitional//EN" "http://wwww.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>gg</title>
</head>

<body>
<h4>${exception.getMessage() }</h4>

<ul>
<c:forEach items="${exception.getStackTrace()}" var="stack">
<li>${stack.toString() }</li>
</c:forEach>
</ul>


</body>
</html>