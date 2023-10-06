<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>이모티콘샵 - 관리자 페이지</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="resources/assets/img/favicon.png" rel="icon">
  <link href="resources/assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.gstatic.com" rel="preconnect">
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="resources/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="resources/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="resources/assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="resources/assets/vendor/quill/quill.snow.css" rel="stylesheet">
  <link href="resources/assets/vendor/quill/quill.bubble.css" rel="stylesheet">
  <link href="resources/assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="resources/assets/vendor/simple-datatables/style.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="resources/assets/css/style.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: NiceAdmin
  * Updated: Sep 18 2023 with Bootstrap v5.3.2
  * Template URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>
<body>
<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>이모티콘샵 - 관리자 페이지</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="resources/assets/img/favicon.png" rel="icon">
  <link href="resources/assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.gstatic.com" rel="preconnect">
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="resources/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="resources/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="resources/assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="resources/assets/vendor/quill/quill.snow.css" rel="stylesheet">
  <link href="resources/assets/vendor/quill/quill.bubble.css" rel="stylesheet">
  <link href="resources/assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="resources/assets/vendor/simple-datatables/style.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="resources/assets/css/style.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: NiceAdmin
  * Updated: Sep 18 2023 with Bootstrap v5.3.2
  * Template URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>

  <!-- ======= Header ======= -->
  <header id="header" class="header fixed-top d-flex align-items-center">

    <div class="d-flex align-items-center justify-content-between">
      <a href="adminpage" class="logo d-flex align-items-center">
        <img src="resources/assets/img/logo.png" alt="">
        <span class="d-none d-lg-block">&nbsp;ShopAdmin</span>
      </a>
      <i class="bi bi-list toggle-sidebar-btn"></i>
    </div><!-- End Logo -->

    <div class="search-bar">
      <form class="search-form d-flex align-items-center" method="POST" action="#">
        <input type="text" name="query" placeholder="상품명을 입력하세요." title="Enter search keyword">
        <button type="submit" title="Search"><i class="bi bi-search"></i></button>
      </form>
    </div><!-- End Search Bar -->

    <nav class="header-nav ms-auto">
      <ul class="d-flex align-items-center">

        <li class="nav-item d-block d-lg-none">
          <a class="nav-link nav-icon search-bar-toggle " href="#">
            <i class="bi bi-search"></i>
          </a>
        </li><!-- End Search Icon-->

        <li class="nav-item dropdown pe-3">

          <a class="nav-link nav-profile d-flex align-items-center pe-0" href="#" data-bs-toggle="dropdown">
            <img src="resources/assets/img/profile-img.png" alt="Profile" class="rounded-circle">
            <span class="d-none d-md-block dropdown-toggle ps-2 px-5">관리자</span>
          </a><!-- End Profile Image Icon -->

          <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow profile">
            <li class="dropdown-header">
              <h6>관리자</h6>
              <span>이모티콘샵 관리</span>
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>

            <li>
              <a class="dropdown-item d-flex align-items-center" href="#">
                <i class="bi bi-person"></i>
                <span>My Profile</span>
              </a>
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>

            <li>
              <a class="dropdown-item d-flex align-items-center" href="#">
                <i class="bi bi-box-arrow-right"></i>
                <span>Sign Out</span>
              </a>
            </li>

          </ul><!-- End Profile Dropdown Items -->
        </li><!-- End Profile Nav -->

      </ul>
    </nav><!-- End Icons Navigation -->

  </header><!-- End Header -->

  <!-- ======= Sidebar ======= -->
  <aside id="sidebar" class="sidebar">

    <ul class="sidebar-nav" id="sidebar-nav">

      <li class="nav-item">
        <a class="nav-link" href="index.html">
          <i class="bi bi-grid"></i>
          <span>&nbsp;메인화면</span>
        </a>
      </li><!-- End Dashboard Nav -->

      <li class="nav-item">
        <a class="nav-link collapsed" data-bs-target="#components-nav" data-bs-toggle="collapse" href="#">
          <i class="bi bi-menu-button-wide"></i><span>&nbsp;판매 관리</span><i class="bi bi-chevron-down ms-auto"></i>
        </a>
        <ul id="components-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
          <li>
            <a href="./product-list.html">
              <i class="bi bi-circle"></i><span>상품 조회</span>
            </a>
          </li>
          <li>
            <a href="./product-register.html">
              <i class="bi bi-circle"></i><span>상품 등록</span>
            </a>
          </li>
          <li>
            <a href="./product-search.html">
              <i class="bi bi-circle"></i><span>상품 수정/삭제</span>
            </a>
          </li>
        </ul>
      </li><!-- End Components Nav -->

      <li class="nav-item">
        <a class="nav-link collapsed" data-bs-target="#forms-nav" data-bs-toggle="collapse" href="#">
          <i class="bi bi-person"></i><span>&nbsp;회원 관리</span><i class="bi bi-chevron-down ms-auto"></i>
        </a>
        <ul id="forms-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
          <li>
            <a href="./member-list.html">
              <i class="bi bi-circle"></i><span>회원 조회</span>
            </a>
          </li>
          <li>
            <a href="#">
              <i class="bi bi-circle"></i><span>회원 수정/삭제</span>
            </a>
          </li>
        </ul>
      </li><!-- End Forms Nav -->
      <li class="nav-item">
        <a class="nav-link collapsed" href="index">
          <i class="bi bi-shop"></i>
          <span>&nbsp;이모티콘샵</span>
        </a>
      </li><!-- End Register Page Nav -->
      <li class="nav-item">
        <a class="nav-link collapsed" href="pages-login.html">
          <i class="bi bi-box-arrow-in-right"></i>
          <span>&nbsp;로그아웃</span>
        </a>
      </li><!-- End Login Page Nav -->
    </ul>

  </aside><!-- End Sidebar-->

  <main id="main" class="main">

    <div class="mt-3 pagetitle">
      <h4>전체 조회</h4>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="index.html">홈</a></li>
          <li class="breadcrumb-item active">메인화면</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

    <section class="section dashboard">
      <div class="row">

        <!-- Left side columns -->
        <div class="col-lg-12">
          <div class="row">

            <!-- Top Selling -->
            <div class="col-12">
              <div class="card top-selling overflow-auto">

                <div class="py-2 card-body pb-0">
                  <h5 class="card-title">판매 목록 <span>| 이모티콘샵</span></h5>

                  <table class="table table-borderless">
                    <thead>
                      <tr>
                        <th class="px-5" scope="col">No.</th>
                        <th class="px-5" scope="col">Preview</th>
                        <th class="px-5" scope="col">Title</th>
                        <th class="px-5" scope="col">Creator</th>
                        <th class="px-5" scope="col">Price</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td class="px-5" scope="row"><a href="./product-detail.html" class="text-primary fw-bold">&nbsp;1</a></td>
                        <th class="px-5"><a href="./product-detail.html"><img src="resources/assets/img/product-1.gif" alt=""></a></th>
                        <td class="px-5"><a href="./product-detail.html" class="text-primary fw-bold">순수토끼 톡희의 일상 5</a></td>
                        <td class="px-5" class="fw-bold">I'm</td>
                        <td class="px-5">₩3,000</td>
                      </tr>
                      <tr>
                        <td class="px-5" scope="row"><a href="#" class="text-primary fw-bold">&nbsp;2</a></td>
                        <th class="px-5"><a href="#"><img src="resources/assets/img/product-2.gif" alt=""></a></th>
                        <td class="px-5"><a href="#" class="text-primary fw-bold">Just be HAPPY!</a></td>
                        <td class="px-5" class="fw-bold">카카오프렌즈</td>
                        <td class="px-5">₩3,000</td>
                      </tr>
                      <tr>
                        <td class="px-5" scope="row"><a href="#" class="text-primary fw-bold">&nbsp;3</a></td>
                        <th class="px-5"><a href="#"><img src="resources/assets/img/product-3.png" alt=""></a></th>
                        <td class="px-5"><a href="#" class="text-primary fw-bold">잔망 루피7</a></td>
                        <td class="px-5" class="fw-bold">잔망 루피</td>
                        <td class="px-5">₩3,000</td>
                      </tr>
                      <tr>
                        <td class="px-5" scope="row"><a href="#" class="text-primary fw-bold">&nbsp;4</a></td>
                        <th class="px-5"><a href="#"><img src="resources/assets/img/product-4.png" alt=""></a></th>
                        <td class="px-5"><a href="#" class="text-primary fw-bold">승질 드러운 오철이는 기존쎄긔</a></td>
                        <td class="px-5" class="fw-bold">와빠</td>
                        <td class="px-5">₩3,000</td>
                      </tr>
                    </tbody>
                  </table>

                </div>

              </div>
            </div><!-- End Top Selling -->

              <!-- Recent Sales -->
              <div class="col-12">
                <div class="card recent-sales overflow-auto">
                  <div class="py-2 card-body">
                    <h5 class="card-title">회원 목록 <span>| 이모티콘샵</span></h5>
  
                    <table class="table table-borderless">
                      <thead>
                        <tr>
                          <th class="px-5" scope="col">No.</th>
                          <th class="px-5" scope="col">ID</th>
                          <th class="px-5" scope="col">Name</th>
                          <th class="px-5" scope="col">Email</th>
                          <th class="px-5" scope="col">Point</th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <th class="px-5" scope="row"><a href="#">&nbsp;1</a></th>
                          <td class="px-5">korea123</td>
                          <td class="px-5"><a href="#" class="text-primary">홍길동</a></td>
                          <td class="px-5">korea123@gmail.com</td>
                          <td class="px-5"><span class="badge bg-dark">10,000</span></td>
                        </tr>
                        <tr>
                          <th class="px-5" scope="row"><a href="#">&nbsp;2</a></th>
                          <td class="px-5">asdf123</td>
                          <td class="px-5"><a href="#" class="text-primary">김길동</a></td>
                          <td class="px-5">asdf123@gmail.com</td>
                          <td class="px-5"><span class="badge bg-dark">2,000</span></td>
                        </tr>
                        <tr>
                          <th class="px-5" scope="row"><a href="#">&nbsp;3</a></th>
                          <td class="px-5">hhhh1111</td>
                          <td class="px-5"><a href="#" class="text-primary">이길동</a></td>
                          <td class="px-5">hhhh1111@gmail.com</td>
                          <td class="px-5"><span class="badge bg-dark">7,000</span></td>
                        </tr>
                      </tbody>
                    </table>

                  </div>
  
                </div>
              </div><!-- End Recent Sales -->

          </div>
        </div><!-- End Left side columns -->
      </div>
    </section>

  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
  <footer id="footer" class="footer">
    <div class="copyright">
      &copy; Copyright <strong><span>KoreaIT Team 1</span></strong>. All Rights Reserved
    </div>
    <div class="credits">
      <!-- All the links in the footer should remain intact. -->
      <!-- You can delete the links only if you purchased the pro version. -->
      <!-- Licensing information: https://bootstrapmade.com/license/ -->
      <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/ -->
      Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
    </div>
  </footer><!-- End Footer -->

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="resources/assets/vendor/apexcharts/apexcharts.min.js"></script>
  <script src="resources/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="resources/assets/vendor/chart.js/chart.umd.js"></script>
  <script src="resources/assets/vendor/echarts/echarts.min.js"></script>
  <script src="resources/assets/vendor/quill/quill.min.js"></script>
  <script src="resources/assets/vendor/simple-datatables/simple-datatables.js"></script>
  <script src="resources/assets/vendor/tinymce/tinymce.min.js"></script>
  <script src="resources/assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="resources/assets/js/main.js"></script>
</body>
</html>