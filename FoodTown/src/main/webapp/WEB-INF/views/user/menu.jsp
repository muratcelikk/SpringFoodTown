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
<title>Food | Food Menu</title>
<!-- Favicon-->
<link rel="icon"
	href='<c:url value="/resources/img/favicon.png"></c:url>'
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
		<section class="jl-page-title"
			style="background-image: url(<c:url value='/resources/img/page-bg.jpg'/>);">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<h1>Food Menu</h1>
						<ul class="bread-crumb clearfix">
							<li><a href='<s:url value="/"></s:url>'>Home</a></li>
							<li>Food Menu</li>
						</ul>
					</div>
				</div>
			</div>
		</section>
		<!-- Page Content -->
		<section
			class="jl-page-content blog blog-grid margin-top-100 margin-bottom-70 margin-sm-top-50 margin-sm-bottom-30">
			<div class="container">
			<div class="row justify-content-center margin-bottom-50">
					<div class="col-md-8 text-center">
						<div class="jl-headding-title">
							<span class="jl-title-info">Alway Tasty Food</span>
							<h2 class="">Burgers</h2>
							<span class="jl-headding-separator"></span>
							<div class="jl-heading-desc">Lorem ipsum dolor sit amet,
								consectetuer adipiscing elit. Aenean commodo ligula eget dolor.
								Aenean massa Cum sociis natoque penatibus.</div>
						</div>
					</div>
				</div>
				<div class="row">
					<c:if test="${not empty burgers}">
						<c:forEach items="${burgers}" var="item">
							<div class="col-md-3 margin-bottom-30">
								<div class="card all-padding-20">
									<a href ='<s:url value="/detail/${item.pid}"></s:url>'><img src="${item.pimg}" class="card-img-top" alt="..."></a>
									<div class="card-body">
										<a href ='<s:url value="/detail/${item.pid}"></s:url>'><h2 class="label-text mb-2">${item.pname}</h2></a>
										<p class="menu-row mb-2">
											<span class="menu-row__name">Special Offer</span> <span
												class="menu-row__dots"></span><span class="menu-row__price">$${item.pprize}</span>
										</p>

									</div>
								</div>
							</div>
						</c:forEach>
					</c:if>

				</div>


			</div>
			<div class="container">
			<div class="row justify-content-center margin-bottom-50">
					<div class="col-md-8 text-center">
						<div class="jl-headding-title">
							<span class="jl-title-info">Alway Tasty Food</span>
							<h2 class="">Pizzas</h2>
							<span class="jl-headding-separator"></span>
							<div class="jl-heading-desc">Lorem ipsum dolor sit amet,
								consectetuer adipiscing elit. Aenean commodo ligula eget dolor.
								Aenean massa Cum sociis natoque penatibus.</div>
						</div>
					</div>
				</div>
				
				<div class="row">
					<c:if test="${not empty pizzas}">
						<c:forEach items="${pizzas}" var="item">
							<div class="col-md-3 margin-bottom-30">
								<div class="card all-padding-20">
									<a href ='<s:url value="/detail/${item.pid}"></s:url>'><img src="${item.pimg}" class="card-img-top" alt="..."></a>
									<div class="card-body">
										<a href ='<s:url value="/detail/${item.pid}"></s:url>'><h2 class="label-text mb-2">${item.pname}</h2></a>
										<p class="menu-row mb-2">
											<span class="menu-row__name">Special Offer</span> <span
												class="menu-row__dots"></span><span class="menu-row__price">$${item.pprize}</span>
										</p>

									</div>
								</div>
							</div>
						</c:forEach>
					</c:if>

				</div>
				
				</div>
				
				<div class="container">
			<div class="row justify-content-center margin-bottom-50">
					<div class="col-md-8 text-center">
						<div class="jl-headding-title">
							<span class="jl-title-info">Alway Tasty Food</span>
							<h2 class="">Vegatarians</h2>
							<span class="jl-headding-separator"></span>
							<div class="jl-heading-desc">Lorem ipsum dolor sit amet,
								consectetuer adipiscing elit. Aenean commodo ligula eget dolor.
								Aenean massa Cum sociis natoque penatibus.</div>
						</div>
					</div>
				</div>
				
				<div class="row">
					<c:if test="${not empty vegatarians}">
						<c:forEach items="${vegatarians}" var="item">
							<div class="col-md-3 margin-bottom-30">
								<div class="card all-padding-20">
									<a href ='<s:url value="/detail/${item.pid}"></s:url>'><img src="${item.pimg}" class="card-img-top" alt="..."></a>
									<div class="card-body">
										<a href ='<s:url value="/detail/${item.pid}"></s:url>'><h2 class="label-text mb-2">${item.pname}</h2></a>
										<p class="menu-row mb-2">
											<span class="menu-row__name">Special Offer</span> <span
												class="menu-row__dots"></span><span class="menu-row__price">$${item.pprize}</span>
										</p>

									</div>
								</div>
							</div>
						</c:forEach>
					</c:if>

				</div>
				
				</div>
				
				<div class="container">
			<div class="row justify-content-center margin-bottom-50">
					<div class="col-md-8 text-center">
						<div class="jl-headding-title">
							<span class="jl-title-info">Alway Tasty Food</span>
							<h2 class="">Drinks</h2>
							<span class="jl-headding-separator"></span>
							<div class="jl-heading-desc">Lorem ipsum dolor sit amet,
								consectetuer adipiscing elit. Aenean commodo ligula eget dolor.
								Aenean massa Cum sociis natoque penatibus.</div>
						</div>
					</div>
				</div>
				
				<div class="row">
					<c:if test="${not empty drinks}">
						<c:forEach items="${drinks}" var="item">
							<div class="col-md-3 margin-bottom-30">
								<div class="card all-padding-20">
									<a href ='<s:url value="/detail/${item.pid}"></s:url>'><img src="${item.pimg}" class="card-img-top" alt="..."></a>
									<div class="card-body">
										<a href ='<s:url value="/detail/${item.pid}"></s:url>'><h2 class="label-text mb-2">${item.pname}</h2></a>
										<p class="menu-row mb-2">
											<span class="menu-row__name">Special Offer</span> <span
												class="menu-row__dots"></span><span class="menu-row__price">$${item.pprize}</span>
										</p>

									</div>
								</div>
							</div>
						</c:forEach>
					</c:if>

				</div>
				
				</div>
				
				<div class="container">
			<div class="row justify-content-center margin-bottom-50">
					<div class="col-md-8 text-center">
						<div class="jl-headding-title">
							<span class="jl-title-info">Alway Tasty Food</span>
							<h2 class="">Deserts</h2>
							<span class="jl-headding-separator"></span>
							<div class="jl-heading-desc">Lorem ipsum dolor sit amet,
								consectetuer adipiscing elit. Aenean commodo ligula eget dolor.
								Aenean massa Cum sociis natoque penatibus.</div>
						</div>
					</div>
				</div>
				
				<div class="row">
					<c:if test="${not empty deserts}">
						<c:forEach items="${deserts}" var="item">
							<div class="col-md-3 margin-bottom-30">
								<div class="card all-padding-20">
									<a href ='<s:url value="/detail/${item.pid}"></s:url>'><img src="${item.pimg}" class="card-img-top" alt="..."></a>
									<div class="card-body">
										<a href ='<s:url value="/detail/${item.pid}"></s:url>'><h2 class="label-text mb-2">${item.pname}</h2></a>
										<p class="menu-row mb-2">
											<span class="menu-row__name">Special Offer</span> <span
												class="menu-row__dots"></span><span class="menu-row__price">$${item.pprize}</span>
										</p>

									</div>
								</div>
							</div>
						</c:forEach>
					</c:if>

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