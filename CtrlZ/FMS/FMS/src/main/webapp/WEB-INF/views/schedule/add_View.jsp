<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script src='/html/js/jquery.min.js'></script>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>title</title>
</head>
<body>
<form role="form" method="post">
<div>
	<input type="text" name="schedule_title" placeholder="일정 제목을 입력하세요...">
</div>
<div>
	<label><-작성자</label>|
	<input type="date" name="schedule_date">
</div>
<div>
	<input type="text" name="schedule_location" placeholder="모임 장소를 입력하세요...">추후 지도 API삽입
</div>
<div>
	<textarea rows="10" cols="50" name="schedule_content" placeholder="일정 내용을 입력하세요...."></textarea>
</div>
<div>
	<input type="submit" value="등록">
</div>
</form>
<input type="button" value="닫기" id="close">

<script>
	$(function() {
		$("#close").click(function() {
			window.opener.recall();//부모창의 스크립트를 호출
			self.close();//자기 자신을 닫는다.
		});
		
		if('${msg}'=='OK'){
			$("#close").trigger('click');
		}
		
		document.title = '일정등록';//자식창 이름 변경
	});
</script>
</body>
</html>