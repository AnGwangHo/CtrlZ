<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script src='/html/js/jquery.min.js'></script>
<c:set var="schedule" value="#{schedule }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>title</title>
</head>
<body>
<div>
	<label>${schedule.schedule_writer}</label>|
	<label>${schedule.schedule_date}</label>
	<input type="button" id="join" value="참여">
</div>
<div>
	<textarea rows="10" cols="80">
		${schedule.schedule_content }
	</textarea>
</div>
<div>
	<input type="button" value="삭제">
	<input type="button" value="수정">
	<input type="button" value="등록">
</div>
<!-- 여기서부터 아래까지는 등록 후 가능 -->
<div>
	<label>KOSTA</label>
	<input type="text" value="댓글입니다.">
	<label>YYYY-MM-DD</label>
	<input type="button" value="수정">
	<input type="button" value="삭제">
</div>
<div>
	<form action="" method="post">
		<label>Writer</label>
		<textarea rows="3" cols="50" placeholder="내용을 입력하세요."></textarea>
		<input type="button" value="등록">
	</form>
</div>
<!-- 여기까지 -->
<input type="button" value="닫기" id="close">

<script>
	$(function() {
		
		$("#close").click(function() {
			window.opener.recall();//부모창의 스크립트를 호출
			self.close();//자기 자신을 닫는다.
		});
		
		document.title = '${schedule.schedule_title}';//자식창 이름 변경
	});
</script>
</body>
</html>