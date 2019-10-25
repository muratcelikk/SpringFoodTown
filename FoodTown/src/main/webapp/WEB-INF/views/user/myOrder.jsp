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
    <title>Food | My Order</title>
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

<section class="jl-page-title" style="background-image:url(<c:url value='/resources/img/page-bg.jpg'/>);">
  <div class="container">
  <div class="row">
    <div class="col-md-12">
            <h1>My Order</h1>
            <ul class="bread-crumb clearfix">
                <li><a href='<s:url value="/"></s:url>'>Home</a></li>
                <li>My Order</li>
            </ul>
        </div>
        </div>
        </div>
</section>
<!-- Page Content -->
<section class="jl-page-content margin-100 margin-sm-50">
  <div class="container">  
  <div class="row">
    <div class="col-md-12">
      
      <form >
   <table class="table table-bordered shop-cart margin-bottom-50">
      <thead>
         <tr>
         	<th class="product-quantity text-center">Quantity</th>
            <th class="product-price text-center">Price</th>
            <th class="product-subtotal text-center">Statu</th>
         </tr>
      </thead>
      <tbody>
       <c:if test="${not empty myOrder}">
         <c:forEach items = "${myOrder}" var = "item">
         <tr class="cart_item">
        
        	<td class="product-quantity"><span class="Price-amount">${item.ototalquantity} Piece</span></td>
            <td class="product-price"> <span class="Price-amount">$${item.ototalprize}</span></td>
            <td class="product-subtotal"> <span class="Price-amount">${item.statu}</span></td>
            
         </tr>
         </c:forEach>
            </c:if>
      </tbody>
   </table>
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