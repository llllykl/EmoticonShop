<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@include file="../includes/shop-header.jsp" %>

<!-- banner  -->
<div class="new-banner">
        <img src="../resources/images/newbanner.png"  width="100%" height="auto"/>
</div>

	<div id="content-wrap">
	<!-- main section -->
	<section class="main section">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="title text-center">
						<ul class="list_new"> 
						
						<c:forEach items="${list}" var="product">
							<li class>
								<div class="link_new new_tit">
									<a class="link_new" href="#">
										<div class="area_tit">
											<strong class="tit_product">
												<span class="txt_tit">
												<c:out value="${product.p_name}"/>
												</span>
											</strong>
										</div>
									</a>
								</div>
								<a class="link_new new_img" aria-label="이모티콘" href="#">
									<ul class="area_newemoticon">
										<li>
											<img src="../resources/emoticon/1/rabbit1.png">
										</li>
										<li>
											<img src="../resources/emoticon/1/rabbit2.png">
										</li>
										<li>
											<img src="../resources/emoticon/1/rabbit3.png">
										</li>
										<li>
											<img src="../resources/emoticon/1/rabbit4.png">
										</li>
									</ul>
								</a>
							</li>
						</c:forEach>
						
						
					<!-- 
							<li class>
								<div class="link_new new_tit">
									<a class="link_new" href="#">
										<div class="area_tit">
											<strong class="tit_product">
												<span class="txt_tit">첫번째 신규 이모티콘</span>
											</strong>
										</div>
									</a>
								</div>
								<a class="link_new new_img" aria-label="토끼 이모티콘" href="#">
									<ul class="area_newemoticon">
										<li>
											<img src="../resources/emoticon/1/rabbit1.png">
										</li>
										<li>
											<img src="../resources/emoticon/1/rabbit2.png">
										</li>
										<li>
											<img src="../resources/emoticon/1/rabbit3.png">
										</li>
										<li>
											<img src="../resources/emoticon/1/rabbit4.png">
										</li>
									</ul>
								</a>
							</li>
							<li class> 
								<div class="link_new new_tit">
									<a class="link_new" href="#">
										<div class="area_tit">
											<strong class="tit_product">
												<span class="txt_tit">두번째 신규 이모티콘</span>
											</strong>
										</div>
									</a>
								</div>
								<a class="link_new new_img" aria-label="동그리 이모티콘" href="#">
									<ul class="area_newemoticon">
										<li>
											<img src="../resources/emoticon/2/dongueri1.png">
										</li>
										<li>
											<img src="../resources/emoticon/2/dongueri2.png">
										</li>
										<li>
											<img src="../resources/emoticon/2/dongueri3.png">
										</li>
										<li>
											<img src="../resources/emoticon/2/dongueri4.png">
										</li>
									</ul>
								</a>
							</li>
							<li class> 
								<div class="link_new new_tit">
									<a class="link_new" href="#">
										<div class="area_tit">
											<strong class="tit_product">
												<span class="txt_tit">세번째 신규 이모티콘</span>
											</strong>
										</div>
									</a>
								</div>
								<a class="link_new new_img" aria-label="강아지 이모티콘" href="#">
									<ul class="area_newemoticon">
										<li>
											<img src="../resources/emoticon/3/dog1.png">
										</li>
										<li>
											<img src="../resources/emoticon/3/dog2.png">
										</li>
										<li>
											<img src="../resources/emoticon/3/dog3.png">
										</li>
										<li>
											<img src="../resources/emoticon/3/dog4.png">
										</li>
									</ul>
								</a>
							</li>
							<li class> 
								<div class="link_new new_tit">
									<a class="link_new" href="#">
										<div class="area_tit">
											<strong class="tit_product">
												<span class="txt_tit">네번째 신규 이모티콘</span>
											</strong>
										</div>
									</a>
								</div>
								<a class="link_new new_img" aria-label="빵빵이 이모티콘" href="#">
									<ul class="area_newemoticon">
										<li>
											<img src="../resources/emoticon/4/bbangbbange1.png">
										</li>
										<li>
											<img src="../resources/emoticon/4/bbangbbange2.png">
										</li>
										<li>
											<img src="../resources/emoticon/4/bbangbbange3.png">
										</li>
										<li>
											<img src="../resources/emoticon/4/bbangbbange4.png">
										</li>
									</ul>
								</a>
							</li>
					 -->
						
							
							
						</ul>
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