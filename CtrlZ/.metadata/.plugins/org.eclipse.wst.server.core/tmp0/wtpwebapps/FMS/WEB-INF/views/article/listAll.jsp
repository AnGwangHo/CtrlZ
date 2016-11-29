<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="false"%>

<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
<meta charset="utf-8">

<!-- Description, Keywords and Author -->

<meta name="description" content="">
<meta name="author" content="">
<title>:: Floxi ::</title>
<link rel="shortcut icon" href="/html/images/favicon.ico" type="/html/image/x-icon">
<!-- style -->
<link href="/html/css/style.css" rel="stylesheet">
<!-- style -->
<!-- bootstrap -->
<link href="/html/css/bootstrap.min.css" rel="stylesheet">
<!-- responsive -->
<link href="/html/css/responsive.css" rel="stylesheet">
<!-- font-awesome -->
<link href="/html/css/font-awesome.min.css" rel="stylesheet">



</head>

<body>

<!-- side bar -->
<jsp:include page="../include/side.jsp"/>

<!-- header -->
<jsp:include page="../include/header.jsp"/>

<!-- footer -->
<jsp:include page="../include/footer.jsp"/>

<!-- 본문내용! -->
<div class="container">
 <div class="tab-content">
<div class='box'>
	<div class="box-header with-border">
		<h3 class="box-title">Board List</h3>
	</div>
	<div class='box-body'>
		<button id='newBtn'>New Board</button>
	</div>
</div>
			
<table class="table table-bordered">
      <tr>
        <th style="width: 10px">BNO</th>
        <th>TITLE</th>
        <th>WRITER</th>
        <th>REGDATE</th>
        <th style="width:40px">VIEWCNT</th>
      </tr>
      <c:forEach items="${list}" var="board">
	 <tr>
		<td>${board.bno}</td>
		<td><a href='/board/read?bno=${board.bno}'>${board.title}</a></td>
		<td>${board.writer}</td>
		<td><fmt:formatDate pattern="yyyy-MM-dd" value="${board.regdate}" /></td>
		<td><span class="badge bg-red">${board.viewcnt }</span></td>
	 </tr>

	</c:forEach>
    </table>
</div>
</div>

</body>
</html>