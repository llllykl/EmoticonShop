<%@page import="kr.co.domain.ProductDTO"%>
<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@include file="../includes/shop-header.jsp" %>

<!-- banner  -->
<div class="hero-slider">
	
	<div class="slider-item th-fullpage hero-area" style="background-image: url(../resources/images/slider/slider1.png);">
		<div class="container">
		</div>
	</div>
	<div class="slider-item th-fullpage hero-area" style="background-image: url(../resources/images/slider/slider2.png);">
		<div class="container">
		</div>
	</div>
</div>

<div id="content-wrap">
<!-- main section -->
	<section class="main section">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="title text-center">
						<div class="wrap_newemoticon"> <!--메인 신규이모티콘 시작-->
							<h2 class="tit_section">
							<a class="link_menu" href="newpage">
								➤ 신규 이모티콘
							</a>
						</h2>
						<div class="area_listproduct">
							<div class="list_product">
							
							<c:forEach items="${plist}" var="product">								
							<div class="list_unit">
									<a class="link_emot" href="/shop/detailpage?p_no=${product.p_no}">
										<span class="inner_emot">
											<img src="../resources/preview/<c:out value="${product.p_image}"/>" class="img_emot img_default" 
												width="140px" height="140px" alt="" />
										</span>
										<h2 class="tit_product"><c:out value="${product.p_name}" /></h2>
									</a>
							</div>
							</c:forEach>
								
							</div>
						</div>
					</div> <!--메인 신규이모티콘 끝-->
						
						
						<!--메인 인기이모티콘 시작-->
						<div class="wrap_hottab">
							<h2 class="tit_section">
								<a class="link_menu" href="poppage">
								<br><br><br><br><br><br>
									➤ 인기 이모티콘
								</a>
							</h2>
							<div class="area_hot">
								<ol class="list_double"> <!--첫번째 이모티콘 세로 라인 시작-->
									<li><!--1위 이모티콘 시작-->
										<span class="txt_num num_highlight">1</span>
										<div class="double_tit">
										<a class="link_double" href="">
											<div class="area_tit">
												<strong class="tit_product">
													<span class="area_icons"></span>
													<span class="txt_tit">1위 토끼</span>
												</strong>
											</div>
										</a>
									</div>
									<a class="link_double double_img" href="#">
										<div class="area_doubleemoticon">
											<img src="../resources/images2/1/rabbit1.png" class="img_emo img_default" alt="토끼 1위">
										</div>
									</a>
									</li><!--1위 이모티콘 끝-->
									<li><!--2위 이모티콘 시작-->
										<span class="txt_num num_highlight">2</span>
										<div class="double_tit">
										<a class="link_double" href="">
											<div class="area_tit">
												<strong class="tit_product">
													<span class="area_icons"></span>
													<span class="txt_tit">2위 동글이</span>
												</strong>
											</div>
										</a>
									</div>
									<a class="link_double double_img" href="#">
										<div class="area_doubleemoticon">
											<img src="../resources/images2/2/dongueri1.png" class="img_emo img_default" alt="동글이 2위">
										</div>
									</a>
									</li><!--2위 이모티콘 끝-->
									<li><!--3위 이모티콘 시작-->
										<span class="txt_num num_highlight">3</span>
										<div class="double_tit">
										<a class="link_double" href="">
											<div class="area_tit">
												<strong class="tit_product">
													<span class="area_icons"></span>
													<span class="txt_tit">3위 강아지</span>
												</strong>
											</div>
										</a>
									</div>
									<a class="link_double double_img" href="#">
										<div class="area_doubleemoticon">
											<img src="../resources/images2/3/dog1.png" class="img_emo img_default" alt="강아지 3위">
										</div>
									</a>
									</li><!--3위 이모티콘 끝-->
									<li><!--4위 이모티콘 시작-->
										<span class="txt_num num_highlight">4</span>
										<div class="double_tit">
										<a class="link_double" href="">
											<div class="area_tit">
												<strong class="tit_product">
													<span class="area_icons"></span>
													<span class="txt_tit">4위 빵빵이</span>
												</strong>
											</div>
										</a>
									</div>
									<a class="link_double double_img" href="#">
										<div class="area_doubleemoticon">
											<img src="../resources/images2/4/bbangbbange1.png" class="img_emo img_default" alt="빵빵이 4위">
										</div>
									</a>
									</li><!--4위 이모티콘 끝-->
									<li><!--5위 이모티콘 시작-->
										<span class="txt_num num_highlight">5</span>
										<div class="double_tit">
										<a class="link_double" href="">
											<div class="area_tit">
												<strong class="tit_product">
													<span class="area_icons"></span>
													<span class="txt_tit">5위 빵빵이2</span>
												</strong>
											</div>
										</a>
									</div>
									<a class="link_double double_img" href="#">
										<div class="area_doubleemoticon">
											<img src="../resources/images2/4/bbangbbange2.png" class="img_emo img_default" alt="빵빵이 5위">
										</div>
									</a>
									</li><!--5위 이모티콘 끝-->
								</ol><!--첫번째 이모티콘 세로 라인 끝-->
								<ol class="list_double"> <!--두번째 이모티콘 세로 라인 시작-->
									<li><!--6위 이모티콘 시작-->
										<span class="txt_num num_highlight">6</span>
										<div class="double_tit">
										<a class="link_double" href="">
											<div class="area_tit">
												<strong class="tit_product">
													<span class="area_icons"></span>
													<span class="txt_tit">6위 토끼</span>
												</strong>
											</div>
										</a>
									</div>
									<a class="link_double double_img" href="#">
										<div class="area_doubleemoticon">
											<img src="../resources/images2/1/rabbit2.png" class="img_emo img_default" alt="토끼 6위">
										</div>
									</a>
									</li><!--6위 이모티콘 끝-->
								</ol><!--두번째 이모티콘 세로 라인 끝-->
							</div>
						</div>
						<!--메인 인기이모티콘 끝-->
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