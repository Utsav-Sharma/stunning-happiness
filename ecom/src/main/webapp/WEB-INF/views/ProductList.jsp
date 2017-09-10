<%@include file="./templates/Header.jsp"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>

body { 
     background: linear-gradient(to bottom, #ffffcc 1%, #669999 100%); 

	padding-top:80px; 
	}
</style>

</head>
<body>
	<div class="">
		<div class="jumbotron jumbotron-sm">
			<div class="container">
				<div class="row">
					<div class="col-sm-12 col-lg-12">
						<h3>
							<b>OUR PRODUCTS</b>
						</h3>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="well">
		<div class="container">
			<div class="table-reponsive">
				<!-- <div class="col-sm-12 col-md-12 col-md-offset-1"> -->

				<table class="table table-hover">
					<!-- <table class="table table-bordered table-striped"> -->
					<thead>
						<tr>
							<th>PID</th>
							<th></th>
							<th>Product Name</th>
							<th>Description</th>
							<th>Price</th>
							<th>Quantity</th>
							<th>Category</th>
							<th>Supplier</th>
						</tr>
					</thead>
					<c:forEach var="pd" items="${ProductList}">
						<tr>

							<td>${pd.id}</td>
							<td><img src="<c:url value="/resources/img/${pd.id}.jpg" />"
								alt="error" width="120" height="120" /></td>
							<td>${pd.name}</td>
							<td>${pd.description}</td>
							<td>${pd.price}</td>
							<td>${pd.quantity}</td>
							<td>${pd.category.categoryDetails}</td>
							<td>${pd.supplier.supname}</td>

							<td><c:url var="view" value="/viewproduct/${pd.id }"></c:url>
								<a href="${view }"><span
									class="glyphicon glyphicon-info-sign"></span></a></td>

							<c:if test="${pageContext.request.userPrincipal.name == 'admin'}">
								<td><c:url var="delete"
										value="/admin/deleteproduct/${pd.id }"></c:url> <a
									href="${delete }"><span class="glyphicon glyphicon-remove"></span></a>
								</td>

								<td><c:url var="edit" value="/admin/editform/${pd.id }"></c:url>
									<a href="${edit }"><span class="glyphicon glyphicon-pencil"></span></a>
								</td>
							</c:if>



						</tr>
					</c:forEach>
				</table>
			</div>
		</div>
	</div>

</body>
<br />
</html>
<%@ include file="./templates/Footer.jsp"%>
