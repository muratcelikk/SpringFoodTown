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
<title>Food | Home</title>
<!-- Favicon-->
<link rel="icon" href="<c:url value="/resources/img/favicon.png"></c:url>"
	type="image/x-icon">
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
		
		<c:import url="/user/header"></c:import>
		<!-- Slider-->
		<section>
			<div class="jl-main-slider">
				<div class="slide"
					style="background-image: url(<c:url value='/resources/img/slider-1.jpg'/>);">
					<div class="container">
						<div class="row">
							<div class="col col-md-6 slide-caption">
								<div class="slide-title">
									<span class="jl-title-info">Alway Tasty Food</span>
									<h2>Fast & Delicious</h2>
								</div>
								<div class="slide-subtitle">
									<p>Lorem ipsum dolor sit amet, consectetuer adipiscing
										elit. Aenean commodo ligula eget dolor. Aenean massa. Cum
										sociis natoque penatibus et magnis dis parturient montes.</p>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="slide"
					style="background-image: url(<c:url value='/resources/img/slider-2.jpg'/>);">

					<div class="container">
						<div class="row">
							<div class="col col-lg-6 slide-caption">

								<div class="slide-title">
									<span class="jl-title-info">Alway Tasty Food</span>
									<h2>Fresh & hot</h2>
								</div>
								<div class="slide-subtitle">
									<p>Mauris mattis auctor cursus. Phasellus tellus tellus,
										imperdiet ut imperdiet eu, iaculis a sem. Donec vehicula
										luctus nunc in laoreet. Aliquam erat volutpat.</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- Feature box -->
		<section class="jl-feature-box padding-top-80 padding-sm-top-50">
			<div class="container">
				<div class="row">
					<div class="col-md-6 wow-outer">
						<div
							class="feature-box-img feature-box-large bg-red color-white wow fadeInUp delay-01"
							style="background-image: url(<c:url value='/resources/img/feature-box1.jpg'/>);">
							<div class="feature-box-title">
								<h5>Try It Today</h5>
								<h4>Most Popular Pizza</h4>
							</div>
						</div>
					</div>

					<div class="col-md-6 wow-outer">
						<div
							class="feature-box-img feature-box-small bg-red color-white wow fadeInUp delay-01"
							style="background-image: url(<c:url value='/resources/img/feature-box2.jpg'/>);">
							<div class="feature-box-title">
								<h5>Try It Today</h5>
								<h4>More Fun More Taste</h4>
							</div>
						</div>
						<div
							class="feature-box-img feature-box-small bg-red color-white wow fadeInUp delay-01"
							style="background-image: url(<c:url value='/resources/img/feature-box3.jpg'/>);">
							<div class="feature-box-title">
								<h5>Try It Today</h5>
								<h4>Fresh And Chili</h4>
							</div>
						</div>
					</div>

				</div>
			</div>
		</section>

		<!-- Food Menu -->
		<section
			class="jl-food-menu padding-top-50 padding-bottom-80 padding-sm-top-20 padding-sm-bottom-50">
			<div class="container">
				<div class="row justify-content-center margin-bottom-50">
					<div class="col-md-8 text-center">
						<div class="jl-headding-title">
							<span class="jl-title-info">Alway Tasty Food</span>
							<h2 class="">Choose & enjoy</h2>
							<span class="jl-headding-separator"></span>
							<div class="jl-heading-desc">Lorem ipsum dolor sit amet,
								consectetuer adipiscing elit. Aenean commodo ligula eget dolor.
								Aenean massa Cum sociis natoque penatibus.</div>
						</div>
					</div>
				</div>

				<div class="row">
					<div class="col-md-12">
						<ul class="jl-food-nav-tab nav nav-tabs margin-bottom-30">
							<li class="nav-item"><a data-toggle="tab" href="#menu1"
								class="active"><i class="foodicon-burger"></i>Burgers</a></li>
							<li class="nav-item"><a data-toggle="tab" href="#menu2"><i
									class="foodicon-pizza-slice"></i>Pizzas</a></li>
							<li class="nav-item"><a data-toggle="tab" href="#menu3"><i
									class="foodicon-salad-1"></i>Vegetarian</a></li>
							<li class="nav-item"><a data-toggle="tab" href="#menu4"><i
									class="foodicon-lemonade"></i>Soft drinks</a></li>
							<li class="nav-item"><a data-toggle="tab" href="#menu5"><i
									class="foodicon-cupcake-1"></i>Desserts</a></li>
						</ul>


						
						<div class="tab-content jl-tab-content">
							<div id="menu1" class="tab-pane active">
								<div class="jl-food-carousel slick-slider" data-arrows="true"
									data-loop="true" data-dots="true" data-swipe="true"
									data-items="1" data-xs-items="1" data-sm-items="2"
									data-md-items="3" data-lg-items="3" data-xl-items="5">
									<c:if test="${not empty burgers}">
									<c:forEach items = "${burgers}" var = "item">
									<div class="col-md-4 jl-item-carousel">
										<figure>
											<img src="<c:url value="${item.pimg}"></c:url>" alt="">
										</figure>
										<div class="caption">
											<h5>
												<a class="link link-default" href='<s:url value="/detail/${item.pid}"></s:url>'>${item.pname}
												</a>
											</h5>
											<p class="text-italic">${item.pdesc}</p>
											<p class="price">$${item.pprize}</p>
											<a class="btn margin-top-15" href='<s:url value="/detail/${item.pid}"></s:url>'>Order
												Now</a>
										</div>
									</div>
									</c:forEach>
									</c:if>
									</div>
								</div>
							
							<div id="menu2" class="tab-pane">
								<div class="jl-food-carousel slick-slider" data-arrows="true"
									data-loop="true" data-dots="true" data-swipe="true"
									data-items="1" data-xs-items="1" data-sm-items="2"
									data-md-items="3" data-lg-items="3" data-xl-items="5">
									<c:if test="${not empty pizzas}">
									<c:forEach items = "${pizzas}" var = "item">
									<div class="col-md-4 jl-item-carousel">
										<figure>
											<img src="<c:url value="${item.pimg}"></c:url>" alt="">
										</figure>
										<div class="caption">
											<h5>
												<a class="link link-default" href='<s:url value="/detail/${item.pid}"></s:url>'>${item.pname}
												</a>
											</h5>
											<p class="text-italic">${item.pdesc}</p>
											<p class="price">$${item.pprize}</p>
											<a class="btn margin-top-15" href='<s:url value="/detail/${item.pid}"></s:url>'>Order
												Now</a>
										</div>
									</div>
									</c:forEach>
									</c:if>
								</div>
							</div>
							
							<div id="menu3" class="tab-pane">
								<div class="jl-food-carousel slick-slider" data-arrows="true"
									data-loop="true" data-dots="true" data-swipe="true"
									data-items="1" data-xs-items="1" data-sm-items="2"
									data-md-items="3" data-lg-items="3" data-xl-items="5">
									<c:if test="${not empty vegatarians}">
									<c:forEach items = "${vegatarians}" var = "item">
									<div class="col-md-4 jl-item-carousel">
										<figure>
											<img src="<c:url value="${item.pimg}"></c:url>" alt="">
										</figure>
										<div class="caption">
											<h5>
												<a class="link link-default" href='<s:url value="/detail/${item.pid}"></s:url>'>${item.pname}
												</a>
											</h5>
											<p class="text-italic">${item.pdesc}</p>
											<p class="price">$${item.pprize}</p>
											<a class="btn margin-top-15" href='<s:url value="/detail/${item.pid}"></s:url>'>Order
												Now</a>
										</div>
									</div>
									</c:forEach>
									</c:if>
								</div>
							</div>

							<div id="menu4" class="tab-pane">
								<div class="jl-food-carousel slick-slider" data-arrows="true"
									data-loop="true" data-dots="true" data-swipe="true"
									data-items="1" data-xs-items="1" data-sm-items="2"
									data-md-items="3" data-lg-items="3" data-xl-items="5">
									<c:if test="${not empty drinks}">
									<c:forEach items = "${drinks}" var = "item">
									<div class="col-md-4 jl-item-carousel">
										<figure>
											<img src="<c:url value="${item.pimg}"></c:url>" alt="">
										</figure>
										<div class="caption">
											<h5>
												<a class="link link-default" href='<s:url value="/detail/${item.pid}"></s:url>'>${item.pname}
												</a>
											</h5>
											<p class="text-italic">${item.pdesc}</p>
											<p class="price">$${item.pprize}</p>
											<a class="btn margin-top-15" href='<s:url value="/detail/${item.pid}"></s:url>'>Order
												Now</a>
										</div>
									</div>
									</c:forEach>
									</c:if>
								</div>
							</div>

							<div id="menu5" class="tab-pane">
								<div class="jl-food-carousel slick-slider" data-arrows="true"
									data-loop="true" data-dots="true" data-swipe="true"
									data-items="1" data-xs-items="1" data-sm-items="2"
									data-md-items="3" data-lg-items="3" data-xl-items="5">
									<c:if test="${not empty deserts}">
									<c:forEach items = "${deserts}" var = "item">
									<div class="col-md-4 jl-item-carousel">
										<figure>
											<img src="<c:url value="${item.pimg}"></c:url>" alt="">
										</figure>
										<div class="caption">
											<h5>
												<a class="link link-default" href='<s:url value="/detail/${item.pid}"></s:url>'>${item.pname}
												</a>
											</h5>
											<p class="text-italic">${item.pdesc}</p>
											<p class="price">$${item.pprize}</p>
											<a class="btn margin-top-15" href='<s:url value="/detail/${item.pid}"></s:url>'>Order
												Now</a>
										</div>
									</div>
									</c:forEach>
									</c:if>
								</div>
							</div>

						</div>
					</div>
				</div>
			</div>
		</section>

		<!-- Food Blog -->
		<section
			class="jl-food-blog padding-top-80 padding-bottom-30 padding-sm-top-50 padding-sm-bottom-0">
			<div class="container">
				<div class="row justify-content-center margin-bottom-50">
					<div class="col-md-8 text-center">
						<div class="jl-headding-title">
							<span class="jl-title-info">Alway Tasty Food</span>
							<h2 class="">Food Latest News</h2>
							<span class="jl-headding-separator"></span>
							<div class="jl-heading-desc">Lorem ipsum dolor sit amet,
								consectetuer adipiscing elit. Aenean commodo ligula eget dolor.
								Aenean massa Cum sociis natoque penatibus.</div>
						</div>
					</div>
				</div>
				<div class="row blog-grid wow-outer">
					<!-- Blog Entry -->
					<c:if test="${not empty blog}">
					<c:forEach items = "${blog}" var = "item">
					<div class="col-md-4 wow fadeInUp">
					
						<div class="blog-entry">
							<div class="entry--img">
								<a href='<s:url value="/blogDetail/${item.bid}"></s:url>'> <img src="${item.bimg}"
									alt="">
								</a>
							</div>
							<div class="entry--content">
								<div class="entry--title">
									<h4>
										<a href='<s:url value="/blogDetail/${item.bid}"></s:url>'>${item.btitle}</a>
									</h4>
								</div>
								<div class="entry--bio">
									<p>${item.bdesc}</p>
								</div>
								<div class="entry--more">
									<a href='<s:url value="/blogDetail/${item.bid}"></s:url>'>Read More</a>
								</div>
							</div>
						</div>
						
					</div>
					</c:forEach>
						</c:if>
					

				</div>
			</div>
		</section>



		<!-- Testimonial -->
		<section class="padding-80 padding-sm-50">
			<div class="container">
				<div class="row justify-content-center margin-bottom-50">
					<div class="col-md-8 text-center">
						<div class="jl-headding-title">
							<span class="jl-title-info">Alway Tasty Food</span>
							<h2 class="">Happy Customers</h2>
							<span class="jl-headding-separator"></span>
							<div class="jl-heading-desc">Lorem ipsum dolor sit amet,
								consectetuer adipiscing elit. Aenean commodo ligula eget dolor.
								Aenean massa Cum sociis natoque penatibus.</div>
						</div>
					</div>
				</div>

				<div class="row">
					<div class="col-md-12">
						<div class="jl-testimonial multi-col">
							<div class="jl-testimonial-slide" data-arrows="false"
								data-loop="true" data-dots="true" data-swipe="true"
								data-items="1" data-xs-items="1" data-sm-items="1"
								data-md-items="1" data-lg-items="3" data-xl-items="3">
								<c:if test="${not empty comment}">
								<c:forEach items = "${comment}" var = "item">
								<div class="slide">
									<div class="testimonial-item">
								<div class="testimonial-image">
                        		<img src="<c:url value='/resources/img/chef1.jpg'/>" alt="">
                    			</div>
										<div class="testimonial-content">“${item.fcomment}”</div>
										<div class="testimonial-meta">
											<h3 class="testimonial-title">${item.fcname}</h3>
											<span class="testimonial-position">Guest</span>
										</div>
									</div>
								</div>
								</c:forEach>
								</c:if>
								
									
								
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- Footer-->
		<c:import url="/user/footer"></c:import>
	</div>
	<div id="go-top">
		<i class="ti-angle-up"></i>
	</div>
	<!-- Javascript-->
	<c:import url="/user/js"></c:import>
	
</body>
</html>