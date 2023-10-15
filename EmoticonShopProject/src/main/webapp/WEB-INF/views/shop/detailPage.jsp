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
                            <a class="approve_btn" href="approve.html"><button type="button" class="detail_buy">구매하기</button></a>
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
                
                
                <!-- 
                    <li class="">
                        <a class="link_emoticon" href="#">
                            <img src="../resources/images/emote_img/1/78a454a97114a49dc4cd00d14f4e6c74617ea012db208c18f6e83b1a90a7baa7.png" class="img_emoticon" alt="이모티콘">
                        </a>
                    </li>
                    <li class="">
                        <a class="link_emoticon" href="#">
                            <img src="../resources/images/emote_img/1/78a454a97114a49dc4cd00d14f4e6c74f43ad912ad8dd55b04db6a64cddaf76d.gif" class="img_emoticon" alt="이모티콘">
                        </a>
                    </li>
                    <li class="">
                        <a class="link_emoticon" href="#">
                            <img src="../resources/images/emote_img/1/bc2c9fc24fbf6279cce86bbaa38fc407113e2bd2b7407c8202a97d2241a96625.png" class="img_emoticon" alt="이모티콘">
                        </a>
                    </li>
                    <li class="">
                        <a class="link_emoticon" href="#">
                            <img src="../resources/images/emote_img/1/bc2c9fc24fbf6279cce86bbaa38fc40715b3f4e3c2033bfd702a321ec6eda72c.png" class="img_emoticon" alt="이모티콘">
                        </a>
                    </li>
                    <li class="">
                        <a class="link_emoticon" href="#">
                            <img src="../resources/images/emote_img/1/bc2c9fc24fbf6279cce86bbaa38fc40726397d82c8691bdabf557d1536959d9c.png" class="img_emoticon" alt="이모티콘">
                        </a>
                    </li>
                    <li class="">
                        <a class="link_emoticon" href="#">
                            <img src="../resources/images/emote_img/1/bc2c9fc24fbf6279cce86bbaa38fc407339e41ce89b663315d96faecd7cfd11b.png" class="img_emoticon" alt="이모티콘">
                        </a>
                    </li>
                    <li class="">
                        <a class="link_emoticon" href="#">
                            <img src="../resources/images/emote_img/1/bc2c9fc24fbf6279cce86bbaa38fc4074022de826f725e10df604bf1b9725cfd.png" class="img_emoticon" alt="이모티콘">
                        </a>
                    </li>
                    <li class="">
                        <a class="link_emoticon" href="#">
                            <img src="../resources/images/emote_img/1/bc2c9fc24fbf6279cce86bbaa38fc40741d1a2caccd0c566eab28b91e2e5d306.png" class="img_emoticon" alt="이모티콘">
                        </a>
                    </li>
                    <li class="">
                        <a class="link_emoticon" href="#">
                            <img src="../resources/images/emote_img/1/bc2c9fc24fbf6279cce86bbaa38fc407616b58f7bf017e58d417ccb3283deeb3.png" class="img_emoticon" alt="이모티콘">
                        </a>
                    </li>
                    <li class="">
                        <a class="link_emoticon" href="#">
                            <img src="../resources/images/emote_img/1/bc2c9fc24fbf6279cce86bbaa38fc40766d8fd08427c1f00d04db607cc4cdc8e.png" class="img_emoticon" alt="이모티콘">
                        </a>
                    </li>
                    <li class="">
                        <a class="link_emoticon" href="#">
                            <img src="../resources/images/emote_img/1/bc2c9fc24fbf6279cce86bbaa38fc4077e6f47a71c79378b48860ead6a12bf11.png" class="img_emoticon" alt="이모티콘">
                        </a>
                    </li>
                    <li class="">
                        <a class="link_emoticon" href="#">
                            <img src="../resources/images/emote_img/1/bc2c9fc24fbf6279cce86bbaa38fc4077f9f127ae3ca5dc7f0f6349aebcdb3c4.png" class="img_emoticon" alt="이모티콘">
                        </a>
                    </li>
                    <li class="">
                        <a class="link_emoticon" href="#">
                            <img src="../resources/images/emote_img/1/bc2c9fc24fbf6279cce86bbaa38fc40782f3bd8c9735553d03f6f982e10ebe70.png" class="img_emoticon" alt="이모티콘">
                        </a>
                    </li>
                
                
                 -->
                    
                    
                    
                </ul>
			</div>
		</div>
	</section>
	</div>
</div>

<%@include file="../includes/shop-footer.jsp" %>