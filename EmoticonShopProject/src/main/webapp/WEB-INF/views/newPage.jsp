<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
  <!-- Basic Page Needs
  ================================================== -->
  <meta charset="utf-8">
  <title>이모티콘샵</title>
  
  <!-- Favicon -->
  <link rel="shortcut icon" type="image/x-icon" href="resources/images/favicon.png" />
  
  <!-- Themefisher Icon font -->
  <link rel="stylesheet" href="resources/plugins/themefisher-font/style.css">
  <!-- bootstrap.min css -->
  <link rel="stylesheet" href="resources/plugins/bootstrap/css/bootstrap.min.css">
  
  <!-- Animate css -->
  <link rel="stylesheet" href="resources/plugins/animate/animate.css">
  <!-- Slick Carousel -->
  <link rel="stylesheet" href="resources/plugins/slick/slick.css">
  <link rel="stylesheet" href="resources/plugins/slick/slick-theme.css">
  
  <!-- Main Stylesheet -->
  <link rel="stylesheet" href="resources/css/style.css">
</head>
<body id="body">
	<div id="wrap">
<!-- Start Top Header Bar -->
<section class="top-header">
	<div class="container">
		<div class="row">
			<div class="col-md-4 col-xs-12 col-sm-4"></div>
			<div class="col-md-4 col-xs-12 col-sm-4">
				<!-- Site Logo -->
				<div class="logo text-center">
					<a href="index">
						<!-- replace logo here -->
						<svg width="210px" height="30px" viewBox="0 0 300 30" version="1.1" xmlns="http://www.w3.org/2000/svg"
							xmlns:xlink="http://www.w3.org/1999/xlink">
							<g id="Page-1" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd" font-size="41"
								font-family="AustinBold, Austin" font-weight="bold">
								<g id="Group" transform="translate(-108.000000, -297.000000)" fill="#000000">
									<text id="AVIATO">
										<tspan x="108.94" y="325">Emoticon<tspan font-weight="500">Shop</tspan></tspan>
									</text>
								</g>
							</g>
						</svg>
					</a>
				</div>
			</div>
			<div class="col-md-4 col-xs-12 col-sm-4">
				
				<!-- Cart -->
				<ul class="top-menu text-right list-inline">
					<!-- Admin -->
					<li>
						<a href="adminpage">Admin</a>
					</li><!-- / Admin -->
					<!-- Search -->
					<li class="dropdown search dropdown-slide">
						<a href="#!" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown"  style="font-size: medium;"><i
								class="tf-ion-ios-search-strong"></i>&nbsp;Search</a>
						<ul class="dropdown-menu search-dropdown">
							<li>
								<form action="post"><input type="search" class="form-control" placeholder="이모티콘 검색"></form>
							</li>
						</ul>
					</li><!-- / Search -->
					<!-- My -->
					<!-- session null일 경우 login page로 이동-->
					<!--
						<li class="dropdown cart-nav dropdown-slide">
						<a href="login.jsp" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown"><i
							class="tf-ion-android-person"></i>&nbsp;My</a>
					 -->
					 <li class="dropdown profile-nav dropdown-slide">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown"  style="font-size: medium;"><i
								class="tf-ion-android-person"></i>&nbsp;My</a>
						<div class="dropdown-menu profile-dropdown">
							<!-- info -->
							<div class="media">
								<div class="media-body">
									<div class="profile">
										<h4>홍길동</h4>
									</div>
									<h5>korea123@gmail.com</h5>
								</div>
							</div><!-- / info -->
							<ul class="text-center profile-buttons">
								<li><a href="#" class="btn btn-small" style="font-size: small;">MyPage</a></li>
								<li><a href="#" class="btn btn-small btn-solid-border" style="font-size: small;">Logout</a></li>
							</ul>
						</div>
					</li><!-- / My -->

				</ul><!-- / .nav .navbar-nav .navbar-right -->
			</div>
			

		</div>
	</div>
</section><!-- End Top Header Bar -->


<!-- Main Menu Section -->
<section class="menu">
	<nav class="navbar navigation">
		<div class="container">
			<div class="navbar-header">
				<h2 class="menu-title">메인 메뉴</h2>
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
					aria-expanded="false" aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>

			</div><!-- / .navbar-header -->

			<!-- Navbar Links -->
			<div id="navbar" class="navbar-collapse collapse text-center">
					<ul class="nav navbar-nav">
						<!-- Home -->
						<li class="home-tab">
							<a href="index" style="font-size: large;color: gray;">홈</a>
						</li><!-- / Home -->
						<!-- 신규 -->
						<li class="new-tab">
							<a href="newpage"  data-delay="350" style="font-size: large;text-decoration: underline;text-underline-offset: 8px;text-decoration-thickness: 2px;">신규</a>
						</li><!-- / 신규 -->
						<!-- 인기 -->
						<li class="popular-tab">
							<a href="poppage"  data-delay="350" style="font-size: large;color: gray;">인기</a>
						</li><!-- / 인기 -->
					</ul><!-- / .nav .navbar-nav -->
				</div>
			<!--/.navbar-collapse -->
		</div><!-- / .container -->
	</nav>
</section>
<!-- banner  -->
<div class="new-banner">
        <img src="resources/images/newbanner.png"  width="100%" height="auto"/>
</div>

	<div id="content-wrap">
	<!-- main section -->
	<section class="main section">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="title text-center">
						<ul class="list_new"> <!--첫번째 신규 이모티콘 시작-->
							<li class>
								<div class="link_new new_tit">
									<a class="link_new" href="#">
										<div class="area_tit">
											<strong class="tit_product">
												<span class="txt_tit">첫번째 신규 이모티콘</span>
											</strong>
										</div>
									</a>
								</div>
								<a class="link_new new_img" aria-label="토끼 이모티콘" href="#">
									<ul class="area_newemoticon">
										<li>
											<img src="resources/emoticon/1/rabbit1.png">
										</li>
										<li>
											<img src="resources/emoticon/1/rabbit2.png">
										</li>
										<li>
											<img src="resources/emoticon/1/rabbit3.png">
										</li>
										<li>
											<img src="resources/emoticon/1/rabbit4.png">
										</li>
									</ul>
								</a>
							</li><!--첫번째 신규 이모티콘 끝-->
							<li class> <!--두번째 신규 이모티콘 시작-->
								<div class="link_new new_tit">
									<a class="link_new" href="#">
										<div class="area_tit">
											<strong class="tit_product">
												<span class="txt_tit">두번째 신규 이모티콘</span>
											</strong>
										</div>
									</a>
								</div>
								<a class="link_new new_img" aria-label="동그리 이모티콘" href="#">
									<ul class="area_newemoticon">
										<li>
											<img src="resources/emoticon/2/dongueri1.png">
										</li>
										<li>
											<img src="resources/emoticon/2/dongueri2.png">
										</li>
										<li>
											<img src="resources/emoticon/2/dongueri3.png">
										</li>
										<li>
											<img src="resources/emoticon/2/dongueri4.png">
										</li>
									</ul>
								</a>
							</li><!--두번째 신규 이모티콘 끝-->
							<li class> <!-- 세번째 신규 이모티콘 시작-->
								<div class="link_new new_tit">
									<a class="link_new" href="#">
										<div class="area_tit">
											<strong class="tit_product">
												<span class="txt_tit">세번째 신규 이모티콘</span>
											</strong>
										</div>
									</a>
								</div>
								<a class="link_new new_img" aria-label="강아지 이모티콘" href="#">
									<ul class="area_newemoticon">
										<li>
											<img src="resources/emoticon/3/dog1.png">
										</li>
										<li>
											<img src="resources/emoticon/3/dog2.png">
										</li>
										<li>
											<img src="resources/emoticon/3/dog3.png">
										</li>
										<li>
											<img src="resources/emoticon/3/dog4.png">
										</li>
									</ul>
								</a>
							</li><!-- 세번째 신규 이모티콘 끝-->
							<li class> <!-- 네번째 신규 이모티콘 시작-->
								<div class="link_new new_tit">
									<a class="link_new" href="#">
										<div class="area_tit">
											<strong class="tit_product">
												<span class="txt_tit">네번째 신규 이모티콘</span>
											</strong>
										</div>
									</a>
								</div>
								<a class="link_new new_img" aria-label="빵빵이 이모티콘" href="#">
									<ul class="area_newemoticon">
										<li>
											<img src="resources/emoticon/4/bbangbbange1.png">
										</li>
										<li>
											<img src="resources/emoticon/4/bbangbbange2.png">
										</li>
										<li>
											<img src="resources/emoticon/4/bbangbbange3.png">
										</li>
										<li>
											<img src="resources/emoticon/4/bbangbbange4.png">
										</li>
									</ul>
								</a>
							</li><!-- 네번째 신규 이모티콘 끝-->
						</ul>
					</div>
				</div>
				<div class="col-md-6">
					<div class="category-box category-box-2">
					</div>	
				</div>
			</div>
		</div>
	</section>	
	</div>
</div>

<!-- footer -->
<footer class="footer section text-center">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<ul class="footer-menu text-uppercase">
					<li>
						<a href="#">CONTACT</a>
					</li>
					<li>
						<a href="#">SHOP</a>
					</li>
					<li>
						<a href="#">Pricing</a>
					</li>
					<li>
						<a href="#">PRIVACY POLICY</a>
					</li>
				</ul>
				<p class="copyright-text">Copyright &copy;2023, Developed by <a href="#">KoreaIT Team 1.</a></p>
			</div>
		</div>
	</div>
</footer>

    <!-- 
    Essential Scripts
    =====================================-->
    
    <!-- Main jQuery -->
    <script src="resources/plugins/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap 3.1 -->
    <script src="resources/plugins/bootstrap/js/bootstrap.min.js"></script>
    <!-- Bootstrap Touchpin -->
    <script src="resources/plugins/bootstrap-touchspin/dist/jquery.bootstrap-touchspin.min.js"></script>
    <!-- Instagram Feed Js -->
    <script src="resources/plugins/instafeed/instafeed.min.js"></script>
    <!-- Video Lightbox Plugin -->
    <script src="resources/plugins/ekko-lightbox/dist/ekko-lightbox.min.js"></script>
    <!-- Count Down Js -->
    <script src="resources/plugins/syo-timer/build/jquery.syotimer.min.js"></script>

    <!-- slick Carousel -->
    <script src="resources/plugins/slick/slick.min.js"></script>
    <script src="resources/plugins/slick/slick-animation.min.js"></script>

    <!-- Google Mapl -->
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCC72vZw-6tGqFyRhhg5CkF2fqfILn2Tsw"></script>
    <script type="text/javascript" src="resources/plugins/google-map/gmap.js"></script>

    <!-- Main Js File -->
    <script src="resources/js/script.js"></script>
</body>
</html>