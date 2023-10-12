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
  <link rel="shortcut icon" type="image/x-icon" href="../resources/images/favicon.png" />
  
  <!-- Themefisher Icon font -->
  <link rel="stylesheet" href="../resources/plugins/themefisher-font/style.css">
  <!-- bootstrap.min css -->
  <link rel="stylesheet" href="../resources/plugins/bootstrap/css/bootstrap.min.css">
  
  <!-- Animate css -->
  <link rel="stylesheet" href="../resources/plugins/animate/animate.css">
  <!-- Slick Carousel -->
  <link rel="stylesheet" href="../resources/plugins/slick/slick.css">
  <link rel="stylesheet" href="../resources/plugins/slick/slick-theme.css">
  
  <!-- Main Stylesheet -->
  <link rel="stylesheet" href="../resources/css/style.css">

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
					<a href="/shop/">
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
						<a href="/admin/">Admin</a>
					</li><!-- / Admin -->
					<!-- Search -->
					<li class="dropdown search dropdown-slide">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown"  style="font-size: medium;"><i
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
								<li><a href="/shop/mypage" class="btn btn-small" style="font-size: small;">MyPage</a></li>
								<li><a href="/shop/" class="btn btn-small btn-solid-border" style="font-size: small;">Logout</a></li>
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
							<a href="/shop/" style="font-size: large;text-decoration: underline; 
							text-underline-offset: 8px;text-decoration-thickness: 2px;">홈</a>
						</li><!-- / Home -->
						<!-- 신규 -->
						<li class="new-tab">
							<a href="newpage"  data-delay="350" style="font-size: large;color: gray;">신규</a>
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
<!-- banner 
<div class="hero-slider">
	<div class="slider-item th-fullpage hero-area" style="background-image: url(images/slider/slider-1.gif);">
		<div class="container">
		</div>
	</div>
	<div class="slider-item th-fullpage hero-area" style="background-image: url(images/slider/slider-3.gif);">
		<div class="container">
		</div>
	</div>
	<div class="slider-item th-fullpage hero-area" style="background-image: url(images/slider/slider-2.gif);">
		<div class="container">
		</div>
	</div>
</div> -->

<div id="content-wrap">
		<!-- main section -->
	<section class="main section">
		<div class="container">
			<div class="row">
				<div class="detail_mainwrap">
                    <div class="detail_img">
                        <img alt="이모티콘" class="detail_mainimg" src="../resources/images/emote_img/1/78a454a97114a49dc4cd00d14f4e6c74617ea012db208c18f6e83b1a90a7baa7.png">
                    </div>
                    <div class="detail_main">
                        <h1 class="detail_h3">이모티콘1</h1>
                        <div class="detail_pb">
                            <dl class="detail_price">
                                <dt>판매가격</dt>
                                <dd>
                                    <em class="num_g">2,000</em>원
                                </dd>
                            </dl>
                            <a class="approve_btn" href="approve.html"><button type="button" class="detail_buy">구매하기</button></a>
                        </div>
                    </div>
                </div>

                <ul class="list_img">
                    <li class="">
                        <a class="link_emoticon" href="#">
                            <img src="../resources/images/emote_img/1/78a454a97114a49dc4cd00d14f4e6c74617ea012db208c18f6e83b1a90a7baa7.png" class="img_emoticon" alt="이모티콘">
                        </a>
                    </li>
                    <li class="">
                        <a class="link_emoticon" href="#">
                            <img src="../resources/images/emote_img/1/78a454a97114a49dc4cd00d14f4e6c74f43ad912ad8dd55b04db6a64cddaf76d.gif" class="img_emoticon" alt="이모티콘">
                        </a>
                    </li>
                    <li class="">
                        <a class="link_emoticon" href="#">
                            <img src="../resources/images/emote_img/1/bc2c9fc24fbf6279cce86bbaa38fc407113e2bd2b7407c8202a97d2241a96625.png" class="img_emoticon" alt="이모티콘">
                        </a>
                    </li>
                    <li class="">
                        <a class="link_emoticon" href="#">
                            <img src="../resources/images/emote_img/1/bc2c9fc24fbf6279cce86bbaa38fc40715b3f4e3c2033bfd702a321ec6eda72c.png" class="img_emoticon" alt="이모티콘">
                        </a>
                    </li>
                    <li class="">
                        <a class="link_emoticon" href="#">
                            <img src="../resources/images/emote_img/1/bc2c9fc24fbf6279cce86bbaa38fc40726397d82c8691bdabf557d1536959d9c.png" class="img_emoticon" alt="이모티콘">
                        </a>
                    </li>
                    <li class="">
                        <a class="link_emoticon" href="#">
                            <img src="../resources/images/emote_img/1/bc2c9fc24fbf6279cce86bbaa38fc407339e41ce89b663315d96faecd7cfd11b.png" class="img_emoticon" alt="이모티콘">
                        </a>
                    </li>
                    <li class="">
                        <a class="link_emoticon" href="#">
                            <img src="../resources/images/emote_img/1/bc2c9fc24fbf6279cce86bbaa38fc4074022de826f725e10df604bf1b9725cfd.png" class="img_emoticon" alt="이모티콘">
                        </a>
                    </li>
                    <li class="">
                        <a class="link_emoticon" href="#">
                            <img src="../resources/images/emote_img/1/bc2c9fc24fbf6279cce86bbaa38fc40741d1a2caccd0c566eab28b91e2e5d306.png" class="img_emoticon" alt="이모티콘">
                        </a>
                    </li>
                    <li class="">
                        <a class="link_emoticon" href="#">
                            <img src="../resources/images/emote_img/1/bc2c9fc24fbf6279cce86bbaa38fc407616b58f7bf017e58d417ccb3283deeb3.png" class="img_emoticon" alt="이모티콘">
                        </a>
                    </li>
                    <li class="">
                        <a class="link_emoticon" href="#">
                            <img src="../resources/images/emote_img/1/bc2c9fc24fbf6279cce86bbaa38fc40766d8fd08427c1f00d04db607cc4cdc8e.png" class="img_emoticon" alt="이모티콘">
                        </a>
                    </li>
                    <li class="">
                        <a class="link_emoticon" href="#">
                            <img src="../resources/images/emote_img/1/bc2c9fc24fbf6279cce86bbaa38fc4077e6f47a71c79378b48860ead6a12bf11.png" class="img_emoticon" alt="이모티콘">
                        </a>
                    </li>
                    <li class="">
                        <a class="link_emoticon" href="#">
                            <img src="../resources/images/emote_img/1/bc2c9fc24fbf6279cce86bbaa38fc4077f9f127ae3ca5dc7f0f6349aebcdb3c4.png" class="img_emoticon" alt="이모티콘">
                        </a>
                    </li>
                    <li class="">
                        <a class="link_emoticon" href="#">
                            <img src="../resources/images/emote_img/1/bc2c9fc24fbf6279cce86bbaa38fc40782f3bd8c9735553d03f6f982e10ebe70.png" class="img_emoticon" alt="이모티콘">
                        </a>
                    </li>
                </ul>
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
    <script src="../resources/plugins/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap 3.1 -->
    <script src="../resources/plugins/bootstrap/js/bootstrap.min.js"></script>
    <!-- Bootstrap Touchpin -->
    <script src="../resources/plugins/bootstrap-touchspin/dist/jquery.bootstrap-touchspin.min.js"></script>
    <!-- Instagram Feed Js -->
    <script src="../resources/plugins/instafeed/instafeed.min.js"></script>
    <!-- Video Lightbox Plugin -->
    <script src="../resources/plugins/ekko-lightbox/dist/ekko-lightbox.min.js"></script>
    <!-- Count Down Js -->
    <script src="../resources/plugins/syo-timer/build/jquery.syotimer.min.js"></script>

    <!-- slick Carousel -->
    <script src="../resources/plugins/slick/slick.min.js"></script>
    <script src="../resources/plugins/slick/slick-animation.min.js"></script>

    <!-- Google Mapl -->
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCC72vZw-6tGqFyRhhg5CkF2fqfILn2Tsw"></script>
    <script type="text/javascript" src="../resources/plugins/google-map/gmap.js"></script>

    <!-- Main Js File -->
    <script src="../resources/js/script.js"></script>
</body>
</html>