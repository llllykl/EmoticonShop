<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@include file="../includes/shop-header.jsp" %>

<div id="content-wrap">
<!-- main section -->
	<section class="main section">
		<div class="container">
			<div class="row">
				<div class="detail_mainwrap">
                    <div class="detail_img">
                        <img alt="이모티콘" class="detail_mainimg" src="../resources/preview/<c:out value="${product.p_image}"/>" />
                    </div>
                    <div class="detail_main">
                        <h1 class="detail_h3"><c:out value="${product.p_name}"/></h1>
                        <div class="detail_pb">
                            <dl class="detail_price">
                                <dt>판매가격</dt>
                                <dd>
                                    <em class="num_g"><c:out value="${product.p_price}"/></em>&nbsp;원
                                </dd>
                            </dl>
                            <a class="approve_btn" href="/shop/approve"><button type="button" class="detail_buy">구매하기</button></a>
                        </div>
                    </div>
                </div>
                <ul class="list_img">
                	<c:forEach items="${flist}" var="file">
                	<li class="">
                        <a class="link_emoticon" href="#">
                            <img src="../resources/emoticons/<c:out value="${product.p_name}"/>/<c:out value="${file.i_name}"/>"
                            	class="img_emoticon" alt="이모티콘">
                        </a>
                    </li>
               		</c:forEach>
                </ul>
			</div>
		</div>
	</section>
	</div>
</div>

<%@include file="../includes/shop-footer.jsp" %>