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

      .section p{
        margin-top: 0.5rem;
      }

      .terms{
        margin-top: 1.5rem !important;
        font-size: 17px !important;
      }

      .bold{
        margin-top: 1.5rem !important;
        font-size: 17px !important;
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
                  
                  <p style="text-align:justify !important">CnELIndia ships its products to almost all parts of World. Orders placed will be shipped within 24* hrs. We ship on all days except Sunday and National Holidays.</p> 
                  <p style="text-align:justify !important">For all areas serviced by reputed couriers, the delivery time would be within 3 to 4 business days of shipping (business days exclude Sundays and other holidays). For other areas the products will be shipped through and may take 1-2 weeks depending on location. At times there might be unexpected delays in the delivery of your order due to unavoidable and undetermined logistics challenges beyond our control for which CnELIndia is not liable and would request its users to cooperate as CnELIndia continuously tries to nought such instances. Also, CnELIndia reserves the right to cancel your order at its sole discretion in cases where it takes longer than usual delivery time or the shipment is physically untraceable and refund the amount paid for cancelled product(s) to your source account.</p> 

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

                  <p style="text-align:justify !important">Once we receive your item, we will inspect it and notify you that we have received your returned item. We will immediately notify you on the status of your refund after inspecting the item. </p>
                  <p style="text-align:justify !important">If your return is approved, we will initiate a refund to your credit card (or original method of payment).</p>
                  <p style="text-align:justify !important">You will receive the credit within a certain amount of days, depending on your card issuer's policies.</p>
                  <p style="text-align:justify !important">We accept returns. You can return unopened items in the original packaging within 30 days of your purchase with receipt or proof of purchase. If 30 days or more have passed since your purchase, we cannot offer you a refund or an exchange.</p>
                  <p style="text-align:justify !important">Upon receipt of the returned item, we will fully examine it and notify you via email, within a reasonable period of time, whether you are entitled to a return. If you are entitled to a return, we will refund your purchase price and a credit will automatically be applied to your original method of payment.</p>
                  <p style="text-align:justify !important">Only regular priced items may be refunded. Sale items are non-refundable.</p>

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

                  <p style="text-align:justify !important">Please note an order can only be canceled within 24 hours of placing the order. Once the order is processed after 24 hours, no cancellation request will be entertained.However return is possible for all orders/products.</p> 
                  <b style="color:#fff;" class="bold">OR</b>
                  <p style="text-align:justify !important">Customers can CANCEL order only before the Order has been shipped/Dispatched. After the Product/s have been shipped, The Customer CANNOT Cancel the Orders. However return  is possible for all orders/products.</p> 

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

                  <p style="text-align:justify !important">Product /Payment must be returned to us within 4-5 working days from the date it has been delivered to the customer. Product must be returned with all tags attached in its original condition along with all packing material, courier receipt, invoice & other papers.</p> 
                  <p style="text-align:justify !important" class="bold"><b>Refund</b></p> 
                  <p style="text-align:justify !important">Once the Product is received to the company successfully, CnElIndia will instantly initiate the refund to your source account or chosen method of refund within 4-5working days. </p> 
                  <p style="text-align:justify !important" class="bold"><b>Refund and Cancellation for Service Provider Company</b></p> 
                  <p style="text-align:justify !important">Due to service providers in nature “NO REFUND”,“NO CANCELLATION” will be entertained once the Payment has been made.</p> 

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

                  <p style="text-align:justify !important">The Personal Information is used for two general purposes: to process your order, and to provide you with the best possible services. Unless otherwise stated explicitly, this policy applies to personal information as disclosed on any of the media.</p>
                  <p style="text-align:justify !important">In furtherance of the confidentiality with which we treat Personal Information, we have put in place appropriate physical, electronic, and managerial procedures to safeguard and secure the information we collect online. We use data collection devices such as "cookies" on certain pages of the Site to help and analyze our web page flow, measure promotional effectiveness, and promote trust and safety. "Cookies" are small files placed on your hard drive that assist us in providing our services. We offer certain features that are only available through the use of a "cookie". Cookies can also help us provide information that is targeted to your interests. Most cookies are "session cookies," which means that they are automatically deleted from your hard drive at the end of a session. You are always free to decline our cookies if your browser permits. Additionally, you may encounter "cookies" or other similar devices on certain pages of the Site that are placed by third parties. For example, if you view a web page created by a user, there may be a "cookie" placed within that web page. We do not control the use of cookies by third parties.</p>
                  <p style="text-align:justify !important">You acknowledge that you are disclosing Personal Information voluntarily. We identify and use your IP address to help diagnose problems with our server, and to administer our Website. Your IP address is also used to help identify you and to gather broad demographic information.</p>
                  <p style="text-align:justify !important">We also use third party information from third party sources to enable us deliver advertising. These sources are validated by Third party, and not by us.</p>

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
                  <h3>Dispute Resolution</h3>

                  <p style="text-align:justify !important">Both parties of the Dispute case can elect to have their dispute arbitrated by the Dispute Team. The role of the Dispute Team extends to making all actions necessary to resolve the case in an impartial and evidential manner.</p> 
                  <p style="text-align:justify !important" class="bold"><b>Buyers</b></p> 
                  <p style="text-align:justify !important">Once a dispute is opened, a Buyer is given 14 days to respond to it. Otherwise, they will automatically lose the dispute and the pending Payment will be transferred to the Seller's account. </p> 
                  <p style="text-align:justify !important" class="bold"><b>Sellers</b></p> 
                  <p style="text-align:justify !important">Once a dispute is opened, a Seller is given 4 days to respond to it. Otherwise, they will automatically lose the dispute and the pending Payment will be returned to the Buyer's account. </p> 

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

                  <p style="text-align:justify !important" class="terms"><b>TERMS & CONDITIONS</b></p>
                  <p style="text-align:justify !important">Thank you for accessing/shopping at info@cnelindia.com. This site is owned by CnELIndia (www.cnelindia.com ). By accessing, shopping on this site, you indicate your unconditional acceptance of these terms & conditions. We reserve this right, in our sole discretion, to update or revise these terms & conditions. Continued use of the site following the posting of any changes to the ‘terms & conditions’, constitutes your acceptance of those changes. At CnELIndia we try our best to create a space where you can explore and shop for all your favorite things in a safe and secure environment. All products and information displayed on CnELIndia constitutes an "invitation to offer". “www.cnelindia.com” reserves the right to accept or reject your offer. Your order for purchase constitutes your "offer" which shall be subject to the terms and conditions as listed below.</p>
                  <p style="text-align:justify !important" class="terms"><b>1. Membership</b></p>
                  <p style="text-align:justify !important">Although it's not essential to have an account to shop with “www.cnelindia.com”, you can shop as a guest. As a member, you agree to provide true, accurate, current, and complete information about yourself as prompted by the site's registration form. Registration where prohibited under any law shall be void. “www.cnelindia.com” reserves the right to revoke or terminate your registration for any reason at any time, without notice.</p>
                  <p style="text-align:justify !important" class="terms"><b>2. Electronic Communications</b></p>
                  <p style="text-align:justify !important">When you use the site or send emails or other data, information or communicate to us, you agree and understand that you are communicating with us electronically and give your consent to receive communications electronically from us periodically, when required.</p>
                  <p style="text-align:justify !important" class="terms"><b>3. Reviews, Feedback, Submissions</b></p>
                  <p style="text-align:justify !important">All reviews, comments, feedback, postcards, suggestions, ideas, and other submissions disclosed, submitted or offered to “www.cnelindia.com ” directly or otherwise disclosed, submitted or offered in connection with your use of this Site (collectively referred to "Comments") will remain “---Website URL----” property. Such disclosure, submission or offer of any comments shall constitute an assignment to “www.cnelindia.com ” of all worldwide rights, titles and interests in all copyrights and other intellectual properties in the comments,thus, it exclusively owns all such rights, titles and interests and shall not be limited in any way in its use, commercial or otherwise. “www.cnelindia.com” will be entitled to use, reproduce, disclose, modify, adapt, create derivative works from, publish, display and distribute any comments you submit for any purpose whatsoever, without restriction and without compensating you in any way. “www.cnelindia.com” is and shall be under no obligation (1) to maintain any Comments in confidence; or (2) to pay you any compensation for any Comments; or (3) to respond to any Comments. You agree that any comments submitted by you to the Site will not violate this policy or any right of any third party, including copyright, trademark, privacy or other personal or proprietary right(s), and will not cause injury to any person or entity. You further agree that no comments submitted by you to the site will be libelous or otherwise unlawful, threatening, abusive or obscene material, or contain software viruses, political campaigning, commercial solicitation, chain letters, mass mailings or any form of "spam".</p>
                  <p style="text-align:justify !important">“www.cnelindia.com ” does not regularly review posted comments, but does reserve the right (but not the obligation) to monitor and edit or remove any comment submitted to the Site. You grant “www.cnelindia.com ” the right to use the name that you submit in connection with any of the posted comments. You agree not to use a false email address, impersonate any person or entity, or otherwise mislead as to the origin of any Comments you submit. You are and shall remain solely responsible for the content of any comments you make and you agree to indemnify “www.cnelindia.com ” and its affiliates for all claims resulting from any Comments you submit, we take no responsibility and assume no liability for any comments submitted by you or any third party.</p>
                  <p style="text-align:justify !important" class="terms"><b>4. Accuracy of Content/ Information of Products on the Web Site</b></p>
                  <p style="text-align:justify !important">While “www.cnelindia.com ” strives to provide accurate product and pricing information, typographical errors may occur. In the event that a product is listed at an incorrect price or with incorrect information due to an error in pricing or product information, “www.cnelindia.com” shall have the right, on our sole discretion, to modify the price of the products, or information of the products or to refuse or cancel any orders placed for that product, unless the product has already been dispatched. In the event.</p>

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

