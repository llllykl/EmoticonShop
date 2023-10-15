<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="utf-8"%>
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
  <!-- Profile-detail Stylesheet -->
  <link rel="stylesheet" href="../resources/css/profile-details.css">
  <!-- product-details Styleshhet -->
  <link rel="stylesheet" href="../resources/css/product-details.css">

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
							<a href="/shop/newpage"  data-delay="350" style="font-size: large;color: gray;">신규</a>
						</li><!-- / 신규 -->
						<!-- 인기 -->
						<li class="popular-tab">
							<a href="/shop/poppage"  data-delay="350" style="font-size: large;color: gray;">인기</a>
						</li><!-- / 인기 -->
					</ul><!-- / .nav .navbar-nav -->
				</div>
			<!--/.navbar-collapse -->
		</div><!-- / .container -->
	</nav>
</section>