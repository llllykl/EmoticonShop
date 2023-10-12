<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<%@include file="../includes/admin-header.jsp" %>

  <main id="main" class="main">

    <div class="mt-3 pagetitle">
      <h4>전체 조회</h4>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="#">홈</a></li>
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
                        <td class="px-5" scope="row"><a href="get" class="text-primary fw-bold">&nbsp;1</a></td>
                        <th class="px-5"><a href="get"><img src="../resources/assets/img/product-1.gif" alt=""></a></th>
                        <td class="px-5"><a href="get" class="text-primary fw-bold">순수토끼 톡희의 일상 5</a></td>
                        <td class="px-5" class="fw-bold">I'm</td>
                        <td class="px-5">₩3,000</td>
                      </tr>
                      <tr>
                        <td class="px-5" scope="row"><a href="#" class="text-primary fw-bold">&nbsp;2</a></td>
                        <th class="px-5"><a href="#"><img src="../resources/assets/img/product-2.gif" alt=""></a></th>
                        <td class="px-5"><a href="#" class="text-primary fw-bold">Just be HAPPY!</a></td>
                        <td class="px-5" class="fw-bold">카카오프렌즈</td>
                        <td class="px-5">₩3,000</td>
                      </tr>
                      <tr>
                        <td class="px-5" scope="row"><a href="#" class="text-primary fw-bold">&nbsp;3</a></td>
                        <th class="px-5"><a href="#"><img src="../resources/assets/img/product-3.png" alt=""></a></th>
                        <td class="px-5"><a href="#" class="text-primary fw-bold">잔망 루피7</a></td>
                        <td class="px-5" class="fw-bold">잔망 루피</td>
                        <td class="px-5">₩3,000</td>
                      </tr>
                      <tr>
                        <td class="px-5" scope="row"><a href="#" class="text-primary fw-bold">&nbsp;4</a></td>
                        <th class="px-5"><a href="#"><img src="../resources/assets/img/product-4.png" alt=""></a></th>
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
  
<%@include file="../includes/admin-footer.jsp" %>
</body>
</html>