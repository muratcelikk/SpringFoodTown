<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

 <!-- Main Sidebar Container -->
  <aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href='<s:url value="/"></s:url>' class="brand-link">
      <img src="<c:url value="/resources/img/logo_white.png"></c:url>" 
           style="opacity: .8; max-height: 50px; max-width: 150px; margin-left: 40px;">
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
		<div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="image">
          <img src="<c:url value="/resources/img/user2-160x160.jpg"></c:url>" class="img-circle elevation-2" alt="User Image">
        </div>
        <div class="info">
          <a href="#" class="d-block">    ${name}</a>
        </div>
      </div>
      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
          <li class="nav-item has-treeview">
            <a href="#" class="nav-link active">
              <i class="nav-icon fas fa-tachometer-alt"></i>
              <p>
                Dashboard
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href='<s:url value="/admin/dashboard"></s:url>' class="nav-link ${link == 'dashboard'? 'active':'' } ">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Admin Home</p>
                </a>
              </li>
            </ul>
          </li>
                    <li class="nav-item has-treeview">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-user-tie"></i>
              <p>
                Admin
                <i class="fas fa-angle-left right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href='<s:url value="/admin/adminRegister"></s:url>' class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Registration</p>
                </a>
              </li>
              <li class="nav-item">
                <a href='<s:url value="/admin/adminList"></s:url>' class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>List</p>
                </a>
              </li>
            </ul>
          </li>
          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-user"></i>
              <p>
                User
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href='<s:url value="/admin/userRegister"></s:url>' class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Registration</p>
                </a>
              </li>
              <li class="nav-item">
                <a href='<s:url value="/admin/userList"></s:url>' class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>List</p>
                </a>
              </li>
            </ul>
          </li>
          <li class="nav-item has-treeview">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-tree"></i>
              <p>
                Products
                <i class="fas fa-angle-left right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href='<s:url value="/admin/newProduct"></s:url>' class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>New Product</p>
                </a>
              </li>
              <li class="nav-item">
                <a href='<s:url value="/admin/productList"></s:url>' class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Product List</p>
                </a>
              </li>
            </ul>
          </li>
          <li class="nav-item has-treeview">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-blog"></i>
              <p>
                Blog
                <i class="fas fa-angle-left right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href='<s:url value="/admin/newBlog"></s:url>' class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>New Article</p>
                </a>
              </li>
              <li class="nav-item">
                <a href='<s:url value="/admin/blogList"></s:url>' class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Article List</p>
                </a>
              </li>
            </ul>
          </li>
          <li class="nav-item has-treeview">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-pen-alt"></i>
              <p>
                Comments
                <i class="fas fa-angle-left right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href='<s:url value="/admin/foodComment"></s:url>' class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Food Comments</p>
                </a>
              </li>
              <li class="nav-item">
                <a href='<s:url value="/admin/blogComment"></s:url>' class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Blog Comments</p>
                </a>
              </li>
            </ul>
          </li>
          <li class="nav-item has-treeview">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-id-card"></i>
              <p>
                Contact
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href='<s:url value="/admin/contactList"></s:url>' class="nav-link ">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Contact List</p>
                </a>
              </li>
            </ul>
          </li>
          <li class="nav-item has-treeview">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-pizza-slice"></i>
              <p>
                Order
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href='<s:url value="/admin/orderList"></s:url>' class="nav-link ">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Order List</p>
                </a>
              </li>
            </ul>
          </li>
          <li class="nav-item">
            <a href='<s:url value="/admin/exit"></s:url>' class="nav-link">
              <i class="nav-icon fas fa-sign-out-alt"></i>
              <p>Exit</p>
            </a>
          </li>
        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>