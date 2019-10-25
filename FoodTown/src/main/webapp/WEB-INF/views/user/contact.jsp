<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="author" content="">
    <meta name="description" content="">
    <meta name="keywords" content="">
    <!-- Title-->
    <title>Food | Contact Us</title>
    <!-- Favicon-->
    <link rel="icon" href="img/favicon.png" type="image/x-icon">
    <!-- Stylesheets-->    
    <c:import url="/user/css"></c:import>
</head>
<body class="wow-animation">
  <div id="page-loader">
        <div class="cssload-container">
          <div class="cssload-speeding-wheel"></div>
        </div>
      </div>
    <div class="site" id="page">
        <!-- Header-->
<c:import url="/user/header"></c:import>
<!-- Page Header -->        
<section class="jl-page-title" style="background-image:url(<c:url value="/resources/img/page-bg.jpg"></c:url>);">
  <div class="container">
  <div class="row">
    <div class="col-md-12">
            <h1>Contact Us</h1>
            <ul class="bread-crumb clearfix">
                <li><a href='<s:url value="/"></s:url>'>Home</a></li>
                <li>Contact Us</li>
            </ul>
        </div>
        </div>
        </div>
</section>
<!-- Page Content -->
<section class="jl-page-content blog blog-grid margin-top-100 margin-sm-top-50 margin-bottom-0">
  <div class="container">
  <div class="row justify-content-center">

  </div>

  <div class="row">
                        <div class="col-md-4 margin-bottom-100 margin-sm-bottom-50">
                            <div class="featured-item text-center">
                                <div class="icon bottom-border">
                                    <i class="foodicon-signboard color-white bg-yellow"></i>
                                </div>
                                <div class="title">
                                    <h4>Our best menu</h4>
                                </div>
                                <div class="desc">
                                    Donec vehicula luctus nunc in laoreet. Aliquam erat volutpat. Suspendisse vulputate porttitor condimentum. Proin viverra orci a leo.

                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 margin-bottom-100 margin-sm-bottom-50">
                            <div class="featured-item text-center">
                                <div class="icon bottom-border">
                                    <i class="foodicon-dinner-table color-white bg-yellow"></i>
                                </div>
                                <div class="title">
                                    <h4>Reservation</h4>
                                </div>
                                <div class="desc">
                                    Donec vehicula luctus nunc in laoreet. Aliquam erat volutpat. Suspendisse vulputate porttitor condimentum. Proin viverra orci a leo.

                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 margin-bottom-100 margin-sm-bottom-50">
                            <div class="featured-item text-center">
                                <div class="icon bottom-border">
                                    <i class="foodicon-support color-white bg-yellow"></i>
                                </div>
                                <div class="title">
                                    <h4>Need support</h4>
                                </div>
                                <div class="desc">
                                   Donec vehicula luctus nunc in laoreet. Aliquam erat volutpat. Suspendisse vulputate porttitor condimentum. Proin viverra orci a leo.

                                </div>
                            </div>
                        </div>

                        
                    </div>



<div class="row margin-bottom-100 margin-sm-bottom-50">
                    <div class="col-lg-4 col-md-12 margin-sm-bottom-50">
                        <div class="leave-your-message">
                            <h3>Leave Your Message</h3>
                            <p>Vestibulum faucibus neque at lacus tristique eu ultrices ipsum mollis. Phasellus venenatis, lacus in malesuada pellentesque</p>
              
              <div class="stay-connected">
                <h3>Stay Connected</h3>
                <ul class="contact-list">
          <li><i class="ti-location-pin"></i><span class="txt"><strong> Our location: </strong><br> 150 teuk laak 2 near Khan Tuol Kouk, Phnom Penh</span></li>
          <li><i class="ti-mobile"></i><span class="txt"><strong> Phones: </strong><br> +855-086-836-863<br> +855-086-8634-836</span></li>
          <li><i class="ti-email"></i><span class="txt"><strong> Email: </strong><br> myemail@example.com</span></li>
        </ul>
              </div>
                        </div>
                    </div>

                    <div class="col-lg-8 col-md-12">
                        <form action = '<s:url value="/contactInsert"></s:url>' method ="post" id="contactForm" class="padding-left-100">
                            <div class="row">
                                <div class="col-lg-6 col-md-6">
                                    <div class="form-group">
                                        <input name = "contactname" type="text" placeholder="Your Name" class="form-control" name="name" id="name" required="">
                                        <div class="help-block with-errors"></div>
                                    </div>
                                </div>
                                
                                <div class="col-lg-6 col-md-6">
                                    <div class="form-group">
                                        <input name = "contactmail" type="email" placeholder="Your Email" class="form-control" name="email" id="email" required="">
                                        <div class="help-block with-errors"></div>
                                    </div>
                                </div>
                                
                                <div class="col-lg-6 col-md-6">
                                    <div class="form-group">
                                        <input name = "contactsubject" type="text" placeholder="Your Subject" class="form-control" name="msg_subject" id="msg_subject" required="">
                                        <div class="help-block with-errors"></div>
                                    </div>
                </div>
                
                <div class="col-lg-6 col-md-6">
                                    <div class="form-group">
                                        <input name = "contactphone" type="text" placeholder="Your Phone Number" class="form-control" name="phone_number" id="phone_number" required="">
                                        <div class="help-block with-errors"></div>
                                    </div>
                                </div>
                                
                                <div class="col-lg-12 col-md-12">
                                    <div class="form-group">
                                        <textarea name="contactmessage" placeholder="Your Message" class="form-control" id="message" cols="30" rows="4" required=""></textarea>
                                    </div>
                                </div>
                                
                                <div class="col-lg-12 col-md-12">
                                    <button type="submit" class="btn-rounded btn">Send Message</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>



        </div>


</section>

<c:import url="/user/footer"></c:import>
    </div>
    <div id="go-top"><i class="ti-angle-up"></i></div>
    <!-- Javascript-->
    <c:import url="/user/js"></c:import>       
</body>
</html>