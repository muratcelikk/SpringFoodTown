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
<title>Food | Blog</title>
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
            <h1>Blog</h1>
            <ul class="bread-crumb clearfix">
                <li><a href='<s:url value="/"></s:url>'>Home</a></li>
                <li>Blog</li>
            </ul>
        </div>
        </div>
        </div>
</section>
<section class="jl-page-content blog blog-grid margin-100 margin-sm-50">
  <div class="container">
                <div class="row">
                <c:if test="${not empty blog}">
                <c:forEach items = "${blog}" var = "item">
                    <!-- Blog Entry -->
                    <div class="col-md-6">
                        <div class="blog-entry">
                            <div class="entry--img">
                                <a href='<s:url value="/blogDetail/${item.bid}"></s:url>'>
                                    <img src="${item.bimg}" alt="entry image">
                                </a>
                            </div>
                            <div class="entry--content">
                                <div class="entry--title">
                                    <a href='<s:url value="/blogDetail/${item.bid}"></s:url>'><h4>${item.btitle}</h4></a>
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
                <!-- .row end -->
                
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