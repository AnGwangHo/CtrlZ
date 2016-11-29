<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE HTML>

<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
<meta charset="utf-8">

<!-- Description, Keywords and Author -->

<meta name="description" content="">
<meta name="author" content="">
<title>:: Floxi ::</title>
<link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">

<!-- style -->

<link href="css/style.css" rel="stylesheet">

<!-- style -->

<!-- bootstrap -->

<link href="css/bootstrap.min.css" rel="stylesheet">

<!-- responsive -->

<link href="css/responsive.css" rel="stylesheet">

<!-- font-awesome -->

<link href="css/font-awesome.min.css" rel="stylesheet">

<!-- Slider -->

<link href="css/jquery.fadeshow-0.1.1.min.css" rel="stylesheet">
</head>

<body>

<!-- slider -->

<div class="background"></div>
<div class="over-bg"></div>

<!-- slider -->

<main role="slider-container"> 
  
  <!-- side bar -->
  
  <aside role="siderbar-nav" class="side-bar">
    <nav>
      <ul class="nav nav-tabs">
        <li class="active"><a data-toggle="tab" href="#home" title="Home"><i class="fa fa-home" aria-hidden="true"></i></a></li>
        <li><a data-toggle="tab" href="#menu1" title="About"><i class="fa fa-info-circle" aria-hidden="true"></i></a></li>
        <li><a data-toggle="tab" href="#menu2" title="Subscribe"><i class="fa fa-paper-plane" aria-hidden="true"></i></a></li>
        <li><a data-toggle="tab" href="#menu3" title="Contact"><i class="fa fa-envelope" aria-hidden="true"></i></a></li>
      </ul>
    </nav>
  </aside>
  
  <!-- side bar --> 
  
  <!-- header -->
  
  <header role="main-header">
    <div class="container"> 
      
      <!-- logo -->
      
      <h1> <a href="index.html" title="Floxi"><img src="images/logo.png" alt="Floxi"/></a> </h1>
      
      <!-- logo --> 
      
      <!-- socil Icon -->
      
      <ul role="socil-icons">
        <li><a href="#" target="_blank" title="twitter"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
        <li><a href="#" target="_blank" title="facebook"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
        <li><a href="#" target="_blank" title="google-plus"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
        <li><a href="#" target="_blank" title="pinterest"><i class="fa fa-pinterest" aria-hidden="true"></i></a></li>
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
              <h2>We are
                <div id="typed-strings"><span>passionate</span> <span>dedicated</span> <span>Floxi</span> </div>
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
            <h2>About us</h2>
          </header>
          <article>
            <p>Mauris rutrum risus ac luctus cursus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Praesent vel quam id mi finibus tempor. Sed bibendum, enim sit amet gravida bibendum, nisi sapien placerat risus, vitae lacinia velit felis ut erat. Phasellus eget purus rhoncus, scelerisque leo in, convallis massa.</p>
            <p>Mauris rutrum risus ac luctus cursus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Praesent vel quam id mi finibus tempor. Sed bibendum, enim sit amet gravida bibendum, nisi sapien placerat risus, vitae lacinia velit felis ut erat. Phasellus eget purus rhoncus, scelerisque leo in, convallis massa.</p>
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
        
        <!-- Contact --> 
        
      </div>
      
      <!-- tab-content --> 
      
    </div>
  </main>
  
  <!-- main --> 
  
  <!-- footer -->
  
  <footer role="footer">
    <div class="container">
      <p>&copy; All rights reserved. Floxi 2015</p>
      <p>Made with<i class="fa fa-heart" aria-hidden="true"></i>by <a href="http://www.designstub.com">Designstub</a></p>
    </div>
  </footer>
</main>

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

<!-- slider --> 

<script type="text/javascript" src="js/background.cycle.js"></script> 
<script type="text/javascript" src="js/background.cycle-custom.js"></script> 
<script src="js/html5shiv.js" type="text/javascript"></script> 

<!-- Typed --> 
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
</body>
</html>