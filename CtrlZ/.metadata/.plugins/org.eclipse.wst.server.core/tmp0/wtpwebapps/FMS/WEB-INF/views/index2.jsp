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

<!-- font-awesome -->

</head>

<body>

<!-- side bar -->

<jsp:include page="include/side.jsp"/>
<!-- side bar --> 


<!-- header -->
<jsp:include page="include/header.jsp"/>

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
            <p>FMS. "풋볼매니지먼트 솔루션"은  축구동호호나 기타 아날로그로 적어가던 축구 시스템을 디지털 방식으로 보여주기 위해 만들었습니다. </p>
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
              <form method="post" action="/html/php/subscribe.php" name="subscribeform" id="subscribeform">
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
            <form method="post" action="/html/php/contact.php" name="cform" id="cform">
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
      
      <!-- Contact --> 
      
    </div>
    
    <!-- tab-content --> 
    
  </div>
</main>

<!-- main --> 

<!-- footer -->

<jsp:include page="include/footer.jsp"/>

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) --> 

<script src="/html/js/jquery.min.js" type="text/javascript"></script> 

<!-- custom --> 

<script src="/html/js/custom.js" type="text/javascript"></script> 
<script src="/html/js/nav-custom.js" type="text/javascript"></script> 

<!-- Include all compiled plugins (below), or include individual files as needed --> 

<script src="/html/js/bootstrap.min.js" type="text/javascript"></script> 

<!-- jquery.countdown --> 

<script src="/html/js/countdown-js.js" type="text/javascript"></script> 
<script type="text/javascript" src="/html/js/jquery.contact.js"></script> 
<script src="/html/js/html5shiv.js" type="text/javascript"></script> 

<!-- Typed jS --> 

<script src="/html/js/typed.js" type="text/javascript"></script> 
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
</body>
</html>