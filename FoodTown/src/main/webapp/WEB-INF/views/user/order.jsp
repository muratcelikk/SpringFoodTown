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
    <title>Food | Cart</title>
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
            <h1>Shop Cart</h1>
            <ul class="bread-crumb clearfix">
                <li><a href='<s:url value="/"></s:url>'>Home</a></li>
                <li>Shop Cart</li>
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
      
      <form method="post">
   <table class="table table-bordered shop-cart margin-bottom-50">
      <thead>
         <tr>
            <th class="product-remove">&nbsp;</th>
            <th class="product-thumbnail">&nbsp;</th>
            <th class="product-name">Product</th>
            <th class="product-price text-center">Price</th>
            <th class="product-quantity text-center">Quantity</th>
            <th class="product-subtotal text-center">Total</th>
         </tr>
      </thead>
      <tbody>
       <c:if test="${not empty cart}">
         <c:forEach items = "${cart}" var = "item">
         <tr class="cart_item">
        
            <td class="product-remove"> <a href='<s:url value="/deleteOrder/${ item.cartid }"></s:url>' class="remove"><i class="ti-close"></i></a></td>
            <td class="product-thumbnail"><img src="${item.cartimg}" style = "max-width: 100px;" alt=""></td>
            <td class="product-name"><h5>${item.cartproduct}</h5></td>
            <td class="product-price"> <span class="Price-amount">$${item.cartprize}</span></td>
            <td class="product-quantity">
               <div class="quantity">
                  <div class="form-group stepper-type">
                     <div class="stepper "><input class="form-control stepper-input" type="number" data-zeros="true" value="${item.cartquantity}" min="1" max="99"><span class="stepper-arrow up"></span><span class="stepper-arrow down"></span></div>
                  </div>
               </div>
            </td>
            <td class="product-subtotal"> <span class="Price-amount">$${item.cartprize * item.cartquantity}</span></td>
            
         </tr>
         </c:forEach>
            </c:if>
      </tbody>
   </table>
</form>
<div class="cart-collaterals">
   <div class="cart_totals">
      <h2>Cart totals</h2>
      <table class="shop_table margin-bottom-30">
         <tbody>
            <tr class="order-total">
               <th>Total</th>
               <td data-title="Total"><span class="Price-amount">$ ${total}</span></td>
            </tr>
         </tbody>
      </table>
      <form action = '<s:url value="/orderInsert"></s:url>' method ="post">
      <div class="col-sm-12 col-md-6 col-lg-6">
      	<input type="hidden" class="form-control" value = "${total}" name = "ototalprize">
      </div>
      <div class="col-sm-12 col-md-6 col-lg-6">
      	<input type="hidden" class="form-control" value = "${totalq}" name = "ototalquantity">
      </div>
      <div class="col-sm-12 col-md-6 col-lg-6">
      	<input type="hidden" class="form-control" value = "${userid}" name = "uid">
      </div>
            <div class="col-sm-12 col-md-6 col-lg-6">
      	<input type="hidden" class="form-control" value = "Preparing" name = "statu">
      </div>
      <c:if test="${not empty cart}">
      <button type="submit" class="btn btn--primary btn--inverse">Order</button>
     </c:if>
   	  </form>
   </div>
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