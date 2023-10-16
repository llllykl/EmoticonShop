<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@include file="../includes/shop-header.jsp" %>

<!-- banner  -->
<div class="new-banner">
        <img src="../resources/images/popbanner.png"  width="100%" height="auto"/>
</div>

	<div id="content-wrap">
	<!-- main section -->
	<section class="main section">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="title text-center">
						<ol class="list_double"> <!--첫번째 인기이모티콘 시작-->
						<c:forEach items="${deslist}" var="product" varStatus="status">
							<li class>
								<span class="txt_num num_highlight"><c:out value="${status.count}"/></span>
								<div class="double_tit">
									<a class="link_double" href="/shop/detailpage?p_no=${product.p_no}">
										<div class="area_tit">
											<string class="tit_product">
												<span class="txt_tit"><c:out value="${product.p_name}" /></span>
											</string>
										</div>
									</a>
								</div>
								<a class="link_double double_img" href="/shop/detailpage?p_no=${product.p_no}">
									<div class ="area_doubleemoticon">
										<img src="../resources/preview/<c:out value="${product.p_image}"/>" 
											height="100px" class="img_emot img_default" alt="pop">
									</div>
							</li><!--첫번째 인기이모티콘 끝-->
						</c:forEach>
						</ol>
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

<%@include file="../includes/shop-footer.jsp" %>