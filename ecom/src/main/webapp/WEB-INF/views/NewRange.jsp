<%@ include file="./templates/Header.jsp"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<!-- <link
	href="https://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css"
	rel="stylesheet">
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<script src="https://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
 -->
<!-- <script>
$(function(){
$('input[name=mfg]').datepicker({
	format:'YYYY-mm-dd'
});	
});
</script>
 -->
<style>
body {
	padding-top: 150px;
}
</style>

</head>
<body>

	<div class="well">
		<div class="container">
			<div class="row">
				<div class="form-horizontal">
					<form:form action="addNewProduct" commandName="productcommand"
						enctype="multipart/form-data">

						<div class="form-group">
							<label for="id"></label>
							<form:hidden path="" />
						</div>


						<div class="form-group">
							<label class="col-md-4 control-label" for="name">Product
								Name</label>
							<div class="col-md-6">
								<form:input path="name" class="form-control" />
								<form:errors path="name" cssStyle="color:#ff0000"></form:errors>
							</div>
						</div>

						<div class="form-group">
							<label class="col-md-4 control-label" for="description">Description</label>
							<div class="col-md-6">
								<form:input path="description" class="form-control" />
								<form:errors path="description" cssStyle="color:#ff0000"></form:errors>
							</div>
						</div>


						<div class="form-group">
							<label class="col-md-4 control-label" for="price">Price</label>
							<div class="col-md-6">
								<form:input path="price" class="form-control" />
								<form:errors path="price" cssStyle="color:#ff0000"></form:errors>
							</div>
						</div>

						<div class="form-group">
							<label class="col-md-4 control-label" for="quantity">Quantity</label>
							<div class="col-md-6">
								<form:input path="quantity" class="form-control" />
								<form:errors path="quantity" cssStyle="color:#ff0000"></form:errors>
							</div>
						</div>

						<%-- <div class="form-group">
<label class="col-md-4 control-label"for="mfg">Mfg Date</label>
<div class="col-md-6">
<form:input path="mfg" class="form-control"/>
<form:errors path="mfg" cssStyle="color:#ff0000"></form:errors>
</div>
</div>
 --%>
						<div class="form-group">
							<label class="col-md-4 control-label" for="category">Category</label>
							<div class="col-md-6">
								<c:forEach var="c" items="${categories}">
									<form:radiobutton path="category.id" value="${c.id}" />${c.categoryDetails }
</c:forEach>
							</div>
						</div>

						<div class="form-group">
							<label class="col-md-4 control-label" for="supplier">Supplier</label>
							<div class="col-md-6">
								<c:forEach var="s" items="${suppliers}">
									<form:radiobutton path="supplier.sid" value="${s.sid}" />${s.supname }
</c:forEach>
							</div>
						</div>



						<div class="form-group">
							<label class="col-md-4 control-label" for="image">Image</label>
							<div class="col-md-6"></div>
							<form:input path="image" type="file" />

						</div>




						<!-- <input type="submit" value="Add Product" class="btn btn-default"> -->
						<div class="form-group">
							<label class="col-md-4 control-label" for="singlebutton"></label>
							<div class="col-md-4">
								<button id="submit" name="submit" class="btn btn-success">Add
									Product</button>
							</div>
						</div>


					</form:form>
				</div>
			</div>
		</div>
	</div>

</body>
</html>
<%@ include file="./templates/Footer.jsp"%>