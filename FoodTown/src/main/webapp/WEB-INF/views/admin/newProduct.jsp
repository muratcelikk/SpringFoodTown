<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>AdminLTE 3 | Product</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  
  <c:import url="/admin/css"></c:import>
  

</head>
<body class="hold-transition sidebar-mini layout-fixed">
<div class="wrapper">

 <c:import url="/admin/menu"></c:import>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
   <c:import url="/admin/header"></c:import>
    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        
	        <div class = "row">
	        <div class = "col-sm-9 mx-auto">
	        <div class="card card-primary">
              <div class="card-header">
                <h3 class="card-title">New Product</h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <form action='<s:url value="/admin/productInsert"></s:url>' method="post" role="form">
                <div class="card-body">
                
                <div class="form-group">
                    <label for="exampleInputName">Name</label>
                    <input name="pname" type="text" class="form-control" id="exampleInputName" placeholder="Name" required="required">
                  </div>
                <div class="form-group">
                    <label for="exampleInputImage">Image</label>
                    <input name="pimg" type="text" class="form-control" id="exampleInputImage" placeholder="Image(URL)" required="required">
                  </div>
                  <div class="form-group">
                    <label for="exampleInputPrize">Prize</label>
                    <input name="pprize" type="text" class="form-control" id="exampleInputPrize" placeholder="Prize" required="required">
                  </div>
                  <div class="form-group">
                    <label for="exampleInputDesc">Description</label>
                    <input name="pdesc" type="text" class="form-control" id="exampleInputDesc" placeholder="Desc" required="required">
                  </div>
                  <div class="form-group">
                        <label>Category</label>
                        <select name="cid" class="form-control">
                        <c:if test="${not empty catpro}">
                        <c:forEach items="${catpro}"  var="item">
                          <option value="${item.cid }">${item.cname}</option>
                        </c:forEach>
                        </c:if>
                        </select>
                      </div>
                </div>

                <div class="card-footer">
                  <button type="submit" class="btn btn-primary">Submit</button>
                </div>
              </form>
            </div>
        	</div>
        	</div>
        	</div>
    </section>
  </div>
  <c:import url="/admin/footer"></c:import>

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->

<c:import url="/admin/js"></c:import>

</body>
</html>
