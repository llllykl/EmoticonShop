<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@include file="../includes/shop-header.jsp" %>

<div id="content-wrap">
		<!-- main section -->
	<section class="main section">
		<div class="container">
			<div class="row">
				
                <div class="approve_wrap">
                    <div class="approve_head">
                        <strong class="">구매하기</strong>
                    </div>
                    <div class="approve_body">
                        <div class="inner_body">
                            <div class="approve_left">
                                <div class="approve_thumb">
                                    <div class="approve_tit">
                                        <strong class="approve_tit_product">
                                            <p class="txt_tit">이모티콘1</p>
                                        </strong>
                                    </div>
                                    <dl>
                                        <dd class="screen_out">가격</dd>
                                        <dt class="item_price">
                                            <em class="txt_price">2,500</em>원
                                        </dt>
                                    </dl>
                                </div>
                                <div class="approve_img">
                                    <img src="../resources/images/emote_img/1/78a454a97114a49dc4cd00d14f4e6c74617ea012db208c18f6e83b1a90a7baa7.png" class="approve_emoticon" alt="이모티콘">
                                </div>
                            </div>
                            <div class="approve">
                                <strong class="approve_order">결제금액</strong>
                                <div class="approve_price approve_price1">
                                    <strong class="approve_tit_price">판매금액</strong>
                                    <span class="approve_txt_price">2,500<span class="approve_txt_unit">원</span></span>
                                </div>
                                <div class="approve_price approve_price12">
                                    <strong class="approve_tit_price">최종 결제금액</strong>
                                    <span class="approve_txt_price">2,000<span class="approve_txt_unit">원</span></span>
                                </div>
                            </div>
                        </div>
                        <div class="approve_agree">
                            <div class="chk_agree">
                                <input type="checkbox" id="approve_agree1" name="agree" class="approve_check">
                                <label for="approve_agree1" class="lab_agree">
                                    <span class="ico_comm ico_orderagree"></span>상품을 구매 하시겠습니까?
                                </label>
                            </div>
                            <a href="/shop/"><button type="button" class="approve_buy">구매하기</button></a>
                        </div>
                    </div>
                </div>

			</div>
		</div>
	</section>
	</div>
</div>

<%@include file="../includes/shop-footer.jsp" %>