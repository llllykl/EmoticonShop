<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<%@include file="../includes/admin-header.jsp" %>

  <main id="main" class="main">

    <div class="mt-3 pagetitle">
        <h4>회원 조회</h4>
        <nav>
          <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="#">회원 관리</a></li>
            <li class="breadcrumb-item active">회원 조회</li>
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
                            <th class="px-5" scope="row"><a href="memberget">&nbsp;1</a></th>
                            <td class="px-5"><a href="memberget">korea123</a></td>
                            <td class="px-5" class="text-primary">홍길동</td>
                            <td class="px-5">korea123@gmail.com</td>
                            <td class="px-5"><span class="badge bg-dark">10,000</span></td>
                          </tr>
                          <tr>
                            <th class="px-5" scope="row"><a href="#">&nbsp;2</a></th>
                            <td class="px-5"><a href="#">asdf123</a></td>
                            <td class="px-5" class="text-primary">김길동</td>
                            <td class="px-5">asdf123@gmail.com</td>
                            <td class="px-5"><span class="badge bg-dark">2,000</span></td>
                          </tr>
                          <tr>
                            <th class="px-5" scope="row"><a href="#">&nbsp;3</a></th>
                            <td class="px-5"><a href="#">hhhh1111</a></td>
                            <td class="px-5" class="text-primary">이길동</td>
                            <td class="px-5">hhhh1111@gmail.com</td>
                            <td class="px-5"><span class="badge bg-dark">7,000</span></td>
                          </tr>
                      </tbody>
                    </table>
  
                  </div>
  
                </div>
              </div><!-- End Top Selling -->

            </div>
          </div><!-- End Left side columns -->
        </div>
      </section>

  </main><!-- End #main -->

  <%@include file="../includes/admin-footer.jsp" %>
  </body>
</html>