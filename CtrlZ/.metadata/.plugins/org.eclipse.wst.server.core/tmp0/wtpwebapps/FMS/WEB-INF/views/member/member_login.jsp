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
          <header role="page-title">
            <h2 align="center" style="margin-right: 100px; margin-bottom: 50px; color: white;">로그인(Login)</h2>
          </header>
          <article>
            <p style="margin-right: 100px; color: white;" align="center">-아이디를 분실하신분은 아이디/비밀번호 찾기 창을 이용해주시기 바랍니다-</p>
          </article>       
          <!-- form -->
          <div class="contact-from row">
            <div class="col-md-12 col-lg-12">
              <div id="message"></div>
              <form method="post" action="php/contact.php" name="cform" id="cform" align="center">
                  <div class="col-md-10 col-lg-10 col-sm-10">
                   <label class="title_info" for="name" style="font-size:20px; margin-right:90px;">ID  </label>
					<input type="text" id="name" class="form-control" name="name" style="width:30%; display: inline; height: 35px;" placeholder="ex) 홍길동"
								required autofocus>
                  </div>
                  <div class="col-md-10 col-lg-10 col-sm-10">
                   <label class="title_info" for="name" style="font-size:20px; margin-right:10px;">PASSWORD </label>
					<input type="password" class="form-control" id="repasswd"
								style="display: inline; width:30%;" placeholder="비밀번호를 다시 입력해주세요." required>
                  </div>
                <div class="clearfix"></div>
                <br>
                <br>
                <input name="submit" type="button" class="btn btn-default" value="Login" style="display: inline; width: 80px; margin-right: 50px;">
              <input name="zation" type="reset" value="Cancle" class="btn btn-default" style="width: 80px; margin-right: 160px;">
                <div id="simple-msg"></div>
              </form>
            </div>
            <div class="clearfix"></div>
          </div>
          
          <!-- form --> 
      		<!-- 메인내용 끝 -->
          <script type="text/javascript">
$(function()	{
	$("#image").change(function(){
	    readUploadImage(this);
	});
		$("#add_btn").click(function() {
			new daum.Postcode({
				oncomplete : function(data) {
					// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
	
					// 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
					// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
					var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
					var extraRoadAddr = ''; // 도로명 조합형 주소 변수
	
					// 법정동명이 있을 경우 추가한다. (법정리는 제외)
					// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
					if (data.bname !== ''
							&& /[동|로|가]$/g
									.test(data.bname)) {
						extraRoadAddr += data.bname;
					}
					// 건물명이 있고, 공동주택일 경우 추가한다.
					if (data.buildingName !== ''
							&& data.apartment === 'Y') {
						extraRoadAddr += (extraRoadAddr !== '' ? ', '
								+ data.buildingName
								: data.buildingName);
					}
					// 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
					if (extraRoadAddr !== '') {
						extraRoadAddr = ' ('
								+ extraRoadAddr + ')';
					}
					// 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
					if (fullRoadAddr !== '') {
						fullRoadAddr += extraRoadAddr;
					}
	
					// 우편번호와 주소 정보를 해당 필드에 넣는다.
					document.getElementById('zipcode').value = data.zonecode; //5자리 새우편번호 사용
					document.getElementById('default_address').value = fullRoadAddr;
				}
			}).open();
		});/* 우편 함수 끝 */
});
function readUploadImage( inputObject ) {
	/*
	 * 브라우저에서 FileReader가 지원되는지 확인하기 위해 
	 * window.File && window.FileReader 실행 
	 */
	if ( window.File && window.FileReader ) {
		/* 입력된 파일이 1개 이상 있는지 확인 */
		if ( inputObject.files && inputObject.files[0]) {
			/* 이미지 파일인지 체크 */
			if ( !(/image/i).test(inputObject.files[0].type ) ){
				alert("이미지 파일을 선택해 주세요!");
				return false;
			}
			/* FileReader 를 준비 한다. */
			var reader = new FileReader();
			reader.onload = function (e) {
				/* reader가 다 읽으면 imagePreview에 뿌려기 */
				$('#imagePreview').attr('src', e.target.result);
			}
			/* input file에 있는 파일 하나를 읽어온다. */
			reader.readAsDataURL(inputObject.files[0]);
		}
	} else {
		alert( "미리보기 안되요. 브라우저를 업그레이드하세요.");
	}
}
</script>
<script type="text/javascript">
	$(function() {
		document.registForm.id.onkeyup = function() {
			idCheck();
		}
		 	document.registForm.passwd.onkeyup = function() {
			pwCheck();
		}
		document.registForm.repasswd.onkeyup = function() {
			pwCheck();
		}
		document.registForm.onsubmit = function() {
			return checkValue(this);
		} 
	}); 

	function idCheck() {
		var inputId = document.registForm.id.value;
		document.registForm.idCheckResult.value = 0;

		// 정규식에 맞지않으면 체크할 필요가 없다.
		if (Validator.isEmpty(inputId) || !Validator.idCheck(inputId)) {
			setMessage("아이디는 6~8글자 안의 숫자 + 영문만 가능합니다.", "idMessageBox");
			return false;
		}

		$.ajax({
			type : "get",
			url : "checkId.edb",
			data : "id=" + inputId, 
			success : function(data) {
				if (eval(data)) {
					setMessage("사용 가능한 아이디 입니다.", "idMessageBox", "blue");
					document.registForm.idCheckResult.value = 1;
				} else {
					setMessage("이미 사용중인 아이디 입니다.", "idMessageBox", "red");
					document.registForm.idCheckResult.value = 0;
				}
			}
		});
	}

	function pwCheck() {
		var passwd = document.registForm.passwd.value;
		var repasswd = document.registForm.repasswd.value;

		// 둘 중에 하나라도 비어있으면 비교할 필요는 없다.
		if (Validator.isEmpty(passwd) || Validator.isEmpty(repasswd)) {
			setMessage("", "pwMessageBox");
			return false;
		}

		$.ajax({
			type : "get",
			url : "/edbike/user/checkPw.jsp",
			data : "passwd=" + passwd + "&repasswd=" + repasswd,
			success : function(data) {
				//var result = data.responseText;
				if (eval(data)) {
					setMessage("비밀번호가 일치합니다.", "pwMessageBox", "blue");
					document.registForm.pwCheckResult.value = 1;
				} else {
					setMessage("비밀번호가 서로 다릅니다.", "pwMessageBox", "red");
					document.registForm.pwCheckResult.value = 0;
				}
			}
		});
	}

	function setMessage() {
		var message = arguments[0];
		var location = arguments[1];
		var color = arguments[2];
		var messageBox = document.getElementById(location);

		if (messageBox) {
			if (color) {
				messageBox.style.color = color;
			} else {
				messageBox.style.color = "black";
			}
			messageBox.innerHTML = message;
		}
	}

	function checkValue(form) {
		var idCheckResult = form.idCheckResult.value;
		if (idCheckResult != 1) {
			alert("아이디 중복여부를 확인해주세요");
			form.id.focus();
			return false;
		}

		var pwCheckResult = form.pwCheckResult.value;
		if (pwCheckResult != 1) {
			alert("비밀번호가 일치하지 않습니다.");
			form.passwd.focus();
			return false;
		}
		
		var email = form.email.value;
		var phone2 = form.phonenumber2.value;
		var phone3 = form.phonenumber3.value;

		if (Validator.isEmpty(phone2) || Validator.isEmpty(phone3)
				|| Validator.isEmpty(profile)) {
			if (!confirm("비어있는 칸이 존재합니다\n그래도 회원가입하시겠습니까?")) {
				return false;
			} else {
				return true;
			}
		}

		if (!confirm("회원가입 하시겠습니까?")) {
			return false;
		}
		return true;
	}
</script>
<script type="text/javascript">	
</script> 
</body>
</html>