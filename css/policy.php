<?php

$paypal_account="info@cnelindia.com";
$frequency = "M";
$amount = 250;
$currency = "USD";
$src = 1;


if(isset($_REQUEST['amount']))
{
	$amount = $_REQUEST['amount'];
}

if(isset($_REQUEST['currency']))
{
	$currency = $_REQUEST['currency'];
}

if(isset($_REQUEST['frequency']))
{
	$frequency = $_REQUEST['frequency'];
	
}

if(isset($_REQUEST['start_now']))
{
	$item_no = date("Ymd")."-CnEL-Retainer"; 
	
//	a3 - amount to billed each recurrence
//p3 - number of time periods between each recurrence
//t3 - time period (D=days, W=weeks, M=months, Y=years)
	
	if($frequency=="O")// one time payment 
	{
		$redirect_to = 'https://www.paypal.com/cgi-bin/webscr?cmd=_xclick-subscriptions&business='.$paypal_account.'&lc=IN&item_name=CnEL-Retainer&item_number='.$item_no.'&no_note=1&a3='.$amount.'&p3=1&t3=D&currency_code='.$currency.'&bn=PP%2dSubscriptionsBF%3abtn_subscribeCC_LG%2egif%3aNonHostedGuest';
	}
	else
	{
		$redirect_to = 'https://www.paypal.com/cgi-bin/webscr?cmd=_xclick-subscriptions&business='.$paypal_account.'&lc=IN&item_name=CnEL-Retainer&item_number='.$item_no.'&no_note=1&src=1&a3='.$amount.'&p3=1&t3='.$frequency.'&currency_code='.$currency.'&bn=PP%2dSubscriptionsBF%3abtn_subscribeCC_LG%2egif%3aNonHostedGuest';	
	}
	
	header("location:".$redirect_to);
}



?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="keywords" content="Bootstrap, Landing page, Template, Registration, Landing">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="author" content="Grayrids">
    <title>Software Development Company CnEL India</title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/line-icons.css">
    <link rel="stylesheet" href="css/owl.carousel.css">
    <link rel="stylesheet" href="css/owl.theme.css">
    <link rel="stylesheet" href="css/animate.css">
    <link rel="stylesheet" href="css/magnific-popup.css">
    <link rel="stylesheet" href="css/nivo-lightbox.css">
    <link rel="stylesheet" href="css/main.css">    
    <link rel="stylesheet" href="css/responsive.css">

    <style>

      .section{
        margin-bottom: 3rem;
        background-image: -webkit-linear-gradient(0deg, #3c96ff 0%, #2dfbff 100%);
        box-shadow: 0 0 5px #000;
      }

      .section h3{
        text-shadow: 0px 0px 5px #000;
      }

    </style>

  </head>
  
  <body>

    <!-- Header Section Start -->
    <header id="home" class="hero-area-2">    
      <div class="overlay"></div>
      <nav class="navbar navbar-expand-md bg-inverse fixed-top scrolling-navbar">
        <div class="container">
          <a href="/" class="navbar-brand"><!--<img src="img/logo.pnga" alt="">-->CnEL India</a>  
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
            <i class="lni-menu"></i>
          </button>
          <div class="collapse navbar-collapse" id="navbarCollapse">
            <ul class="navbar-nav mr-auto w-100 justify-content-end">
              <li class="nav-item">
                <a class="nav-link page-scroll" href="index.php#home">Home</a>
              </li>
              <li class="nav-item">
                <a class="nav-link page-scroll" href="index.php#app-features">Services</a>
              </li>  
              <li class="nav-item">
                <a class="nav-link page-scroll" href="index.php#screenshots">Portfolio</a>
              </li>                            
              <li class="nav-item">
                <a class="nav-link page-scroll" href="index.php#pricing">Packages</a>
              </li> 
              <li class="nav-item">
                <a class="nav-link page-scroll" href="index.php#blog">Technology</a>
              </li>  
              <li class="nav-item">
                <a class="nav-link page-scroll" href="index.php#subscribe">About us</a>
              </li> 
              <li class="nav-item">
                <a class="nav-link page-scroll" href="index.php#map-area">Contact</a>
              </li> 
            </ul>
          </div>
        </div>
      </nav>  
                   
    </header>
    <!-- Header Section End --> 

    <!-- Testimonial Section Start -->
    
    <!-- Testimonial Section End -->  

    <!-- Clients Section -->
    
    <!-- Client Section End --> 

    <!-- Subcribe Section Start -->
  <?php /*?>  
         <script> 
    		$(document).ready(function() { 
		    
			$("#submit_subscirbe_mail").on('click', function() { 
		//	jQuery('#show_processing').show();
		//	alert("dhgshg");
		//	var name          =	 $("#name").val();
			var email         =	 $("#email").val();
		//	var msg_subject   =	 $("#msg_subject").val();
		//	var message       =	 $("#message").val();
		//	var unique_code_string =	 $("#unique_code_string").val();
		//	alert(name);
		//	alert(email);
		//	alert(msg_subject);
		//	alert(message);
			
 			$.ajax({
				type: "POST",
				url: 'ajax/subscribe_mail_submit.php',
				data: { 
	     			email: email,
					 },
				success: function(result) {
							jQuery('#show_processing').hide();					
							$("#mail_sent_success").html("<div class='alert alert-success' role='alert'>You are subscribed us Successfully .</div>");
							jQuery('#email').val('');
							}
					});				
		    	});
					
		    });
	</script><?php */?>
  
  
    
    <!-- Subcribe Section End -->

    <!-- Start Pricing Table Section -->


<div id="Shipping" class="section">
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-lg-12 col-md-12 col-xs-12">
            <div class="subscribe-form">
              <div class="form-wrapper">
                <div class="sub-title text-center">
                  <h3>Shipping Policy</h3>
                  <p style="text-align:justify !important">Sellers incur relatively higher shipping costs on low value items. In such cases, charging a nominal delivery charge helps them offset logistics costs. Please check your order summary to understand the delivery charges for individual products. For Products listed as F-Assured a Rs 40 charge for delivery per item is applied if the order value is less than Rs 500. While, orders of Rs 500 or above are delivered free. It is possible that the Seller or our courier partners have a holiday between the day your placed your order and the date of delivery, which is based on the timelines shown on the product page. In this case, we add a day to the estimated date. Some courier partners and Sellers do not work on Sundays and this is factored in to the delivery dates.</p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

<div id="Return" class="section">
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-lg-12 col-md-12 col-xs-12">
            <div class="subscribe-form">
              <div class="form-wrapper">
                <div class="sub-title text-center">
                  <h3>Return Policy</h3>
                  <p style="text-align:justify !important">All queries are generally replied within 2 business days or 48 hrs and if there is a delay, the customers will be informed, especially in case of any external dependencies like checking with Payment Gateway / Courier partner / or any other agencies, or there are unforeseen events that are beyond our control (e.g. pandemic/ natural disaster) All our products are made using safe ingredients. However, you are requested to do a patch test before using the product and if any irritation or red patches appear, then we advise to discontinue use of the products & contact a dermatologist to understand the problem. (For more details, please refer to our Product Disclaimer page)</p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

<div id="Cancellation" class="section">
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-lg-12 col-md-12 col-xs-12">
            <div class="subscribe-form">
              <div class="form-wrapper">
                <div class="sub-title text-center">
                  <h3>Cancellation Policy</h3>
                  <p style="text-align:justify !important">You may request to cancel your ticket for a full refund, up to 72 hours before the date and time of the event. Cancellations between 25-72 hours before the event may transferred to a different date/time of the same class. Cancellation requests made within 24 hours of the class date/time may not receive a refund nor a transfer. When you register for a class, you agree to these terms. Cancellations made 7 days or more in advance of the event date, will receive a 100% refund. Cancellations made within 3 - 6 days will incur a 20% fee. Cancellations made within 48 hours to the event will incur a 30% fee.</p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

<div id="Refund" class="section">
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-lg-12 col-md-12 col-xs-12">
            <div class="subscribe-form">
              <div class="form-wrapper">
                <div class="sub-title text-center">
                  <h3>Refund Policy</h3>
                  <p style="text-align:justify !important">For the purpose of these Terms of Use, wherever the context so requires "You" or "User" shall mean any natural or legal person who has agreed to become a buyer on the Platform by providing Registration Data while registering on the Platform as Registered User using the computer systems. Flipkart allows the User to surf the Platform or making purchases without registering on the Platform. The term "We", "Us", "Our" shall mean Flipkart Internet Private Limited.</p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

<div id="Privacy" class="section">
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-lg-12 col-md-12 col-xs-12">
            <div class="subscribe-form">
              <div class="form-wrapper">
                <div class="sub-title text-center">
                  <h3>Privacy Policy</h3>
                  <p style="text-align:justify !important">This website does not automatically capture any specific personal information from you (like name, phone number or e-mail address), that allows us to identify you individually. If you choose to provide us with your personal information, like names or addresses, when you visit our website, we use it only to fulfill your request for information. To participate and engage with government through cnelindia requires your registration. Information so collected is used to facilitate interaction. cnelindia gather certain information about the User, such as Internet protocol (IP) address, domain name, browser type, operating system, the date and time of the visit and the pages visited. cnelindia make no attempt to link these addresses with the identity of individuals visiting our site unless an attempt to damage cnelindia has been detected.</p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

<div id="Dispute" class="section">
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-lg-12 col-md-12 col-xs-12">
            <div class="subscribe-form">
              <div class="form-wrapper">
                <div class="sub-title text-center">
                  <h3>Dispute Policy</h3>
                  <p style="text-align:justify !important">A dispute resolution mechanism is an organized process that addresses disputes or grievances that arise between two or more parties involved in business, legal, or societal relationships. Under the Companies Act 1956, there were a number of dispute resolution forums/bodies to provide judicial settlement in a wide range of business issues and the Indian Companies were required to approach these multiple forums for resolving their disputes based on the subject matter in dispute. </p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    
    <div id="terms" class="section">
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-lg-12 col-md-12 col-xs-12">
            <div class="subscribe-form">
              <div class="form-wrapper">
                <div class="sub-title text-center">
                  <h3>General Terms and Conditions</h3>
                  <p style="text-align:justify !important">These Terms of Use constitute a legally binding agreement made between you, whether personally or on behalf of an entity (“you”) and Local Taste ("Company", “we”, “us”, or “our”), concerning your access to and use of the localtaste.com website as well as any other media form, media channel, mobile website or mobile application related, linked, or otherwise connected thereto (collectively, the “Site”). You agree that by accessing the Site, you have read, understood, and agreed to be bound by all of these Terms of Use. IF YOU DO NOT AGREE WITH ALL OF THESE TERMS OF USE, THEN YOU ARE EXPRESSLY PROHIBITED FROM USING THE SITE AND YOU MUST DISCONTINUE USE IMMEDIATELY.</p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- Contact Section Start -->
    <!--<section id="contact" style="padding-top:10%">      
      <div class="contact-form">
        <div class="container">
          <div class="row justify-content-center"> 
            <div class="offset-top">
              <div class="col-lg-12 col-md-12 col-xs-12" id="map-area">
                <div class="contact-block wow fadeInUp" data-wow-delay="0.2s">
                  <div class="section-header" style="margin-top:2%">   
                    <p class="btn btn-subtitle wow fadeInDown" data-wow-delay="0.2s">Contact</p>       
                    <h2 class="section-title">Love to Hear From You</h2>
                  </div>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"> </script>
         <script> 
    		$(document).ready(function() { 
		    
			$("#submit_contact_mail").on('click', function() { 
			jQuery('#show_processing').show();
			alert("dhgshg");
			var name          =	 $("#name").val();
			var email         =	 $("#email").val();
			var msg_subject   =	 $("#msg_subject").val();
			var message       =	 $("#message").val();
			var unique_code_string =	 $("#unique_code_string").val();
			alert(name);
			alert(email);
			alert(msg_subject);
			alert(message);
			
 			$.ajax({
				type: "POST",
				url: 'ajax/contact_mail_submit.php',
				data: { 
	     			name: name,
					email: email,
					msg_subject: msg_subject,
					message: message,
				},
				success: function(result) {
							jQuery('#show_processing').hide();					
							$("#mail_sent_success").html("<div class='alert alert-success' role='alert'>Form Sent successfully.</div>");
							jQuery('#name').val('');
							jQuery('#email').val('');
							jQuery('#msg_subject').val('');
							jQuery('#message').val('');
						}
					});				
		    	});
					
		    });
	</script>
               
                  <form id="contactForm" method="post">
                    <div class="row">
                      <div class="col-md-6">
                        <div class="form-group">
                          <input type="text" class="form-control" id="name" name="name" placeholder="Name" required data-error="Please enter your name">
                          <div class="help-block with-errors"></div>
                        </div>                                 
                      </div>
                      <div class="col-md-6">
                        <div class="form-group">
                          <input type="text" placeholder="Email" name="email" id="email" class="form-control" required data-error="Please enter your email">
                          <div class="help-block with-errors"></div>
                        </div> 
                      </div>
                      <div class="col-md-12">
                        <div class="form-group">
                          <input type="text" placeholder="Subject" name="subject" id="msg_subject" class="form-control" required data-error="Please enter your subject">
                          <div class="help-block with-errors"></div>
                        </div>
                      </div>
                      <div class="col-md-12">
                        <div class="form-group"> 
                          <textarea class="form-control" name="message" id="message" placeholder="Message" rows="7" data-error="Write your message" required></textarea>
                          <div class="help-block with-errors"></div>
                        </div>
                        <div class="submit-button">
                          <button class="btn btn-common btn-effect" name="submit_contact_mail" id="submit_contact_mail" type="button">Submit</button>
                          <div id="msgSubmit" class="h3 hidden"></div>
                          <div class="clearfix"></div>
                         </div>
                         <div id="mail_sent_success" style="margin:2%">
                          </div>
                        </div>
                       
                    </div>            
                  </form>
                </div>
              </div>
            </div> 
          </div>
        </div>
      </div>        
    </section> -->
    <!-- Contact Section End -->

    <!-- Footer Section Start -->
    <footer>
      <!-- Footer Area Start -->
      <section class="footer-Content">
        <div class="container">
          <div class="row">
            <div class="col-lg-3 col-md-6 col-sm-6 col-xs-6 col-mb-12">
              <h2 class="block-title">CnEL India</h2>
              <div class="textwidget">
                <p>Providing a full range of web & mobile app development services for your business. By hiring our highly-skilled and reliable dedicated team, success for your projects is guaranteed. You can immediately set up a dedicated team with us by screening and hiring the developers of your choice.</p>
              </div>
            </div>
            <div class="col-lg-2 col-md-6 col-sm-6 col-xs-6 col-mb-12">
              <div class="widget">
                <h3 class="block-title">Quick Links</h3>
                <ul class="menu">
                  <li><a href="index.php#app-features" class="page-scroll">Services</a></li>
                  <li><a href="index.php#screenshots" class="page-scroll">Portfolio</a></li>
                  <li><a href="index.php#pricing" class="page-scroll">Packages</a></li>
                  <li><a href="index.php#blog" class="page-scroll">Technology</a></li>
                  <li><a href="index.php#team" class="page-scroll">Team</a></li>
                </ul>
              </div>
            </div>
            <div class="col-lg-2 col-md-6 col-sm-6 col-xs-6 col-mb-12">
              <div class="widget">
                <h3 class="block-title">Policies</h3>
                <ul class="menu">
                  <li><a href="#Shipping" class="page-scroll">Shipping Policy</a></li>
                  <li><a href="#Cancellation" class="page-scroll">Cancellation Policy</a></li>
                  <li><a href="#Privacy" class="page-scroll">Privacy Policy</a></li>
                  
                  <li><a href="#Return" class="page-scroll">Return Policy</a></li>
                  <li><a href="#Refund" class="page-scroll">Refund Policy</a></li>
                  <li><a href="#Dispute" class="page-scroll">Dispute Resolution</a></li>
                  <li><a href="#terms" class="page-scroll">General Terms and Conditions</a></li>
                </ul>
              </div>
            </div>
            <div class="col-lg-2 col-md-6 col-sm-6 col-xs-6 col-mb-12">
              <div class="widget">
                <h3 class="block-title">Services</h3>
                <ul class="menu">
                  <li><a href="#app-features" class="page-scroll">Website Development</a></li>
                  <li><a href="#app-features" class="page-scroll">Mobile Application Development</a></li>
                  <li><a href="#app-features" class="page-scroll">Integration</a></li>
                  <li><a href="#app-features" class="page-scroll">Custom Web Development</a></li>
                  <li><a href="#app-features" class="page-scroll">Hosting & Security</a></li>
                  <li><a href="#app-features" class="page-scroll">Support & Maintenance</a></li>
                </ul>
              </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-6 col-xs-6 col-mb-12">
              <div class="widget">
                <h3 class="block-title">Get in touch</h3>
                <ul class="menu" style="color: white;">
                  <li>Pratap Nagar, Sanganer, Jaipur, India 302033</li>
                  <li>+91 9983345001, +1 323 284 5001</li>
                  <li>info@cnelindia.com</li>
                  <li>CnEL India</li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <!-- Copyright Start  -->
        <div class="copyright">
          <div class="container">
            <div class="row">
              <div class="col-md-12">
                <div class="site-info float-left">
                  <p>&copy; 2020 - Designed by <a href="#" rel="nofollow">CnEL India</a></p>
                </div>              
                <div class="float-right">  
                  <ul class="footer-social">
                    <li><a class="facebook" href="#"><i class="lni-facebook-filled"></i></a></li>
                    <li><a class="twitter" href="#"><i class="lni-twitter-filled"></i></a></li>
                    <li><a class="linkedin" href="#"><i class="lni-linkedin-fill"></i></a></li>
                    <li><a class="google-plus" href="#"><i class="lni-google-plus"></i></a></li>
                  </ul> 
                </div>
              </div>
            </div>
          </div>
        </div>
      <!-- Copyright End -->
      </section>
      <!-- Footer area End -->
      
    </footer>
    <!-- Footer Section End --> 

    <!-- Go To Top Link -->
    <a href="#" class="back-to-top">
      <i class="lni-chevron-up"></i>
    </a> 

    <!-- Preloader -->
    <div id="preloader">
      <div class="loader" id="loader-1"></div>
    </div>
    <!-- End Preloader -->
    
    <!------------------current url get--------------------------------->
    
    <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog" style="margin-top: 5%;">
   
        <div class="modal-dialog">
                          
        
          <!-- Modal content-->
          <div class="modal-content" >
            <div class="modal-header">
            <div style="background-color: #729d12;width: 28%;height: 24px;font-size: 21px;line-height: 24px;text-align: center;transform: rotate(-29deg);position: absolute;left: 5px;top: 80px;
    z-index: 10;color: white;" id="modlss">
            <span><b>Valid</b></span>
            </div>
            
             <div style="background-color: #f00;width: 28%;height: 24px;font-size: 21px;line-height: 24px;text-align: center;transform: rotate(-29deg);position: absolute;left: 5px;top: 80px;
    z-index: 10;color: white;" id="invalidmodlss">
            <span><b>Invalid</b></span>
            </div>
            
              <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>
            <div class="modal-body" >
               <div >
                        <div >
                            <img src="team_img/1_invalid_user.jpg" alt=""style="width: 100%;">
                        </div>
                        <div><h2 class='display-4'>Not Found</h2></div>
                </div> 
          </div>   
        </div>
        
         
        
         <!-------------Image Not Found----------------->
          <!--/*<div class="container jumbotron" id="jumbo">
          
          </div> */ -->
      </div>
  </div>
  <style>
  	#myModal
	{
		opacity:1;
	}
  </style>
  <!--------------------------------Modal---------------------------------->  
 


    <!-- jQuery first, then Tether, then Bootstrap JS. -->
    <script src="js/jquery-min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/owl.carousel.js"></script> 
    <script src="js/jquery.mixitup.js"></script>       
    <script src="js/jquery.nav.js"></script>    
    <script src="js/scrolling-nav.js"></script>    
    <script src="js/jquery.easing.min.js"></script>     
    <script src="js/wow.js"></script>   
    <script src="js/jquery.counterup.min.js"></script>     
    <script src="js/nivo-lightbox.js"></script>     
    <script src="js/jquery.magnific-popup.min.js"></script>     
    <script src="js/waypoints.min.js"></script>      
    <script src="js/form-validator.min.js"></script>
    <script src="js/contact-form-script.js"></script>   
    <script src="js/main.js"></script>
    
  </body>
</html>

