
<%@ include file="templates/Header.jsp"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<style>
</style>
</head>
<body data-ng-app="app" ng-controller="ProductController">
	<div class="well">
		<div class="container-wrapper">
			<div class="container">
				<div class="page-header">
					<h1>
						<b>Product Details</b>
					</h1>

					<p class="lead">Here is the detail information of the
						Electronic Product choosen:</p>
				</div>

				<div class="container">
					<div class="row">
						<div class="col-md-6">
							<c:url var="src" value="/resources/img/${product.id }.jpg"></c:url>
							<img src="${src }" alt="image" style="width: 100%" />
							<%-- <img src="<c:url value="/resources/Images/${product.id}.jpg" />" alt="image" style="width:100%"/> --%>
						</div>
						<div class="col-md-1"></div>
						<div class="col-md-5">
							<h2>${product.name}</h2>
							<p>${product.description}</p>
							<p>
								<strong>Category</strong>: ${product.category.categoryDetails}
							</p>
							<p>
								<strong>Supplier</strong>: ${product.supplier.supname}
							</p>

							<p>INR ${product.price}</p>
							<c:if test="${pageContext.request.userPrincipal.name != 'admin'}">
								<c:if test="${pageContext.request.userPrincipal.name != null}">
									<a href="#" class="btn btn-warning btn-lg"
										ng-click="addToCart(${product.id })"> <span
										class="glyphicon glyphicon-shopping-cart"></span>Add to Cart

									</a>
								</c:if>
							</c:if>
							<a href="<c:url value="/prolist" />" class="btn btn-info btn-lg">Wanna
								see more Products?</a> <br />
						</div>

					</div>

				</div>

			</div>
		</div>
	</div>
	<br />
	<script src="<c:url value="/resources/js/controller.js"></c:url>"></script>
</body>
</html>
<%@ include file="./templates/Footer.jsp"%>