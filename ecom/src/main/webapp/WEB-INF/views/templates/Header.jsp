<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>Lightning Electronics</title>


<!-- jquery -->
<link
	href="https://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css"
	rel="stylesheet">

<script src="https://use.fontawesome.com/72815304ca.js"></script>
<link href="<c:url value="resources/css/custom.css"/>"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!-- <script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.js"></script>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<script src="https://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>-->
<!-- Bootstrap -->
<link href="<c:url value="/resources/css/bootstrap.min.css"/>"
	rel="stylesheet">
<link href="<c:url value="/resources/css/fa/css/font-awesome.min.css"/>"
	rel="stylesheet">
<link
	href="<c:url value="https://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css"/>"
	rel="stylesheet">
<!-- <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<script src="https://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
 -->
<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->


</head>
<body>
	<!-- Page Pre-Loader -->
	<!-- <div class="page-preloader">
    <div class="preloader">
      <img src="/resources/img/preloader.gif" alt="Preloader">
    </div>
  </div> -->
	<!-- .page-preloader -->


	<nav class="navbar navbar-inverse navbar-fixed-top"><!--default can be replaced by inverse and fixed can be replaced by static (in which navbar doesn't move as u scroll down)-->

	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
				data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
				<span class="sr-only">Toggle navigation</span>
				<!--scr-screen reader-->
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span> 
			</button>
			<a class="navbar-brand active" href="<c:url value="/home"/>">Lightning
				Electronics</a>
		</div>
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<!--collapsing of navbar-->
			<!--<div class="navbar-collpase collapse" id="bs-example-navbar-collapse-1">-->
			<ul class="nav navbar-nav navbar-right">
				<li class=""><a href="<c:url value="/home"/>">HOME <i
						class="fa fa-home"></i></a></li>

				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown">INSTRUMENTS<b class="caret"></b></a> <!--for making it lookalike dropdown-->
					<!--	 <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span class="caret"></span></a>-->
					<ul class="dropdown-menu">
						<!--dropdown menu option-->

						<li><a href="guitar.html">Guitar</a></li>
						<li><a href="piano.html">Piano</a></li>
						<li><a href="violin.html">Violin</a></li>
					</ul></li>
				<li class="active"><a href="#" data-toggle="modal"
					data-target="#myModal">ABOUT</a></li>
				<!-- <li class="active"><a href="signup">SIGN UP</a></li> -->
				<c:if test="${pageContext.request.userPrincipal.name != null}">
					<li><a>Welcome: ${pageContext.request.userPrincipal.name}</a></li>
					<li><a href="<c:url value="/j_spring_security_logout"/>">Logout</a></li>
					<c:if test="${pageContext.request.userPrincipal.name != 'admin'}">
						<li><a href="<c:url value="/cart/getCartId"/>">Cart <span
								class="glyphicon glyphicon-shopping-cart"></span></a></li>
						<li class=""><a href="<c:url value="/prolist"/>">PRODUCT
								LIST</a></li>
					</c:if>

					<c:if test="${pageContext.request.userPrincipal.name == 'admin'}">
						<li><a href="<c:url value="/admin"/>">ADMIN</a></li>
					</c:if>

				</c:if>
				<c:if test="${pageContext.request.userPrincipal.name == null}">
					<li><a href="<c:url value="/login"/>"> <span
							class="glyphicon glyphicon-log-in"></span> LOGIN
					</a></li>
					<li><a href="<c:url value="/signup"/>"> <span
							class="glyphicon glyphicon-user"></span> REGISTER
					</a></li>
					<li class=""><a href="<c:url value="/prolist"/>">PRODUCT
							LIST</a></li>
				</c:if>

				<c:if test="${pageContext.request.userPrincipal.name == 'admin'}">
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">ADD <span class="caret"></span></a>
						<ul class="dropdown-menu"
							style="margin: 0px; background-color: black;">

							<li class="btn-success"><a
								href="<c:url value="/admin/addProduct" />"
								style="margin: 0px; color: black; padding-bottom: 11px; width: 158px">Add
									Product</a></li>
							<li class="btn-success"><a
								href="<c:url value="/addCategory" />"
								style="margin: 0px; color: white; padding-bottom: 11px;">Add
									Category</a></li>
							<li class="btn-success"><a
								href="<c:url value="/addSupplier" />"
								style="margin: 0px; color: white; padding-bottom: 11px;">Add
									Supplier</a></li>
						</ul></li>



					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">VIEW <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="<c:url value="/prolist" />">View all
									Products</a></li>
							<li><a href="<c:url value="/suplist" />">View all
									Suppliers</a></li>
							<li><a href="<c:url value="/catlist" />">View all
									Categories</a></li>
						</ul></li>
				</c:if>



			</ul>

		</div>

	</div>
	</nav>
	<div id="myModal" class="modal fade" role="dialog">
		<div class="model-dialog">
			<div class="modal-content">

				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<div class="modal-title">
					<h4>ABOUT</h4>
					<div class="modal-header">
						<h5>
							<b>Lightning Musicals</b>
						</h5>
					</div>

				</div>
				<div class="modal-body">

					<p>Lightning Musicals (www.lightningmusicals.com) is India's
						largest direct online retailer for musical instruments and pro
						audio equipment. We also offer a wide range of services to the
						music entertainment industry. The Lightning Musicals brand is well
						known for our focus on customer service and it has become one of
						the most trusted names in the industry. Lightning Musicals
						maintains very healthy tie-ups with India's top performing
						individual artists, bands and music producers and we vow to
						deliver the same service to all musicians in India. Our vision is
						to dominate all aspects of the music industry including music
						creation, production, education, consumption, artist relations,
						curation and culture. Lightning Musicals was started in 2012.
						Lightning Musicals has worked with many reputable brands including
						Walt Disney Studio, Sony Music, Vishesh Films, Pepsi MTV Indies,
						Harman Professional India, and Gibson. Music Trades Magazine, USA,
						ranked BAJAAO.com among the world's top 20 music retailers. Our
						Entertainment division conceptualised and executed India’s first
						full-scale two-day heavy metal festival ‘BIG69’ in Mumbai ,
						bringing down several international and Indian bands to play
						across three stages.</p>
				</div>
				<div class="modal-footer">
					<b>@Lightning Musicals</b>
				</div>
				<button type="button" class="btn btn-warning" data-dismiss="modal">close</button>
			</div>
		</div>
	</div>


	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<!--  	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>  -->
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<!--     <script src="./resources/js/bootstrap.min.js"></script> -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.js"></script>
	<!-- 	<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
	<script src="https://code.jquery.com/ui/1.10.4/jquery-ui.js"></script> -->
	<!-- Page Preloading -->
	<script src="/resources/page-preloading.js"></script>


	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script src="./resources/js/bootstrap.min.js"></script>

	<!-- <script>
		jQuery(document).ready(function($) {

			// site preloader -- also uncomment the div in the header and the css style for #preloader
			$(window).load(function() {
				$('#preloader').fadeOut('slow', function() {
					$(this).remove();
				});
			});

		});
	</script> -->

</body>
</html>