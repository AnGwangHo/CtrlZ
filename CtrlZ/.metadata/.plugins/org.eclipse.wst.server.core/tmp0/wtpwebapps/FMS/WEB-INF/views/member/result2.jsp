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
   <div align="center" style="color: white;">
    <h1 style="margin-bottom: 50px;">회원 가입 완료 !!(MemberShip Sucess)</h1>
          <!-- form -->     
          <form method="post" action="php/contact.php" name="registForm" id="registForm" style="color: white;">
			<table>
			<thead>
			<tr>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			</tr>
			</thead>
			<tbody style="color: white;">
                  <tr>
                   <td><label class="title_info" for="name" style="font-size:20px;">이름 : </label></td>
					<td><input type="text" id="name" class="form-control" name="name" style="width: 200px; height: 30px;" placeholder="ex) 홍길동"
								required autofocus></td>
                  </tr>
                  <tr>
                   <td><label class="title_info" for="id_info" style="font-size:20px;">아이디
									:</label></td>
									<td> <input type="text" name="id" id="2id" class="form-control"
								style="width: 200px; height: 30px;" placeholder="ex) jayo1000" pattern="[A-Za-z0-9]{6,8}"	required>
								<input type="hidden" name="idCheckResult" value="0">
								<span id="idMessageBox"></span>
                  </td>
                  </tr>
                  <tr>
                   <td><label class="title_info" for="passwd" style="font-size:20px;">비밀번호:</label></td>
							<td><input type="password" class="form-control" name="passwd" id="passwd"
									style="width: 200px; height: 30px;" placeholder="비밀번호를 입력해주세요." required>
                  </td>
                  <td>
                 <label class="title_info" for="repasswd" style="font-size:20px; ">비밀번호
									확인 :</label> </td>
				<td><input type="password" class="form-control" id="repasswd" name="repasswd"
					style="width: 200px; height: 30px;" placeholder="똑같이 입력해주세요." required>
					<span id="pwMessageBox"></span>
					<input type="hidden" name="pwCheckResult" value="0">
                  </td>
                  </tr>
                  <tr>
                  <td>
                  <label class="title_info" style="font-size:20px; margin-top: 20px;">성별 : </label></td>
                  <td>
                   <label style="font-size:20px;"><input type="radio" name="gender" class="red" value="man" />man</label>
                   <label style="font-size:20px;"><input type="radio" name="gender" class="red" value="woman" />woman</label>
                  </td>
                  <td colspan="2">
                  <label class="title_info" for="image" style="font-size:20px;"><b>프로필 이미지</b></label>
                  </td>
                  </tr>
				  <tr>
				  <td style="">
                   <label class="title_info" for="id_info" style="font-size:20px;">나이
									:</label></td>
				  <td><input type="text" name="id" id="user" class="form-control"
								style="width: 80px; height: 30px;" required>
                  </td>
                  <td colspan="2" rowspan="2">
                 <img id="imagePreview" style="width: 200px; height: 200px; float: right;"/>
							</td>
					</tr>
					<tr>
					<td>
                   <label class="title_info" for="id_info" style="font-size:20px;">키
									:</label> </td>
									<td>
									<input type="text" name="id" id="user" class="form-control"
								style="width: 80px; height: 30px;" required>
                  </td>
                  <td>
				<input type="file" id="image" class="form-control" name="image" required style="width: 80%;">				
					</td>
                  </tr>
                  <tr>
                  <td>
                   <label class="title_info" for="id_info" style="font-size:20px;">무게 :</label> </td>
				<td><input type="text" name="id" id="user" class="form-control" style="width: 80px; height: 30px;" required>
                  </td>
                  </tr>
                  <tr>
                  <td>
                  <label class="title_info" for="id_info" style="font-size:20px;">포지션(메인) : </label></td>
                    <td> 
                     <select name="searchType" style="width: 80px; height: 30px; color: black;">
									<option value="null">----</option>
									<option value="content">공격수</option>
									<option value="writer">미드필더</option>
									<option value="writer">수비수</option>
									<option value="writer">골키퍼</option>	
					</select> 
                  </td>
                  </tr>
                  <tr>
                  <td>
                  <label class="title_info" for="id_info" style="font-size:20px;">포지션(세컨드) : </label></td>
                    <td>
                     <select name="searchType" style="width: 80px; height: 30px; color: black;">
									<option value="null">----</option>
									<option value="content">공격수</option>
									<option value="writer">미드필더</option>
									<option value="writer">수비수</option>
									<option value="writer">골키퍼</option>	
					</select> 
                  </td>
                  </tr>
                  <tr>
                  <td>
                  <label class="title_info" for="id_info" style="font-size:20px;">메인 발 : </label></td>
                  <td>
                   <label style="font-size:20px;"><input type="radio" name="gender" class="red" value="man" />왼발</label>
                   <label style="font-size:20px;"><input type="radio" name="gender" class="red" value="woman" />오른발</label>
                   <label style="font-size:20px;"><input type="radio" name="gender" class="red" value="woman" />양발</label>
                  </td>
                  </tr>
                  <tr>
                  <td>
                  <label class="title_info"	for="phonenumber1" style="font-size:20px;  display: inline;">연락처 :</label></td>
                  <td>
                  <select class="form-control" id="phonenumber1" name="phonenumber1" style="width: 50%;  display: inline;">
									<option>010</option>
									<option>011</option>
									<option>016</option>
									<option>017</option>
									<option>018</option>
									<option>019</option>
							</select> <input type="text" class="form-control" name="phonenumber2"
								style="width: 50%; display: inline; height: 35px;" placeholder="ex) 1234" required> <input
								type="text" class="form-control" name="phonenumber3"
								style="width: 50%; display: inline; height: 35px;" placeholder="ex) 5678" required>
                </td>
                </tr>
                <tr>
                <td>
                <label class="title_info" for="id_info" style="font-size:20px;">이메일 : </label></td>
                <td>
                <input type="text" name="id" id="user" class="form-control"
								style="width: 30%; display: inline; height: 150%;" placeholder="ex) jayo1000" required>@
								<input type="text" name="id" id="user" class="form-control"
								style="width: 40%; display: inline; height: 150%;" placeholder="ex) naver.com" required>
				</td>
				</tr>
				<tr>
				<td>
				<label class="title_info" style="font-size:20px;">주소 :</label></td>
				<td> <input type="text" class="form-control" id="zipcode" name="zip_code"
								placeholder="우편번호" style="width: 30%; display:inline; height: 35px;" required> 
				</td><td><input type="button" class="form-control" id="add_btn" value="우편번호 찾기"
								style="width: 15%; display:inline; height: 35px;" required>
				</td></tr>
				<tr>
				<td>
				<label class="title_info"></label> <input
								type="text" class="form-control" id="default_address"
								name="default_address" placeholder="기본주소" style="width: 35%; display:inline; height: 35px;"required>
								</td><td>
								<input type="text" class="form-control" id="detail_address"
								name="detail_address" placeholder="나머지주소" style="width: 40%; display:inline; height: 35px;">
               </td>
               </tr>
               <tr>
                <td>
                <textarea name="comments" id="comments" cols="" rows="" placeholder="Enter Your Description..."></textarea>
              
                </td>
                </tr>
               <tr>
               <td>
                <input name="zation" type="reset" value="초기화" class="btn btn-default"></td>
               <td><input name="submit" type="button" class="btn btn-default" value="등록" style="display: inline; width: 70px;"></td>
               <!--  <div id="simple-msg"></div> -->
               </tr>
                   </tbody>
              </table>
             </form>

            <div class="clearfix"></div>      
          <!-- form -->
          </div>      
</body>
</html>