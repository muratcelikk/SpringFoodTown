<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
		<footer>
			<div class="jl-footer-wrapper padding-top-60 padding-bottom-10">
				<div class="container">
					<div class="row">
						<!-- About Us-->
						<div class="col-md-4 margin-bottom-50">
							<div class="footer-widget-area">
								<div class="footer-about">
									<img src="<c:url value="/resources/img/logo_white.png"></c:url>" alt="">
									<p>Etiam consequat sem ullamcorper, euismod metus sit amet,
										tristique justo. Vestibulum mattis, nisi ut faucibus commodo,
										risus ex commodo.</p>
								</div>

								<div class="jl-social-about">
									<ul>
										<li><a href="https://twitter.com/login?lang=tr" target="_self"><span
												class="fab fa-twitter"></span></a></li>
										<li><a href="https://tr-tr.facebook.com" target="_self"><span
												class="fab fa-facebook-f"></span></a></li>
										<li><a href="https://www.instagram.com/?hl=tr" target="_self"><span
												class="fab fa-instagram"></span></a></li>
										<li><a href="https://accounts.google.com/" target="_self"><span
												class="fab fa-google-plus-g"></span></a></li>
									</ul>
								</div>

							</div>
						</div>
						<!-- Contact Info-->
						<div class="col-md-4 margin-bottom-50">
							<div class="footer-widget-area">
								<h3 class="header-widget">Contact info</h3>

								<ul class="contact-list">
									<li><i class="ti-location-pin"></i><span class="txt"><strong>
												Our location: </strong><br> 150 teuk laak 2 near Khan Tuol Kouk,
											Phnom Penh</span></li>
									<li><i class="ti-mobile"></i><span class="txt"><strong>
												Phones: </strong><br> +855-086-8634-836</span></li>
									<li><i class="ti-email"></i><span class="txt"><strong>
												Email: </strong><br> fooddev@info.com</span></li>
								</ul>
							</div>
						</div>
						<!-- Follow Us-->
						<div class="col-md-4 margin-bottom-50">
							<div class="footer-widget-area">
								<h3 class="header-widget">Follow Us</h3>
								<div class="jl-instagram">
									<a href="#"> <span class="instagram-content"> <img
											src="<c:url value="/resources/img/01.jpg"></c:url>" alt=""> <i
											class="fab fa-instagram"></i>
									</span>
									</a> <a href="#"> <span class="instagram-content"> <img
											src="<c:url value="/resources/img/02.jpg"></c:url>" alt=""> <i
											class="fab fa-instagram"></i>
									</span>
									</a> <a href="#"> <span class="instagram-content"> <img
											src="<c:url value="/resources/img/03.jpg"></c:url>" alt=""> <i
											class="fab fa-instagram"></i>
									</span>
									</a> <a href="#"> <span class="instagram-content"> <img
											src="<c:url value="/resources/img/04.jpg"></c:url>" alt=""> <i
											class="fab fa-instagram"></i>
									</span>
									</a> <a href="#"> <span class="instagram-content"> <img
											src="<c:url value="/resources/img/05.jpg"></c:url>" alt=""> <i
											class="fab fa-instagram"></i>
									</span>
									</a> <a href="#"> <span class="instagram-content"> <img
											src="<c:url value="/resources/img/06.jpg"></c:url>" alt=""> <i
											class="fab fa-instagram"></i>
									</span>
									</a> <a href="#"> <span class="instagram-content"> <img
											src="<c:url value="/resources/img/07.jpg"></c:url>" alt=""> <i
											class="fab fa-instagram"></i>
									</span>
									</a> <a href="#"> <span class="instagram-content"> <img
											src="<c:url value="/resources/img/08.jpg"></c:url>" alt=""> <i
											class="fab fa-instagram"></i>
									</span>
									</a>
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>
			<div class="jl-footer-copyright padding-30">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<p class="copyright">Copyright 2019 © Murat Çelik</p>
							<ul class="footer-menu">
								<li><a href='<s:url value="/"></s:url>'>Home</a></li>
								<li><a href='<s:url value="/aboutUs"></s:url>'>About Us</a></li>
								<li><a href='<s:url value="/faq"></s:url>'>FAQ</a></li>
								<li><a href='<s:url value="/policy"></s:url>'>Privacy Policy</a></li>
								<li><a href='<s:url value="/admin/"></s:url>'>Admin</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</footer>