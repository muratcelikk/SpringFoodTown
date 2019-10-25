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
    <title>Food | Register</title>
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
            <h1>Register</h1>
            <ul class="bread-crumb clearfix">
                <li><a href='<s:url value="/"></s:url>'>Home</a></li>
                <li>Register</li>
            </ul>
        </div>
        </div>
        </div>
</section>



<section class="jl-page-content margin-100 margin-sm-50">
  <div class="container">
  <div class = "row">
      <div class = "mx-auto">
      <c:if test="${ not empty error }">
      	<p>${ error }</p>
      </c:if>
      </div>
      </div>
  <div class="row">
    <div class="col-md-12">
<div class="login-form">
                <form action='<s:url value="/userRegister"></s:url>' method="post">
                    <div class="login-form-body">
                        <div class="form-gp">
                            <label for="full-name">Full Name</label>
                            <input min="8" name = "uname" type="text" id="full-name" required="required">
                            <i class="ti-user"></i>
                        </div>
                        <div class="form-gp">
                            <label for="email">Email address</label>
                            <input name = "umail" type="email" id="email" required="required">
                            <i class="ti-email"></i>
                        </div>
                        <div class="form-gp">
                            <label for="password">Password</label>
                            <input min="5" max="16" name = "upass" type="password" id="password" required="required">
                            <i class="ti-lock"></i>
                        </div>
                        <div class="form-gp">
                            <label min="5" max="16" for="password">Confirm Password</label>
                            <input name = "upass2" type="password" id="password2" required="required">
                            <i class="ti-lock"></i>
                        </div>
                        <div class="submit-btn-area">
                            <button id="form_submit" type="submit" class="btn btn-rounded btn-full">Submit</button>
                        </div>
                    </div>
                </form>
            </div>
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