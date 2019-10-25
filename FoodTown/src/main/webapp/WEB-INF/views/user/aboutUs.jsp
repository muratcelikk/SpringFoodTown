<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
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
<title>Food | About Us</title>
<!-- Favicon-->
<link rel="icon" href="<c:url value="/resources/img/favicon.png"></c:url>"
	type="image/x-icon">
<!-- Stylesheets-->
<c:import url="/user/css"></c:import>
</head>
<c:import url="/user/header"></c:import>
<body class="wow-animation">
<div id="page-loader">
        <div class="cssload-container">
          <div class="cssload-speeding-wheel"></div>
        </div>
      </div>
	<div class="site" id="page">

<!-- Page Header -->        
<section class="jl-page-title" style="background-image:url(<c:url value='/resources/img/page-bg.jpg'/>);">
  <div class="container">
  <div class="row">
    <div class="col-md-12">
            <h1>About Us</h1>
            <ul class="bread-crumb clearfix">
                <li><a href='<s:url value="/"></s:url>'>Home</a></li>
                <li>About Us</li>
            </ul>
        </div>
        </div>
        </div>
</section>

<section class="jl-page-content margin-100 margin-sm-50">
  <div class="container">
<div class="row">
<div class="col-md-3 margin-bottom-100 margin-sm-bottom-30">
                                <div class="fun-factor text-center">
                                    <div class="icon">
                                        <i class="foodicon-coffee-2 color-red"></i>
                                    </div>
                                    <div class="fun-info">
                                        <h1 class="timer" data-from="0" data-to="363" data-speed="2000">363</h1>
                                        <span>Best Food</span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 margin-bottom-100 margin-sm-bottom-30">
                                <div class="fun-factor text-center">
                                    <div class="icon">
                                        <i class="foodicon-toast color-red"></i>
                                    </div>
                                    <div class="fun-info">
                                        <h1 class="timer" data-from="0" data-to="239" data-speed="2000">239</h1>
                                        <span>Good Eat</span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 margin-bottom-100 margin-sm-bottom-30">
                                <div class="fun-factor text-center">
                                    <div class="icon">
                                        <i class="foodicon-cup-cake-2 color-red"></i>
                                    </div>
                                    <div class="fun-info">
                                        <h1 class="timer" data-from="0" data-to="127" data-speed="2000">127</h1>
                                        <span>Nice And Sweet</span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 margin-bottom-100">
                                <div class="fun-factor text-center">
                                    <div class="icon">
                                        <i class="foodicon-salad-1 color-red"></i>
                                    </div>
                                    <div class="fun-info">
                                        <h1 class="timer" data-from="0" data-to="127" data-speed="2000">127</h1>
                                        <span>Fresh And Chili</span>
                                    </div>
                                </div>
                            </div>
</div> 
<div class="row margin-bottom-80 justify-content-center flex-lg-row-reverse">
            <div class="col-md-6 margin-bottom-50">
              <h4 class="wow-outer wow slideInDown margin-bottom-20" style="visibility: visible; animation-name: slideInDown;">About Our Restaurant</h4>
              <p class="wow-outer wow slideInDown" style="visibility: visible; animation-name: slideInDown;">Donec vehicula luctus nunc in laoreet. Aliquam erat volutpat. Suspendisse vulputate porttitor condimentum. Proin viverra orci a leo suscipit placerat. Sed feugiat posuere semper. Cras vitae mi erat.</p>
              <p class="wow-outer wow slideInDown" style="visibility: visible; animation-name: slideInDown;">Posuere mollis arcu Pellentesque iaculis gravida nulla ac hendrerit. Vestibulum faucibus neque at lacus tristique eu ultrices ipsum mollis. Phasellus venenatis, lacus in malesuada pellentesque, nisl ipsum faucibus velit, et eleifend velit nulla a mi. Praesent pharetra semper purus, a vehicula massa interdum in.</p>
              <div class="wow-outer margin-top-30"><a class="btn btn-lg wow slideInDown" href="http://jellyster.com/html/fooddev/about-us.html#" style="visibility: visible; animation-name: slideInDown;">Find Out More</a></div>
            </div>
            <div class="col-md-6 wow-outer"><img class="img-responsive wow slideInLeft" src="<c:url value="/resources/img/about-us.jpg"></c:url>" alt="" style="visibility: visible; animation-name: slideInLeft;">
            </div>
          </div>

         
  <div class="row justify-content-center margin-bottom-50">
<div class="col-md-8 text-center">
<div class="jl-headding-title">
<span class="jl-title-info">Alway Tasty Food</span>
<h2 class="">Our Professional Chef</h2>
<span class="jl-headding-separator"></span> 
<div class="jl-heading-desc">
            Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa Cum sociis natoque penatibus.</div>
</div>
</div>
</div>

<div class="row margin-bottom-100">
            <!-- Member -->
            <div class="col-md-3 margin-sm-bottom-30">
                <div class="member">
                    <div class="member-img">
                        <img src="<c:url value="/resources/img/chef1.jpg"></c:url>" alt="member">
                        <div class="member-overlay">
                            <div class="member-social">
                                <a href="http://jellyster.com/html/fooddev/about-us.html#"><i class="fab fa-facebook-f"></i></a>
                                <a href="http://jellyster.com/html/fooddev/about-us.html#"><i class="fab fa-twitter"></i></a>
                                <a href="http://jellyster.com/html/fooddev/about-us.html#"><i class="fab fa-linkedin-in"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="member-info">
                        <h5>Martin James</h5>
                        <h6>Professional Chef</h6>
                    </div>
                </div>
            </div>
            <!-- Member -->
            <div class="col-md-3 margin-sm-bottom-30">
                <div class="member">
                    <div class="member-img">
                        <img src="<c:url value="/resources/img/chef2.jpg"></c:url>" alt="member">
                        <div class="member-overlay">
                            <div class="member-social">
                                <a href="http://jellyster.com/html/fooddev/about-us.html#"><i class="fab fa-facebook-f"></i></a>
                                <a href="http://jellyster.com/html/fooddev/about-us.html#"><i class="fab fa-twitter"></i></a>
                                <a href="http://jellyster.com/html/fooddev/about-us.html#"><i class="fab fa-linkedin-in"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="member-info">
                        <h5>Flores Ingram</h5>
                        <h6>Professional Chef</h6>
                    </div>
                </div>
            </div>
            <!-- Member -->
            <div class="col-md-3 margin-sm-bottom-30">
                <div class="member">
                    <div class="member-img">
                        <img src="<c:url value="/resources/img/chef3.jpg"></c:url>" alt="member">
                        <div class="member-overlay">
                            <div class="member-social">
                                <a href="http://jellyster.com/html/fooddev/about-us.html#"><i class="fab fa-facebook-f"></i></a>
                                <a href="http://jellyster.com/html/fooddev/about-us.html#"><i class="fab fa-twitter"></i></a>
                                <a href="http://jellyster.com/html/fooddev/about-us.html#"><i class="fab fa-linkedin-in"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="member-info">
                        <h5>Lorry den</h5>
                        <h6>Professional Chef</h6>
                    </div>
                </div>
            </div>
            <!-- Member -->
            <div class="col-md-3">
                <div class="member">
                    <div class="member-img">
                        <img src="<c:url value="/resources/img/chef4.jpg"></c:url>" alt="member">
                        <div class="member-overlay">
                            <div class="member-social">
                                <a href="http://jellyster.com/html/fooddev/about-us.html#"><i class="fab fa-facebook-f"></i></a>
                                <a href="http://jellyster.com/html/fooddev/about-us.html#"><i class="fab fa-twitter"></i></a>
                                <a href="http://jellyster.com/html/fooddev/about-us.html#"><i class="fab fa-linkedin-in"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="member-info">
                        <h5>Marko Smith</h5>
                        <h6>Professional Chef</h6>
                    </div>
                </div>
            </div>
            </div>
            <div class="row">
            <!-- Member -->
            <div class="col-md-3 margin-sm-bottom-30">
                <div class="member">
                    <div class="member-img">
                        <img src="<c:url value="/resources/img/chef5.jpg"></c:url>" alt="member">
                        <div class="member-overlay">
                            <div class="member-social">
                                <a href="http://jellyster.com/html/fooddev/about-us.html#"><i class="fab fa-facebook-f"></i></a>
                                <a href="http://jellyster.com/html/fooddev/about-us.html#"><i class="fab fa-twitter"></i></a>
                                <a href="http://jellyster.com/html/fooddev/about-us.html#"><i class="fab fa-linkedin-in"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="member-info">
                        <h5>Flores Ingram</h5>
                        <h6>Professional Chef</h6>
                    </div>
                </div>
            </div>
            <!-- Member -->
            <div class="col-md-3 margin-sm-bottom-30">
                <div class="member">
                    <div class="member-img">
                        <img src="<c:url value="/resources/img/chef6.jpg"></c:url>" alt="member">
                        <div class="member-overlay">
                            <div class="member-social">
                                <a href="http://jellyster.com/html/fooddev/about-us.html#"><i class="fab fa-facebook-f"></i></a>
                                <a href="http://jellyster.com/html/fooddev/about-us.html#"><i class="fab fa-twitter"></i></a>
                                <a href="http://jellyster.com/html/fooddev/about-us.html#"><i class="fab fa-linkedin-in"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="member-info">
                        <h5>Flores Ingram</h5>
                        <h6>Professional Chef</h6>
                    </div>
                </div>
            </div>
            <!-- Member -->
            <div class="col-md-3 margin-sm-bottom-30">
                <div class="member">
                    <div class="member-img">
                        <img src="<c:url value="/resources/img/chef7.jpg"></c:url>" alt="member">
                        <div class="member-overlay">
                            <div class="member-social">
                                <a href="http://jellyster.com/html/fooddev/about-us.html#"><i class="fab fa-facebook-f"></i></a>
                                <a href="http://jellyster.com/html/fooddev/about-us.html#"><i class="fab fa-twitter"></i></a>
                                <a href="http://jellyster.com/html/fooddev/about-us.html#"><i class="fab fa-linkedin-in"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="member-info">
                        <h5>Flores Ingram</h5>
                        <h6>Professional Chef</h6>
                    </div>
                </div>
            </div>
            <!-- Member -->
            <div class="col-md-3 margin-sm-bottom-30">
                <div class="member">
                    <div class="member-img">
                        <img src="<c:url value="/resources/img/chef8.jpg"></c:url>" alt="member">
                        <div class="member-overlay">
                            <div class="member-social">
                                <a href="http://jellyster.com/html/fooddev/about-us.html#"><i class="fab fa-facebook-f"></i></a>
                                <a href="http://jellyster.com/html/fooddev/about-us.html#"><i class="fab fa-twitter"></i></a>
                                <a href="http://jellyster.com/html/fooddev/about-us.html#"><i class="fab fa-linkedin-in"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="member-info">
                        <h5>Flores Ingram</h5>
                        <h6>Professional Chef</h6>
                    </div>
                </div>
            </div>


        </div>
</div>
</section>

<section class="jl-bg-image padding-100 margin-top-80" style="background-image: url(<c:url value='/resources/img/bg-menu-7.jpg'/>);">
<div class="container">  
  <div class="row justify-content-center margin-bottom-50">
<div class="col-md-8 text-center">
<div class="jl-headding-title">
<span class="jl-title-info">Alway Tasty Food</span>
<h2 class="">Our Best Menu</h2>
<span class="jl-headding-separator"></span> 
<div class="jl-heading-desc">
           Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa Cum sociis natoque penatibus.</div>
</div>
</div>
</div>

  <div class="row">
    <div class="col-md-6">    
<div class="menu-holder menu-1col starters">
    <div class="menu-post clearfix">
        <div class="menu-post-desc">
            <h4><span class="menu-title"><span>Pizza Ai Quattro</span></span> <span class="menu-dots"></span><span class="menu-price">$92.00</span></h4>
            <div class="menu-text">ingredients 1 / ingredients 2 / ingredients 3</div>
        </div>
    </div>
    <div class="menu-post clearfix">
        <div class="menu-post-desc">
            <h4><span class="menu-title"><span>Pizza Veronese</span></span> <span class="menu-dots"></span><span class="menu-price">$27.00</span></h4>
            <div class="menu-text">ingredients 1 / ingredients 2 / ingredients 3</div>
        </div>
    </div>
    <div class="menu-post clearfix">
        <div class="menu-post-desc">
            <h4><span class="menu-title"><span>Pizza Marinara</span></span> <span class="menu-dots"></span><span class="menu-price">$25.00</span></h4>
            <div class="menu-text">ingredients 1 / ingredients 2 / ingredients 3</div>
        </div>
    </div>
    <div class="menu-post clearfix">
        <div class="menu-post-desc">
            <h4><span class="menu-title"><span>Pizza Alla Napoletana</span></span> <span class="menu-dots"></span><span class="menu-price">$29.00</span></h4>
            <div class="menu-text">ingredients 1 / ingredients 2 / ingredients 3</div>
        </div>
    </div>
</div>
</div>

<div class="col-md-6">
<div class="menu-holder menu-1col starters">
    <div class="menu-post clearfix">
        <div class="menu-post-desc">
            <h4><span class="menu-title"><span>Whiskey King Burger</span></span> <span class="menu-dots"></span><span class="menu-price">$14.00</span></h4>
            <div class="menu-text">ingredients 1 / ingredients 2 / ingredients 3</div>
        </div>
    </div>
    <div class="menu-post clearfix">
        <div class="menu-post-desc">
            <h4><span class="menu-title"><span>Double Animal Style</span></span> <span class="menu-dots"></span><span class="menu-price">$17.00</span></h4>
            <div class="menu-text">ingredients 1 / ingredients 2 / ingredients 3</div>
        </div>
    </div>
    <div class="menu-post clearfix">
        <div class="menu-post-desc">
            <h4><span class="menu-title"><span>Le Pigeon Burger</span></span> <span class="menu-dots"></span><span class="menu-price">$15.00</span></h4>
            <div class="menu-text">ingredients 1 / ingredients 2 / ingredients 3</div>
        </div>
    </div>
    <div class="menu-post clearfix">
        <div class="menu-post-desc">
            <h4><span class="menu-title"><span>Luger Burger</span></span> <span class="menu-dots"></span><span class="menu-price">$19.00</span></h4>
            <div class="menu-text">ingredients 1 / ingredients 2 / ingredients 3</div>
        </div>
    </div>
</div>
</div>
</div>
    </div>
</section>
</div>

		<!-- Footer-->
		<c:import url="/user/footer"></c:import>
	<div id="go-top">
		<i class="ti-angle-up"></i>
	</div>
	<!-- Javascript-->
	<c:import url="/user/js"></c:import>
	
</body>

</html>