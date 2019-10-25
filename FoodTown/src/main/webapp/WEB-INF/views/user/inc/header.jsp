<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<header>
			<div class="jl_blank_nav"></div>
			<div class="jl-menu-wrapper jl_menu_sticky jl_stick">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<div class="jl_header_wrapper">
								<!-- nav toggle button -->
								<button
									class="navbar-toggler collapsed navicon justify-content-end"
									type="button" data-toggle="collapse"
									data-target="#navbarMobile" aria-controls="navbarMobile"
									aria-expanded="false">
									<span></span> <span></span> <span></span>
								</button>
								<!-- Logo-->
								<div class="jl_logo">
									<a href='<s:url value="/"></s:url>'><img
										src="<c:url value="/resources/img/logo.png"></c:url>"></a>
								</div>
								<!-- Menu-->
								<div
									class="navigation_wrapper header-nav navbar-collapse collapse"
									id="navbarMobile">
									<ul id="mainmenu" class="jl_main_menu">
										<li><a href='<s:url value="/menu"></s:url>'>Food Menu</a>
										</li>
										<li><a href='<s:url value="/blog"></s:url>'>Blog</a></li>
										
										<li><a href='<s:url value="/myOrder"></s:url>'>My Order</a></li>
										<li><a href='<s:url value="/contact"></s:url>'>Contact Us</a></li>
									</ul>
								</div>

								<!-- Cart and Reservation-->
								<div class="jl-header-right">
									<a class="jl-header-cart" href='<s:url value="/order"></s:url>'> <span
										class="jl-cart-icon ti-shopping-cart"></span> <span
										class="jl-cart-number"><span>${carts}</span></span>
									</a>
									<div class="jl-top-btn">
									<c:if test="${uid != 0}">
										<a href='<s:url value="/exit"></s:url>'>Exit</a>
									</c:if>
									</div>
									<div class="jl-top-btn">
									<c:choose>
									<c:when test="${uname != null}">
									<a href='<s:url value="/settings"></s:url>'>${uname}</a>
									</c:when>
									<c:otherwise>
									<a href='<s:url value="/login"></s:url>'>Login</a>
									</c:otherwise>
									</c:choose>
									</div>
								</div>

							</div>
						</div>
					</div>
				</div>
			</div>
		</header>