<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<%@include file="../includes/admin-header.jsp" %>
  
  <main id="main" class="main">
    
    <div class="mt-3 px-5 pagetitle">
        <h4>상품 수정</h4>
        <nav>
          <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="#">판매 관리</a></li>
            <li class="breadcrumb-item"><a href="#">상품 조회</a></li>
            <li class="breadcrumb-item"><a href="#">상품 상세</a></li>
            <li class="breadcrumb-item breadcrumb-item active">상품 수정</li>
          </ol>
        </nav>
      </div><!-- End Page Title -->
  
      <section class="section">
        <div class="row">
          <div class="px-5 col-lg-12">
  
            <div class="card">
              <div class="card-body">
                <h5 class="py-4 card-title">Update Emoticon</h5>
                <!-- General Form Elements -->
                <form role="form" action="/admin/modify" method="post">
                <div class="row mb-5">
                    <label for="profileImage" class="py-4 col-md-4 col-lg-3 col-form-label">썸네일 업로드</label>
                    <div class="col-md-8 col-lg-9">
                        <img src="../resources/assets/img/product-1.gif" alt="Profile" width="150px" height="150px">
                        <div class="pt-2">
                      <!-- 
                        <input id="image-input" type="hidden" class="form-control" type="file" id="formFile" name="p_image" required="required">
                        <a href="#" id="image-btn" onClick="onClickUpload();" class="btn btn-primary btn-md" title="Upload new profile image"><i class="bi bi-upload"></i></a>                      
                       -->  
                        <input type="file" id="formFile" name="p_image" required="required">
                        
                        <a href="#" class="btn btn-danger btn-md" title="Remove my profile image"><i class="bi bi-trash"></i></a>
                        </div>
                    </div>
                </div>
                <input type="hidden" name="p_no" value='<c:out value="${product.p_no}"/>'>
                <div class="row mb-4">
                    <label for="inputDate" class="col-sm-2 col-form-label">상품 수정일</label>
                    <div class="col-sm-10">
                      <input type="date" class="form-control" name="p_regdate" 
                      		value='<c:out value="${product.p_regdate}"/>'>
                    </div>
                </div>
                <div class="row mb-4">
                    <label for="inputText" class="col-sm-2 col-form-label">상품명</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" name="p_name"
                        	value='<c:out value="${product.p_name}"/>'>
                    </div>
                </div>
                <div class="row mb-4">
                    <label for="inputNumber" class="col-sm-2 col-form-label">상품가격(KRW)</label>
                    <div class="col-sm-10">
                        <input type="number" name="p_price" class="form-control"
                        	value='<c:out value="${product.p_price}"/>'>
                </div>
                </div>
                <div class="row mb-4">
                    <label for="inputText" class="col-sm-2 col-form-label">제작자</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" name="p_creator"
                        	value='<c:out value="${product.p_creator}"/>'>
                    </div>
                </div>
                <div class="row mb-4">
                <label for="inputEtc" class="col-sm-2 col-form-label">기타사항</label>
                    <div class="col-sm-10">
                    <textarea class="form-control" style="height: 100px" name="p_etc">
                    	<c:out value="${product.p_etc}"/></textarea>
                    </div>
                </div>

                <div class="row mb-1">
                    <div class="text-center">
                        <button type="submit" class="px-5 py-2 btn btn-primary">Submit</button>
                      </div>
                </div>
  
                </form><!-- End General Form Elements -->
  
              </div>
            </div>
  
          </div>

        </div>
      </section>

  </main><!-- End #main -->

<%@include file="../includes/admin-footer.jsp" %>
<script>
	function onClickUpload() {
		let imageInput = document.getElementById("image-input");
		imageInput.click();
	}
</script>
</body>
</html>