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
   <!-- 4번 form 추가--->
    <!-- 4번 form 추가--->
   <div style="margin-left: 180px; margin-bottom: 200px;">
    <h1 style="margin-bottom: 70px; color: white; margin-left: 200px;">회원 가입완료 !!(MemberShip Sucess)</h1>
          <!-- form -->  
          <form method="post" action="php/contact.php" name="registForm" id="registForm" style="color: white; font-size: 25px;">
				<!-- 한 줄당 li 하나씩 -->				
					<ul>
					<li style="list-style: none;">
					<img
					id="imagePreview" name="imagePreview" src="/html/images/result.jpg"
					style="width: 360px; height: 370px; float:left; margin-right: 30px;" />
					</li>
					<li style="font-size: 35px; list-style: none; margin-bottom: 30px;">
					<b>※  { user } 님의 회원가입이 정상적으로 완료 되었습니다! ※</b>		
					</li>
					<li>
					<label>저희 풋볼 매니지먼트의 회원으로 가입해주셔서 감사드리며,</label>
					</li>
					<li>
					<label>고객님들에게 유익하고 다양한 서비스를 드리기 위해 항상 노력하겠습니다.</label>
					</li>
					<li>
					<label>감사합니다.</label>
					</li>
					<li style="list-style: none;">
					<button type="button" class="btn3d btn btn-white btn-lg" style="margin-right: 50px; margin-left: 50px; width: 130px;" onclick="location.href='member_login';"><span class="fa fa-caret-square-o-right" style="margin-right: 5px;"></span> Login</button>
					<button type="button" class="btn3d btn btn-white btn-lg" style="width: 130px;" onclick="location.href='/';"><span class="fa fa-caret-square-o-right" style="margin-right: 5px;"></span> Main</button>
					<!-- <button style="margin-right: 50px; margin-left: 50px; width: 110px;">Login</button><button style="width: 110px;">Main</button> -->
					</li>
					<li style="font-size: 28px; list-style: none;">
					<b>{ 회원님을 위한 간단한 안내 }</b>
					</li>
					<li>
					<label>1. 관리자로 등록시 자신의 팀관리와 일정을 관리하실수 있습니다.</label>
					</li>
					<li>
					<label>2. 일반회원의 경우, 자신의 팀을 선택하여 가입하실수 있습니다.</label>
					</li>
	      			</ul>	
      			</form>
          <!-- form -->
          </div>
<style type="text/css">
.btn3d {
    position:relative;
    top: -6px;
    border:0;
     transition: all 40ms linear;
     margin-top:10px;
     margin-bottom:10px;
     margin-left:2px;
     margin-right:2px;
}
.btn3d:active:focus,
.btn3d:focus:hover,
.btn3d:focus {
    -moz-outline-style:none;
         outline:medium none;
}
.btn3d:active, .btn3d.active {
    top:2px;
}
.btn3d.btn-white {
    color: #666666;
    box-shadow:0 0 0 1px #ebebeb inset, 0 0 0 2px rgba(255,255,255,0.10) inset, 0 8px 0 0 #f5f5f5, 0 8px 8px 1px rgba(0,0,0,.2);
    background-color:#fff;
}
.btn3d.btn-white:active, .btn3d.btn-white.active {
    color: #666666;
    box-shadow:0 0 0 1px #ebebeb inset, 0 0 0 1px rgba(255,255,255,0.15) inset, 0 1px 3px 1px rgba(0,0,0,.1);
    background-color:#fff;
}
          </style>     
</body>
</html>