<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="false"%>

<html>
<head>
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1" />
<meta charset="utf-8">

<!-- Description, Keywords and Author -->

<meta name="description" content="">
<meta name="author" content="">
<title>:: Floxi ::</title>
<link rel="shortcut icon" href="/html/images/favicon.ico"
	type="/html/image/x-icon">
<!-- style -->
<link href="/html/css/style.css" rel="stylesheet">
<!-- style -->
<!-- bootstrap -->
<link href="/html/css/bootstrap.min.css" rel="stylesheet">
<!-- responsive -->
<link href="/html/css/responsive.css" rel="stylesheet">
<!-- font-awesome -->
<link href="/html/css/font-awesome.min.css" rel="stylesheet">
<!-- <link href="/html/js/regist.js" rel="stylesheet">

<script src="/html/js/regist.js" type="text/javascript"></script> -->
<script src="/html/js/jquery.min.js" type="text/javascript"></script> 
<script type="text/javascript" src="/html/js/jquery.contact.js"></script> 
<script type="text/javascript">
$(function() {
	$("#profile").change(function() {
		readUploadImage(this);
	});
});

function readUploadImage(inputObject) {
	/*
	 * 브라우저에서 FileReader가 지원되는지 확인하기 위해 
	 * window.File && window.FileReader 실행 
	 */
	if (window.File && window.FileReader) {
		/* 입력된 파일이 1개 이상 있는지 확인 */
		if (inputObject.files && inputObject.files[0]) {
			/* 이미지 파일인지 체크 */
			if (!(/image/i).test(inputObject.files[0].type)) {
				alert("이미지 파일을 선택해 주세요!");
				return false;
			}
			/* FileReader 를 준비 한다. */
			var reader = new FileReader();
			reader.onload = function(e) {
				/* reader가 다 읽으면 imagePreview에 뿌려기 */
				$('#imagePreview').attr('src', e.target.result);
			}
			/* input file에 있는 파일 하나를 읽어온다. */
			reader.readAsDataURL(inputObject.files[0]);
		}
	} else {
		alert("미리보기 안되요. 브라우저를 업그레이드하세요.");
	}
}
</script>

</head>
<body>

	<!-- side bar -->

	<jsp:include page="../include/side.jsp" />


	<!-- header -->
	<jsp:include page="../include/header.jsp" />

	<!-- footer -->

	<jsp:include page="../include/footer.jsp" />


	<!-- 본문내용! -->
	<!-- 4번 form 추가--->
	<div style="margin-left: 250px; margin-bottom: 200px;">
		<h1 style="margin-bottom: 70px; color: white; margin-left: 150px;">회원
			가입(Join MemberShip)</h1>
		<!-- form -->
		<form method="post" action="php/contact.php" name="registForm"
			id="registForm" style="color: white;">
			<!-- 한 줄당 li 하나씩 -->
			<ul>
				<li class="info" style="margin-bottom: 10px;"><label
					class="title_info" for="name"
					style="font-size: 20px; margin-right: 36px;">이름 : </label> <input
					type="text" id="name" class="form-control" name="name"
					style="width: 200px; height: 30px; display: inline;"
					placeholder="ex) 홍길동" required autofocus></li>
				<li class="info" style="margin-bottom: 10px;"><label
					class="title_info" for="id_info"
					style="font-size: 20px; margin-right: 19px;">아이디:</label> <input
					type="text" id="name" class="form-control" name="name"
					style="width: 200px; height: 30px; display: inline;"
					placeholder="ex) jayo1000" required autofocus></li>
				<li class="info" style="margin-bottom: 10px;"><label
					class="title_info" for="passwd" style="font-size: 20px;">비밀번호:</label>
					<input type="password" class="form-control" name="passwd"
					id="passwd" style="width: 200px; height: 30px; display: inline;"
					placeholder="비밀번호를 입력해주세요." required> <label
					class="title_info" for="repasswd"
					style="font-size: 20px; margin-left: 30px;">비밀번호 확인 :</label> <input
					type="password" class="form-control" id="repasswd" name="repasswd"
					style="width: 200px; height: 30px; display: inline;"
					placeholder="똑같이 입력해주세요." required> <span id="pwMessageBox"
					style="display: inline;"></span> <input type="hidden"
					name="pwCheckResult" value="0" style="display: inline;"></li>
				<li class="info" style="margin-bottom: 10px;"><label
					class="title_info" for="profile"
					style="font-size: 20px; margin-right: 10px;">프로필 사진</label> <input
					type="file" id="profile" class="form-control" name="profile"
					required style="width: 17%; display: inline;"> <img
					id="imagePreview" name="imagePreview"
					style="width: 200px; height: 200px; float: right; margin-right: 610px;" />
				</li>
				<li class="info" style="margin-bottom: 10px;"><label
					class="title_info"
					style="font-size: 20px; margin-top: 20px; display: inline;">성별
						: </label>
					<div id="radioBtn" class="btn-group">
						<label class="btn btn-primary active"> <input type="radio"
							name="options" id="option1" autocomplete="off" checked>
							남성
						</label> <label class="btn btn-primary"> <input type="radio"
							name="options" id="option2" autocomplete="off"> 여성
						</label>
					</div> <input type="hidden" name="gender" id="gender">
				<li class="info" style="margin-bottom: 10px;"><label
					class="title_info" for="id_info"
					style="font-size: 20px; margin-right: 10px;">나이:</label> <input
					type="text" name="id" id="user" class="form-control"
					style="width: 80px; height: 30px; display: inline;" required>
				</li>
				<li class="info" style="margin-bottom: 10px;"><label
					class="title_info" for="id_info"
					style="font-size: 20px; margin-right: 30px;">키:</label> <input
					type="text" name="id" id="user" class="form-control"
					style="width: 80px; height: 30px; display: inline;" required>
				</li>
				<li class="info" style="margin-bottom: 10px;"><label
					class="title_info" for="id_info"
					style="font-size: 20px; margin-right: 6px;">무게 :</label> <input
					type="text" name="id" id="user" class="form-control"
					style="width: 80px; height: 30px; display: inline;" required>
				</li>
				<li class="info" style="margin-bottom: 10px;"><label
					class="title_info" for="id_info"
					style="font-size: 20px; margin-right: 20px;">포지션(메인) : </label> <select
					name="searchType" style="width: 80px; height: 30px; color: black;">
						<option value="null">----</option>
						<option value="content">공격수</option>
						<option value="writer">미드필더</option>
						<option value="writer">수비수</option>
						<option value="writer">골키퍼</option>
				</select></li>
				<li class="info" style="margin-bottom: 10px;"><label
					class="title_info" for="id_info" style="font-size: 20px;">포지션(세컨드)
						: </label> <select name="searchType"
					style="width: 80px; height: 30px; color: black;">
						<option value="null">----</option>
						<option value="content">공격수</option>
						<option value="writer">미드필더</option>
						<option value="writer">수비수</option>
						<option value="writer">골키퍼</option>
				</select></li>
				<li class="info" style="margin-bottom: 10px;"><label
					class="title_info" for="id_info" style="font-size: 20px;">메인
						발 : </label> <!-- <label style="font-size:20px;"><input type="radio" name="gender"  value="left" />왼발</label>
                  		 	<label style="font-size:20px;"><input type="radio" name="gender"  value="right" />오른발</label>
                   			<label style="font-size:20px;"><input type="radio" name="gender"  value="double" />양발</label> -->
					<label class="btn btn-primary active"> <input type="radio"
						name="options" id="option1" autocomplete="off" checked> 왼발
				</label> <label class="btn btn-primary"> <input type="radio"
						name="options" id="option2" autocomplete="off"> 오른발
				</label> <label class="btn btn-primary"> <input type="radio"
						name="options" id="option3" autocomplete="off"> 양발
				</label></li>
				<li class="info" style="margin-bottom: 10px;"><label
					class="title_info" for="phonenumber1"
					style="font-size: 20px; display: inline;">연락처 :</label> <select
					class="form-control" id="phonenumber1" name="phonenumber1"
					style="width: 8%; display: inline;">
						<option>010</option>
						<option>011</option>
						<option>016</option>
						<option>017</option>
						<option>018</option>
						<option>019</option>
				</select> <input type="text" class="form-control" name="phonenumber2"
					style="width: 15%; display: inline; height: 35px;"
					placeholder="ex) 1234" required> <input type="text"
					class="form-control" name="phonenumber3"
					style="width: 15%; display: inline; height: 35px;"
					placeholder="ex) 5678" required></li>
				<li class="info" style="margin-bottom: 10px;"><label
					class="title_info" for="id_info" style="font-size: 20px;">이메일
						: </label> <input type="text" name="id" id="user" class="form-control"
					style="width: 9%; display: inline; height: 35px;"
					placeholder="ex) jayo1000" required>@ <input type="text"
					name="id" id="user" class="form-control"
					style="width: 15%; display: inline; height: 35px;"
					placeholder="ex) naver.com" required></li>
				<li class="info" style="margin-bottom: 10px;"><label
					class="title_info" style="font-size: 20px; margin-right: 20px;">주소
						:</label> <input type="text" class="form-control" id="zipcode"
					name="zip_code" placeholder="우편번호"
					style="width: 10%; display: inline; height: 35px;" required>
					<input type="button" class="form-control" id="add_btn"
					value="우편번호 찾기" style="width: 10%; display: inline; height: 35px;"
					required></li>
				<li class="info" style="margin-left: 72px; list-style: none;">
					<input type="text" class="form-control" id="default_address"
					name="default_address" placeholder="기본주소"
					style="width: 25%; display: inline; height: 35px;" required>
					<input type="text" class="form-control" id="detail_address"
					name="detail_address" placeholder="나머지주소"
					style="width: 30%; display: inline; height: 35px;">
				</li>
				<li class="info"><label class="title_info" for="id_info"
					style="font-size: 30px;">Comment</label>
					<p>
						<textarea name="comments" id="comments"
							placeholder="Enter Your Description..."
							style="width: 700px; height: 120px; color: black; margin-left: 70px;"></textarea>
					</p></li>
				<li class="info"
					style="list-style: none; margin-left: 180px; margin-top: 40px;">
					<input name="submit" type="button" class="btn btn-default"
					value="등록" style="width: 150px; height: 30px;"> <input
					name="zation" type="reset" value="초기화" class="btn btn-default"
					style="display: inline; width: 150px; height: 30px; margin-left: 100px;">
				</li>
			</ul>
		</form>

		<!-- 메인내용 끝 -->
	</div>
	<div class="clearfix"></div>
	<!-- form -->

</body>
</html>