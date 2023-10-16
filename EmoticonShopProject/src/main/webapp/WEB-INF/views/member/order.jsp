<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%@include file="../includes/shop-header.jsp" %>

<section class="page-header">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="content">
					<h1 class="page-name">MyPage</h1>
					<ol class="breadcrumb">
						<li><a href="index">Home</a></li>
						<li class="active">my account</li>
					</ol>
				</div>
			</div>
		</div>
	</div>
</section>
<section class="user-dashboard page-wrapper">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<ul class="list-inline dashboard-menu text-center">
					
					<li><a class="active" href="/member/order">Orders</a></li>
					
					<li><a href="/member/profile-details">Profile Details</a></li>
				</ul>
				<div class="dashboard-wrapper user-dashboard">
					<div class="table-responsive">
						<table class="table">
							<thead>
								<tr>
									<th>Order ID</th>
									<th>Date</th>
									<th>Items</th>
									<th>Total Price</th>
									<th>Status</th>
									<th></th>
								</tr>
								
							</thead>
							<tbody>
							<c:forEach items="${list}" var="list">
								<tr>
									<td><c:out value="${list.b_no}"/></td>
									<td><c:out value="${list.b_regdate}"/></td>
									<td><%-- <a href="/상세페이지?b_no=${list.b_no}"> --%><c:out value="${list.p_name}" /><!-- </a> --></td>
									<td><c:out value="${list.p_price}"/></td>
									<td><span class="label label-primary">Completed</span></td>
									<td><a href="order" class="btn btn-default">View</a></td>
								</tr>
								</c:forEach> 
								<tr>
									<td>${read.b_no}</td>
									<td>${read.b_regdate}</td>
									<td>${read.p_name}</td>
									<td>${read.p.price}</td>
									<td>${read.p.price}</td>
									<td><span class="label label-success">Completed</span></td>
									<td><a href="order" class="btn btn-default">View</a></td>
								</tr>
								<tr>
									<td>#451231</td>
									<td>Mar 25, 2016</td>
									<td>3</td>
									<td>$150.00</td>
									<td><span class="label label-danger">Completed</span></td>
									<td><a href="order" class="btn btn-default">View</a></td>
								</tr>
								<tr>
									<td>#451231</td>
									<td>Mar 25, 2016</td>
									<td>2</td>
									<td>$99.00</td>
									<td><span class="label label-info">Completed</span></td>
									<td><a href="order" class="btn btn-default">View</a></td>
								</tr>
								<tr>
									<td>#451231</td>
									<td>Mar 25, 2016</td>
									<td>3</td>
									<td>$150.00</td>
									<td><span class="label label-warning">Completed</span></td>
									<td><a href="order.html" class="btn btn-default">View</a></td>
								</tr>
								
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>

<%@include file="../includes/shop-footer.jsp" %>