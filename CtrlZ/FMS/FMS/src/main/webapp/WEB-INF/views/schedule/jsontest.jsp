<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script src='/html/js/jquery.min.js'></script>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title></title>
</head>
<body>
하이룽
<script type="text/javascript">
$(document).ready(function() {
	var result = new Array();
	
	<c:forEach items="${events }" var="items">
		var json = new Object();
		json.id = '${items.schedule_num}';
		json.title = '${items.schedule_title}';
		json.start = '${items.schedule_date}';
		json.end = '${items.schedule_deadline}';
		result.push(json);
	</c:forEach>
	
	alert(JSON.stringify(result));
});
</script>
</body>
</html>