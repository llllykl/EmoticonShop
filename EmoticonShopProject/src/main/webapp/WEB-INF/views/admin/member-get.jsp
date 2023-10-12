<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<%@include file="../includes/admin-header.jsp" %>

  <main id="main" class="main">
    
    <div class="mt-3 px-5 pagetitle">
        <h4>회원 상세</h4>
        <nav>
          <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="#">회원 관리</a></li>
            <li class="breadcrumb-item">회원 조회</li>
            <li class="breadcrumb-item active">회원 상세</li>
          </ol>
        </nav>
      </div><!-- End Page Title -->

      <section class="section">
        <div class="row">
          <div class="px-5 col-lg-12">
  
            <div class="px-3 card">
              <div class="card-body">
                <h5 class="py-4 card-title">Member Info</h5>
                <!-- General Form Elements -->
                <form>
                    <div class="row mb-5">
                      <div class="row mb-4">
                        <label for="mid" class="col-md-4 col-lg-3 col-form-label">ID</label>
                        <label for="mid" class="col-md-4 col-lg-3 col-form-label">korea123</label>
                      </div>
  
                      <div class="row mb-4">
                        <label for="mname" class="col-md-4 col-lg-3 col-form-label">Name</label>
                        <label for="mname" class="col-md-4 col-lg-3 col-form-label">홍길동</label>
                      </div>

                      <div class="row mb-4">
                        <label for="memail" class="col-md-4 col-lg-3 col-form-label">Email</label>
                        <label for="memail" class="col-md-4 col-lg-3 col-form-label">korea123@gmail.com</label>
                      </div>

                      <div class="row mb-4">
                        <label for="mpoint" class="col-md-4 col-lg-3 col-form-label">Point</label>
                        <label for="mpoint" class="col-md-4 col-lg-3 col-form-label">₩10,000</label>
                      </div>

                      <div class="row mb-4">
                        <label for="about" class="col-md-4 col-lg-3 col-form-label">기타사항</label>
                        <div class="col-md-8 col-lg-9">
                          <textarea name="about" class="form-control" id="about" style="height: 100px" readonly="readonly"></textarea>
                        </div>
                      </div>

                      <div class="text-center py-3">
                        <a href="member" class="px-4 py-2 btn btn-success">회원 목록</a>&nbsp;
                       <!-- <button type="submit" class="px-4 btn btn-success">Edit</button>&nbsp; --> 
                       <!-- <button type="submit" class="px-3 btn btn-secondary">Delete</button> -->
                      </div>
  
                </form><!-- End General Form Elements -->
  
              </div>
            </div>
  
          </div>

        </div>
      </section>

  </main><!-- End #main -->

  <%@include file="../includes/admin-footer.jsp" %>
  </body>
</html>