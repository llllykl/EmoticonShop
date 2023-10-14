<%@page import="kr.co.domain.ProductDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<%@include file="../includes/admin-header.jsp" %>
  
  <main id="main" class="main">

    <div class="mt-3 pagetitle">
        <h4>상품 조회</h4>
        <nav>
          <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="#">판매 관리</a></li>
            <li class="breadcrumb-item active">상품 조회</li>
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
						<c:forEach items="${list}" var="product">
						<tr>
                          <td class="px-5" scope="row"><a href="product-get?p_no=${product.p_no}" class="text-primary fw-bold">&nbsp;
                          		<c:out value="${product.p_no}"/></a></td>
                          <th class="px-5"><a href="product-get?p_no=${product.p_no}"><img src="../resources/preview/<c:out value="${product.p_image}"/>" alt=""></a></th>
                          <td class="px-5"><a href="product-get?p_no=${product.p_no}" class="text-primary fw-bold">
                          		<c:out value="${product.p_name}"/></a></td>
                          <td class="px-5" class="fw-bold">
                          		<c:out value="${product.p_creator}"/></td>
                          <td class="px-5"><c:out value="${product.p_price}"/></td>
                        </tr>
						</c:forEach>
				
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