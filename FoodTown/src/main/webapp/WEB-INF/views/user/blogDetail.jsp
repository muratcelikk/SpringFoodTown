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
<title>Food | Blog Detail</title>
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
            <h1>Blog Detail</h1>
            <ul class="bread-crumb clearfix">
                <li><a href='<s:url value="/"></s:url>'>Home</a></li>
                <li>Blog Detail</li>
            </ul>
        </div>
        </div>
        </div>
</section>
<section class="jl-page-content blog blog-single blog-standard margin-100 margin-sm-50">
  <div class="container">
  <div class = "row">
  <div class = "col-8 mx-auto">
                <!-- Blog Entry -->
                <div class="blog-entry">
                    <div class="entry--img">
                            <img src="${detailBlog.bimg}" alt="entry image">
                    </div>                    
                    <div class="entry--meta-container">
                        <div class="entry--meta-comment">Comments: <span class="color-theme">2</span></div>
                        <div class="entry--title">
                            <h4>${detailBlog.btitle}</h4>
                        </div>
                    </div> 
                    
                    <div class="entry--content clearfix">
                        <div class="entry--bio">
                            <p>${detailBlog.barticle}</p>
                        </div>

                        <div class="entry--share">
                            <span class="share--title">Share</span>
                            <a href="http://jellyster.com/html/fooddev/blog-single.html#"><i class="fab fa-facebook-f"></i></a>
                            <a href="http://jellyster.com/html/fooddev/blog-single.html#"><i class="fab fa-twitter"></i></a>
                            <a href="http://jellyster.com/html/fooddev/blog-single.html#"><i class="fab fa-pinterest-p"></i></a>
                            <a href="http://jellyster.com/html/fooddev/blog-single.html#"><i class="fab fa-linkedin-in"></i></a>
                        </div>
                        
                    </div>
                </div>

                <div class="entry-widget entry-comments clearfix">
                    <div class="entry-widget-title">
                        <h4><span class="comments--number">${size}</span> comments</h4>
                    </div>
                    <div class="entry-widget-content">
                        <ul class="comments-list">
                        <c:if test="${not empty bcomment}">
                        <c:forEach items ="${bcomment}" var = "item">
                            <li class="comment-body">
                            	<div class="avatar">
                                    <img src="<c:url value='/resources/img/chef1.jpg'/>" alt="avatar">
                                </div>
                                <div class="comment">
                                    <h6>${item.bcname}</h6>
                                    <p>${item.bcomment}</p>
                                </div>
                            </li>
							</c:forEach>
							</c:if>
                        </ul>
                    </div>
                </div>

                <div class="entry-widget entry-add-comment mb-0 clearfix">
                    <div class="entry-widget-title">
                        <h4>Leave A Reply</h4>
                    </div>
                    <div class="entry-widget-content">
                        <form action='<s:url value="/blogDetail/${detailBlog.bid}"></s:url>' method="post" id="post-comment" class="mb-0">
                            <div class="row">
                                <div class="col-sm-12 col-md-6  col-lg-6">
                                    <input type="text" class="form-control" placeholder="Name:" name = "bcname">
                                </div>
                                <div class="col-sm-12 col-md-6 col-lg-6">
                                    <input type="email" class="form-control" placeholder="Email:" name = "bcmail">
                                </div>
                                <div class="col-sm-12 col-md-12 col-lg-12">
                                    <textarea class="form-control mb-40" rows="2" placeholder="Comment:" name = "bcomment"></textarea>
                                </div>
                                <div class="col-sm-12 col-md-6 col-lg-6">
                                    <input type = "hidden" name = "bcommentid" value="${detailBlog.bid}">
                                </div>
                                <div class="col-sm-12 col-md-12 col-lg-12">
                                    <button type="submit" class="btn btn-rounded">Submit Comment</button>
                                </div>
                            </div>
                        </form>
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