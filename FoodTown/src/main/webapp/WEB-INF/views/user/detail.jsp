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
    <title>Food | Detail</title>
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
<section class="jl-page-title" style="background-image:url(<c:url value="/resources/img/page-bg.jpg"></c:url>);">
  <div class="container">
  <div class="row">
    <div class="col-md-12">
            <h1>Detail</h1>
            <ul class="bread-crumb clearfix">
                <li><a href='<s:url value="/"></s:url>'>Home</a></li>
                <li>Detail</li>
            </ul>
        </div>
        </div>
        </div>
</section>


<section class="jl-page-content blog blog-single blog-standard margin-100 margin-sm-50">
  <div class="container">
  <div class="row product-details">
                                    <div class="image-column col-md-6 col-sm-12">
                                        <figure class="image-box"><img src="${detailPro.pimg}" alt=""></figure>
                                    </div>
                                    <div class="info-column col-md-6 col-sm-12">
                                        <div class="details-header">
                                            <h4>${detailPro.pname}</h4>
                                            <div class="item-price">$${detailPro.pprize}</div>
                                        </div>

                                        <div class="text">${detailPro.pdesc}</div>
                                        <div class="other-options clearfix">
                                        <form action = '<s:url value="/order/${detailPro.pid}"></s:url>' method="post">
                                            <div class="form-group stepper-type">
                     <div class="stepper "><input name = "cartquantity" class="form-control stepper-input" type="number" data-zeros="true" value="1" min="1" max="99"><span class="stepper-arrow up"></span><span class="stepper-arrow down"></span></div>
                  </div>
											
											<div class="col-sm-12 col-md-6 col-lg-6">
                                    			<input type="hidden" class="form-control" value = "${detailPro.pname}" name = "cartproduct">
                                			</div>
                                			<div class="col-sm-12 col-md-6 col-lg-6">
                                    			<input type="hidden" class="form-control" value = "${detailPro.pprize}" name = "cartprize">
                                			</div>
                                			<div class="col-sm-12 col-md-6 col-lg-6">
                                    			<input type="hidden" class="form-control" value = "${detailPro.pimg}" name = "cartimg">
                                			</div>
                                            <button type="submit" class="btn"><span class="btn-title">Add To Cart</span></button>
                                        	</form>
                                        </div>
                                        
                                    </div>
                                </div>
        <div class="row">
    <div class="col-md-12">
      <!--tabs line start-->
                            <section class="round-tabs margin-bottom-50">
                                <ul class="nav nav-pills margin-bottom-20">
                                    <li>
                                        <a class="active" data-toggle="tab" href="#tab-01">Description</a>
                                    </li>
                                    <li class="">
                                        <a data-toggle="tab" href="#tab-02">Reviews</a>
                                    </li>                                    
                                </ul>
                                <div class="panel-body">
                                    <div class="tab-content">
                                        <div id="tab-01" class="tab-pane active">
                                            Nunc placerat mi id nisi interdum mollis. Praesent pharetra, justo ut scelerisque mattis, leo quam aliquet diam, congue laoreet elit metus eget diam. Proin ac metus diam. In quis scelerisque velit. Proin pellentesque neque ut scelerisque dapibus. Praesent
                                            elementum feugiat dignissim. Nunc placerat mi id nisi interdum mollis. Praesent pharetra, justo ut scelerisque mattis, leo quam aliquet diam, congue laoreet elit metus eget diam. Proin ac metus diam. In quis
                                            scelerisque velit. Proin pellentesque neque ut scelerisque dapibus. Praesent elementum feugiat dignissim. Nunc placerat mi id nisi interdum mollis. Praesent pharetra, justo ut scelerisque mattis, leo quam aliquet
                                            diam, congue laoreet elit metus eget diam. Proin ac metus diam.
                                        </div>
                                        <div id="tab-02" class="tab-pane">
                                            <div class="entry-widget entry-comments clearfix">
                    <div class="entry-widget-title">
                        <h4><span class="comments--number">${size}</span> comments</h4>
                    </div>
                    <div class="entry-widget-content">
                        <ul class="comments-list">
                        <c:if test="${not empty fcomment}">
                        <c:forEach items ="${fcomment}" var = "item">
                            <li class="comment-body">
                            	<div class="avatar">
                                    <img src="<c:url value='/resources/img/chef1.jpg'/>" alt="avatar">
                                </div>
                                <div class="comment">
                                    <h6>${item.fcname}</h6>
                                    <p>${item.fcomment}</p>
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
                        <form action='<s:url value="/detail/${detailPro.pid}"></s:url>' method="post" id="post-comment" class="mb-0">
                            <div class="row">
                                <div class="col-sm-12 col-md-6  col-lg-6">
                                    <input type="text" class="form-control" placeholder="Name:" name = "fcname">
                                </div>
                                <div class="col-sm-12 col-md-6 col-lg-6">
                                    <input type="email" class="form-control" placeholder="Email:" name = "fcmail">
                                </div>
                                <div class="col-sm-12 col-md-6 col-lg-6">
                                    <input type="hidden" class="form-control" value = "${detailPro.pid}" name = "fcommentid">
                                </div>
                                <div class="col-sm-12 col-md-12 col-lg-12">
                                    <textarea class="form-control mb-40" rows="2" placeholder="Comment:" name = "fcomment"></textarea>
                                </div>
                                <div class="col-sm-12 col-md-12 col-lg-12">
                                    <button type="submit" class="btn btn--primary btn--inverse">Submit Comment</button>
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