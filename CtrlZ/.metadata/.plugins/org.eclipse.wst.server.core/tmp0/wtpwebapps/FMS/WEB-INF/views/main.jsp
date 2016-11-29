<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE HTML>

<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
<meta charset="utf-8">

<!-- Description, Keywords and Author -->

<meta name="description" content="">
<meta name="author" content="">
<title>:: F.M.S(FootBall Managerment Solution) ::</title>
<link rel="shortcut icon" href="WEB-INF/images/favicon.ico" type="image/x-icon">

<!-- style -->

<link href="../../../../css/style.css" rel="stylesheet">

<!-- style -->

<!-- bootstrap -->

<link href="/../css/bootstrap.min.css" rel="stylesheet">

<!-- responsive -->

<link href="/../../css/responsive.css" rel="stylesheet">

<!-- font-awesome -->

<link href="css/font-awesome.min.css" rel="stylesheet">

<!-- Video -->

<link href="css/video.css" rel="stylesheet">
</head>

<body>

<!--Video Section--> 

<a id="video" class="player" data-property="{videoURL:'https://www.youtube.com/watch?v=Bcm3uDzCYHI',containment:'.bg-container-youtube', showControls:false, autoPlay:true, loop:true,  startAt:0, opacity:1, addRaster:false, quality:'large'}"></a>
<div class="bg-container-youtube"></div>
<div class="overlay-bg"></div>

<!--Video Section-->

<main role="video-wrapper"> 
  
  <!-- side bar -->
  
  <aside role="siderbar-nav" class="side-bar">
    <nav>
      <ul class="nav nav-tabs">
        <li class="active"><a data-toggle="tab" href="#home" title="Home"><i class="fa fa-home" aria-hidden="true"></i></a></li>
        <li><a data-toggle="tab" href="#menu1" title="About"><i class="fa fa-info-circle" aria-hidden="true"></i></a></li>
        <li><a data-toggle="tab" href="#menu2" title="Subscribe"><i class="fa fa-paper-plane" aria-hidden="true"></i></a></li>
        <li><a data-toggle="tab" href="#menu3" title="Contact"><i class="fa fa-envelope" aria-hidden="true"></i></a></li>
        <li><a data-toggle="tab" href="#menu4" title="regist"><i class="fa fa-child" aria-hidden="true"></i></a></li>
      </ul>
    </nav>
  </aside>
  <!-- side bar --> 

  <!-- header -->
  
  <header role="main-header">
    <div class="container"> 
          
      <!-- logo -->
      
      <h1> <a href="main" title="F.M.S(FootBall Managerment Solution)"><img src="../../../../images/logo.png" alt="F.M.S(FootBall Managerment Solution)"/></a> </h1>
      
      <!-- logo --> 
      
      <!-- socil Icon -->
      
      <ul role="socil-icons">
        <li><a data-toggle="tab" href="#menulogin" target="_blank" title="로그인"><i class="fa fa-sign-in" aria-hidden="true"></i><label style="margin-left: 10px;">로그인</label></a></li>
        <li><a data-toggle="tab" href="#menu4" target="_blank" title="회원가입"><i class="fa fa-user" aria-hidden="true"></i><label style="margin-left: 10px;">회원가입</label></a></li>
      </ul>
    </div>
  </header>
  
  <!-- header --> 
  
  <!-- main -->
  
  <main role="main" id="main">
    <div class="container"> 
      
      <!-- tab-content -->
      
      <div class="tab-content"> 
        
        <!-- Home -->
        
        <section id="home" class="tab-pane fade in active">
          <article class="home-content">
            <header role="home-title">
              <h2>F.M.S
                <div id="typed-strings"><span>원활한 축구팀관리!</span> <span>의사소통도 편리하게 관리!</span> <span>FMS(풋볼 매니지먼트 솔루션!)</span> </div>
                <span id="typed" style="white-space:pre;"></span></h2>
            </header>
            <p>We're sorry, our website is now under construction. We are working<br/>
              hard to deliver you a great viewing experience!
            <p> 
          </article>
          <div id="countdown"></div>
        </section>
        
        <!-- Home --> 
        
        <!-- about -->
        
        <section id="menu1" class="tab-pane fade other-page about-pan">
          <header role="page-title">
            <h2>F.M.S(풋볼 매니지먼트 솔루션)이란...?</h2>
          </header>
          <article>
            <p>FMS. "풋볼매니지먼트 솔루션"은  축구동호호나 기타 아날로그로 적어가던 축구 시스템을 디지털 방식으로 보여주기 위해 만들었습니다.</p>
            <p>현재로는, 한명의 관리자와 여러명의 회원을 가지고 사용하는 1인감독의 축구 관리 시스템 입니다만. 앞으로는 여러팀과 여러 관리자들도 만들어, 매칭 시스템도 구현하려는 계획을 가지고있습니다</p>
            <p><b>본 프로젝트는 코스타 126기 Ctrl+Z조가 만들었습니다</b></p>
            <label>----------------------------------------------------------------</label>
                   <br>
            <label style="color:white; font-size: 20px;"><b>조장  : 안광호</b></label> 
            <p>조원  : 임영묵, 김민호, 강준, 박찬용</p>
          </article>
        </section>
        
        <!-- about --> 
        
        <!-- Newsletter Subscribtion -->
        
        <section id="menu2" class="tab-pane fade other-page">
          <header role="page-title">
            <h2>Newsletter Subscribtion</h2>
          </header>
          <article>
            <p>Mauris rutrum risus ac luctus cursus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Praesent vel quam id mi finibus tempor. </p>
            
            <!-- subscribe -->
            
            <div class="subscribe-pan">
              <div class="ntify_form">
                <form method="post" action="php/subscribe.php" name="subscribeform" id="subscribeform">
                  <input name="email" type="email" id="subemail" placeholder="Enter Your Email...">
                  <label>
                    <input name="" type="submit" class="button-icon">
                    <i class="fa fa-paper-plane" aria-hidden="true"></i> </label>
                </form>
                
                <!-- subscribe message -->
                
                <div id="mesaj"></div>
                
                <!-- subscribe message --> 
                
              </div>
            </div>
            
            <!-- subscribe --> 
            
          </article>
        </section>
        
        <!-- Newsletter Subscribtion --> 
        
        <!-- Contact -->
        <section id="menulogin" class="tab-pane fade other-page" >
          <header role="page-title">
            <h2 align="center" style="margin-right: 80px;">로그인(Login)</h2>
          </header>
          <article>
            <p style="margin-left: 250px;">-아이디를 분실하신분은 아이디/비밀번호 찾기 창을 이용해주시기 바랍니다-</p>
          </article>       
          <!-- form -->
          <div class="contact-from row">
            <div class="col-md-12 col-lg-12">
              <div id="message"></div>
              <form method="post" action="php/contact.php" name="cform" id="cform" align="center">
                  <div class="col-md-10 col-lg-10 col-sm-10">
                   <label class="title_info" for="name" style="font-size:20px; margin-right:90px;">ID  </label>
					<input type="text" id="name" class="form-control" name="name" style="width: 40%; display: inline; height: 150%;" placeholder="ex) 홍길동"
								required autofocus>
                  </div>
                  <div class="col-md-10 col-lg-10 col-sm-10">
                   <label class="title_info" for="name" style="font-size:20px; margin-right:10px;">PASSWORD </label>
					<input type="password" class="form-control" id="repasswd"
								style="width: 40%; display: inline; height: 150%;" placeholder="비밀번호를 다시 입력해주세요." required>
                  </div>
                <div class="clearfix"></div>
                <br>
                <br>
                <input name="submit" type="button" class="btn btn-default" value="Login" style="display: inline; width: 80px; margin-right: 50px;">
              <input name="zation" type="reset" value="Cancle" class="btn btn-default" style="width: 80px; margin-right: 100px;">
                <div id="simple-msg"></div>
              </form>
            </div>
            <div class="clearfix"></div>
          </div>
          
          <!-- form --> 
          
        </section>
        <!-- ------------ -->
        <section id="menu3" class="tab-pane fade other-page">
          <header role="page-title">
            <h2>Contact us</h2>
          </header>
          <article>
            <p>Mauris rutrum risus ac luctus cursus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Praesent vel quam id mi finibus tempor. </p>
          </article>
          
          <!-- form -->      
          <div class="contact-from row">
            <div class="col-md-7 col-lg-7">
              <div id="message"></div>
              <form method="post" action="php/contact.php" name="cform" id="cform">
                <div class="row">
                  <div class="col-md-6 col-lg-6 col-sm-6">
                    <input  name="name" id="name" type="text" placeholder="Enter Your Name...">
                  </div>
                  <div class="col-md-6 col-lg-6 col-sm-6">
                    <input  name="email" id="email" type="email"  placeholder="Enter Your Email...">
                  </div>
                </div>
                <div class="clearfix"></div>
                <textarea name="comments" id="comments" cols="" rows="" placeholder="Enter Your Description..."></textarea>
                <div class="clearfix"></div>
                <input name="" type="submit" value="Submit">
                <div id="simple-msg"></div>
              </form>
            </div>
            <div class="clearfix"></div>
          </div>    
          <!-- form --> 
          
        </section>
        <!-- 4번 form 추가--->
        <section id="menu4" class="tab-pane fade other-page">
          <header role="page-title">
            <h2>회원 가입(Join MemberShip)</h2>
          </header>
          <!-- form -->     
          <div class="contact-from row">
            <div class="col-md-10 col-lg-10">
              <div id="message"></div>
              <form method="post" action="php/contact.php" name="registForm" id="registForm" style="color: white;">
                <div class="row">
                  <div class="col-md-10 col-lg-10 col-sm-10">
                   <label class="title_info" for="name" style="font-size:20px;">이름 : </label>
					<input type="text" id="name" class="form-control" name="name" style="width: 40%; display: inline; height: 150%;" placeholder="ex) 홍길동"
								required autofocus>
                  </div> 
                  <div class="col-md-10 col-lg-10 col-sm-10">
                   <label class="title_info" for="id_info" style="font-size:20px;">아이디
									:</label> <input type="text" name="id" id="2id" class="form-control"
								style="width: 40%; display: inline; height: 150%;" placeholder="ex) jayo1000" pattern="[A-Za-z0-9]{6,8}"	required>
								<input type="hidden" name="idCheckResult" value="0">
								<span id="idMessageBox"></span>
                  </div>
                  <div class="col-md-5 col-lg-5 col-sm-5">
                   <label class="title_info" for="passwd" style="font-size:20px;">비밀번호:</label>
								<input type="password" class="form-control" name="passwd" id="passwd"
									style="width: 60%; display: inline;  height: 30%;" placeholder="비밀번호를 입력해주세요." required>
                  </div>
                  <div class="col-md-5 col-lg-5 col-sm-5">
                 <label class="title_info" for="repasswd" style="font-size:20px;">비밀번호
									확인 :</label> <input type="password" class="form-control" id="repasswd" name="repasswd"
								style="width: 60%; display: inline;  height: 30%;" placeholder="비밀번호를 다시 입력해주세요." required>
							<span id="pwMessageBox"></span>
							<input type="hidden" name="pwCheckResult" value="0">
                  </div>
                  <div class="col-md-10 col-lg-10 col-sm-10">
                  <label class="title_info" for="id_info" style="font-size:20px;">성별 : </label>
                   <label style="font-size:20px;"><input type="radio" name="gender" class="red" value="man" />man</label>
                   <label style="font-size:20px;"><input type="radio" name="gender" class="red" value="woman" />woman</label>
                  </div>
                  <div class="col-md-10 col-lg-10 col-sm-10"> 
                  <label>-------------------------------------------------------------------------</label>
                  </div>
                  <div class="col-md-10 col-lg-10 col-sm-10">
                  <label class="title_info" for="image" style="font-size:20px;"><b>프로필 이미지</b></label>
							<img id="imagePreview" style="width: 200px; height: 200px; "/><!-- display:inline; float: right; -->
							<br>
							<input type="file" id="image" class="form-control" name="image" required
								style="width: 40%;">
				  </div>
				 <div class="col-md-10 col-lg-10 col-sm-10"> 
                  <label>-------------------------------------------------------------------------</label>
                  </div>
                  <div class="col-md-3 col-lg-3 col-sm-3">
                   <label class="title_info" for="id_info" style="font-size:20px;">나이
									:</label> <input type="text" name="id" id="user" class="form-control"
								style="width: 30%; display: inline; height: 30%;" required>
                  </div>
                  <div class="col-md-3 col-lg-3 col-sm-3">
                   <label class="title_info" for="id_info" style="font-size:20px;">키
									:</label> <input type="text" name="id" id="user" class="form-control"
								style="width: 30%; display: inline; height: 30%;" required>
                  </div>
                  <div class="col-md-3 col-lg-3 col-sm-3">
                   <label class="title_info" for="id_info" style="font-size:20px;">무게
									:</label> <input type="text" name="id" id="user" class="form-control"
								style="width: 30%; display: inline; height: 30%;" required>
                  </div>
                  <div class="col-md-10 col-lg-10 col-sm-10">
                  <label class="title_info" for="id_info" style="font-size:20px;">포지션(메인) : </label>
                     <select name="searchType" style="width: 80px; height: 30px; color: black;">
									<option value="null">----</option>
									<option value="content">공격수</option>
									<option value="writer">미드필더</option>
									<option value="writer">수비수</option>
									<option value="writer">골키퍼</option>	
					</select> 
                  </div>
                   <div class="col-md-10 col-lg-10 col-sm-10">
                  <label class="title_info" for="id_info" style="font-size:20px;">포지션(세컨드) : </label>
                     <select name="searchType" style="width: 80px; height: 30px; color: black;">
									<option value="null">----</option>
									<option value="content">공격수</option>
									<option value="writer">미드필더</option>
									<option value="writer">수비수</option>
									<option value="writer">골키퍼</option>	
					</select> 
                  </div>
                  <div class="col-md-10 col-lg-10 col-sm-10">
                  <label class="title_info" for="id_info" style="font-size:20px;">메인 발 : </label>
                   <label style="font-size:20px;"><input type="radio" name="gender" class="red" value="man" />왼발</label>
                   <label style="font-size:20px;"><input type="radio" name="gender" class="red" value="woman" />오른발</label>
                   <label style="font-size:20px;"><input type="radio" name="gender" class="red" value="woman" />양발</label>
                  </div>
                  <div class="col-md-12 col-lg-12 col-sm-12">
                  <label class="title_info"	for="phonenumber1" style="font-size:20px;  display: inline;">연락처 :</label> 
                  <select class="form-control" id="phonenumber1" name="phonenumber1" style="width: 10%;  display: inline;">
									<option>010</option>
									<option>011</option>
									<option>016</option>
									<option>017</option>
									<option>018</option>
									<option>019</option>
							</select> <input type="text" class="form-control" name="phonenumber2"
								style="width: 10%; display: inline; height: 35px;" placeholder="ex) 1234" required> <input
								type="text" class="form-control" name="phonenumber3"
								style="width: 10%; display: inline; height: 35px;" placeholder="ex) 5678" required>
                </div>
                <div class="col-md-10 col-lg-10 col-sm-10">
                <label class="title_info" for="id_info" style="font-size:20px;">이메일 : </label>
                <input type="text" name="id" id="user" class="form-control"
								style="width: 30%; display: inline; height: 150%;" placeholder="ex) jayo1000" required>@
								<input type="text" name="id" id="user" class="form-control"
								style="width: 40%; display: inline; height: 150%;" placeholder="ex) naver.com" required>
				</div>
				<div class="col-md-10 col-lg-10 col-sm-10">
				<label class="title_info" style="font-size:20px;">주소 :</label> <input
								type="text" class="form-control" id="zipcode" name="zip_code"
								placeholder="우편번호" style="width: 30%; display:inline; height: 35px;" required> <input
								type="button" class="form-control" id="add_btn" value="우편번호 찾기"
								style="width: 15%; display:inline; height: 35px;" required>
				</div>
				<div class="col-md-10 col-lg-10 col-sm-10">
				<label class="title_info"></label> <input
								type="text" class="form-control" id="default_address"
								name="default_address" placeholder="기본주소" style="width: 35%; display:inline; height: 35px;"required>
								<input type="text" class="form-control" id="detail_address"
								name="detail_address" placeholder="나머지주소" style="width: 40%; display:inline; height: 35px;">
                </div>
                </div>
                <div class="clearfix"></div>
                <textarea name="comments" id="comments" cols="" rows="" placeholder="Enter Your Description..."></textarea>
                <div class="clearfix"></div>
                <input name="zation" type="reset" value="초기화" class="btn btn-default">
                 <input name="submit" type="button" class="btn btn-default" value="등록" style="display: inline; width: 70px;">
                <div id="simple-msg"></div>
              </form>
            </div>
            <div class="clearfix"></div>
          </div>        
          <!-- form -->      
        </section>     
        <!-- Contact -->      
      </div>   
      <!-- tab-content --> 
      
    </div>
  </main> 
  <!-- main --> 
  
</main>

<!-- footer -->

<footer role="footer">
  <div class="container">
    <p>&copy; All rights reserved. F.M.S(FootBall Managerment Solution) 2016</p>
    <p>Made with<i class="fa fa-heart" aria-hidden="true"></i>by <a href="http://www.designstub.com">kosta 126기 Ctrl+Z</a></p>
  </div>
</footer>

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) --> 

<script src="js/jquery.min.js" type="text/javascript"></script> 

<!-- custom --> 

<script src="js/custom.js" type="text/javascript"></script> 
<script src="js/nav-custom.js" type="text/javascript"></script> 

<!-- Include all compiled plugins (below), or include individual files as needed --> 

<script src="js/bootstrap.min.js" type="text/javascript"></script> 

<!-- jquery.countdown --> 

<script src="js/countdown-js.js" type="text/javascript"></script> 
<script type="text/javascript" src="js/jquery.contact.js"></script> 

<!-- Video --> 

<script src="js/jquery.mb.YTPlayer.js" type="text/javascript"></script> 
<script src="js/video.js" type="text/javascript"></script> 
<script src="js/html5shiv.js" type="text/javascript"></script> 

<!-- Typed jS --> 

<script src="js/typed.js" type="text/javascript"></script> 
<script>
    $(function(){

        $("#typed").typed({
            // strings: ["Typed.js is a <strong>jQuery</strong> plugin.", "It <em>types</em> out sentences.", "And then deletes them.", "Try it out!"],
            stringsElement: $('#typed-strings'),
            typeSpeed: 100,
            backDelay: 1000,
            loop: true,
            contentType: 'html', // or text
            // defaults to false for infinite loop
            loopCount: false,
            callback: function(){ foo(); },
            resetCallback: function() { newTyped(); }
        });

        $(".reset").click(function(){
            $("#typed").typed('reset');
        });

    });

    function newTyped(){ /* A new typed object */ }

    function foo(){ console.log("Callback"); }

    </script>
    <!-- 스크립트 코드 작성 -->
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