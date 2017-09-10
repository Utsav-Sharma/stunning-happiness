<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@include file="templates/Header.jsp"%>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>Lightning Electronics</title>



<link href="<c:url value="resources/css/custom.css"/>"
	rel="stylesheet">
<link href="<c:url value="resources/css/fluid-gallery.css"/>"
	rel="stylesheet">

<Style>
body {
	background: whitesmoke;
}
	 .carousel-inner > .item > img, .carousel-inner > .item > a > img {
        display: block;
        
        min-width: 100%;
        width: 1500px;
        max-width: 100%;
        
    }
</Style>


</head >
<body>





          
	
	
	
	
	
	<div class="container-fluid">
		<div id="mycarousel" class="carousel slide" data-ride="carousel"
			data-interval="3000">
			<ol class="carousel-indicators">
				<li data-target="#mycarousel" data-slide-to="0" class="active"></li>
				<li data-target="#mycarousel" data-slide-to="1"></li>
				<li data-target="#mycarousel" data-slide-to="2"></li>
			</ol>
			<div class="carousel-inner">
				<div class="item active">
					<img src="resources/img/s8.jpg">
					<div class="carousel-caption">
						<c:if test="${pageContext.request.userPrincipal.name == null}">
							<p>
								<a class="btn btn-lg btn-info"
									href="<c:url value="/signup"/>" role="button">Buy Now</a>
							</p>
						</c:if>
						
							<c:if test="${pageContext.request.userPrincipal.name != null}">
							<p>
								<a class="btn btn-lg btn-info" href="<c:url value="/prolist"/>"
									role="button">Buy Now</a>
							</p>
						</c:if>
						<h2 class="animated fadeInUpBig text-center text-black">Music</h2>

					</div>
				</div>
				<div class="item">
					<img src="resources/img/guit.jpg">
					<div class="carousel-caption">
						<c:if test="${pageContext.request.userPrincipal.name == null}">
							<p>
								<a class="btn btn-lg btn-info"
									href="<c:url value="/signup"/>" role="button">Buy Now</a>
							</p>
						</c:if>
						
							<c:if test="${pageContext.request.userPrincipal.name != null}">
							<p>
								<a class="btn btn-lg btn-info" href="<c:url value="/prolist"/>"
									role="button">Buy Now</a>
							</p>
						</c:if>
						
						<h2>Is</h2>
					</div>
				</div>
				<div class="item">
					<img src="resources/img/vio.jpg">
					<div class="carousel-caption">
						<c:if test="${pageContext.request.userPrincipal.name == null}">
							<p>
								<a class="btn btn-lg btn-info"
									href="<c:url value="/signup"/>" role="button">Buy Now</a>
							</p>
						</c:if>
						
							<c:if test="${pageContext.request.userPrincipal.name != null}">
							<p>
								<a class="btn btn-lg btn-info" href="<c:url value="/prolist"/>"
									role="button">Buy Now</a>
							</p>
						</c:if>
						<h2>Life</h2>
					</div>
				</div>
			</div>
			<a class="left carousel-control" href="#mycarousel" role="button"
				data-slide="prev"> <!--adding left button--> <span
				class="glyphicon glyphicon-chevron-left"></span> <!--for adding left image-->
			</a> <a class="right carousel-control" href="#mycarousel" role="button"
				data-slide="next"> <!--adding right button--> <span
				class="glyphicon glyphicon-chevron-right"></span> <!--for adding right image-->
			</a>
		</div>
	</div>
	<div class="container">
		<div class="jumbotron text-center">
			<!--used for highlightingsome content, paste ot above container to cover the whole width-->
			<h3>
				Music is moral law. It gies soul to the universe, wings to the mind,
				flight to the imagination and charm and gaiety to life and to
				everything.<b>-Plato</b>
			</h3>
			<a href="<c:url value="/signup"/>" class="btn btn-lg btn-primary"
				role="button"><span class="glyphicon glyphicon-user"></span>
				Sign Up</a>
			<!--button types are default, info, primary, info, warning, danger, link-->
			<a href="<c:url value="/login"/>" class="btn btn-lg btn-info"
				role="button"><span class="glyphicon glyphicon-music"></span>
				Sign in</a>
			<!--lg, sm or xs-->
			<!--Adding glyphicons from bootstrap-->
		</div>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-md-4">
				<!--you can use sm for stacking it at smaller size-->
				<a href="guitar.html"> <img src="resources/img/gt.jpg"
					class="img-circle" alt="sample pic" width="304" height="236">


				</a>
				<h3>
					<b>GUITAR</b>
				</h3>
				<p>
					I believe every guitar player inherently has something unique about
					their playing. They just have to identify what makes them different
					and develop it. <b>-Jimmy Page</b>
				</p>
				<a href="guitar.html" class="btn btn-danger" role="button">BUY</a>
				<!--you can add a button here!!! at the end of the para-->
			</div>
			<div class="col-md-4">
				<!--you can use sm for stacking it at smaller size-->
				<a href="piano.html"> <img src="./resources/img/pt.jpg"
					class="img-circle" alt="sample pic" width="304" height="236">
				</a>
				<h3>
					<b>MIDI and PORTABLE KEYBOARD</b>
				</h3>
				<p>
					“If, while at the piano, you attempt to form little melodies, that
					is very well; but if they come into your mind of themselves, when
					you are not practising, you may be still more pleased; for the
					internal organ of music is then roused in you. The fingers must do
					what the head desires; not the contrary.” <b>― Robert Schumann</b>
				</p>
				<a href="piano.html" class="btn btn-danger" role="button">BUY</a>
				<!--you can add a button here!!! at the end of the para-->
			</div>
			<div class="col-md-4">
				<!--you can use sm for stacking it at smaller size-->
				<a href="violin.html"> <img src="resources/img/vioo.jpg"
					class="img-circle" alt="sample pic" width="304" height="236">

				</a>
				<h3>
					<b>VIOLIN</b>
				</h3>
				<p>
					The cello is a hero because of its register - its tenor voice. It
					is a masculine instrument, whereas the violin is feminine because
					of its soprano pitch. When the cello enters in the Dvorak Concerto,
					it is like a great orator. <b>-Mstislav Rostropovich</b>
				</p>
				<a href="violin.html" class="btn btn-danger" role="button">BUY</a>
				<!--you can add a button here!!! at the end of the para-->
			</div>

		</div>
	</div>
	
	
	
	
	  <div class="col-lg-4 col-sm-6">
                    <a href="#galleryModal" class="gallery-box" data-toggle="modal" data-src="resources/img/a.jpg">
                        <img src="resources/img/a.jpg" class="img-responsive" alt="Image 4">
                        <div class="gallery-box-caption">
                            <div class="gallery-box-content">
                                <div>
                                    <i class="icon-lg ion-ios-search"></i>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
	
	
	 <div id="galleryModal" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog modal-lg">
        <div class="modal-content">
        	<div class="modal-body">
        		<img src="" id="galleryImage" class="img-responsive" />
        		<p>
        		    <br/>
        		    <button class="btn btn-primary btn-lg center-block" data-dismiss="modal" aria-hidden="true">Close <i class="ion-android-close"></i></button>
        		</p>
        	</div>
        </div>
        </div>
    </div>
	
	
	
	
	
	
	<div class="tz-gallery">

        <div class="row">

            <div class="col-sm-12 col-md-4">
                <a class="lightbox" href="resources/img/gt.jpg">
                    <img src="resources/img/gt.jpg" alt="Bridge">
                </a>
            </div>
            <div class="col-sm-6 col-md-4">
                <a class="lightbox" href="resources/img/pt.jpg">
                    <img src="resources/img/pt.jpg" alt="Park">
                </a>
            </div>
            <div class="col-sm-6 col-md-4">
                <a class="lightbox" href="resources/img/vioo.jpg">
                    <img src="resources/img/vioo.jpg" alt="Tunnel">
                </a>
            
        </div>

    </div>
</div>
	<div class="navbar navbar-inverse navbar-static-bottom">
		<!--adding footer-->
		<div class="container-fluid">
			<div class="navbar-text pull-left">
				<p>CopyRight &copy; 2017 Lightning Electronics.COM. Lightning Electronics |
					Lightning Electronics Private Limited</p>
			</div>
			<div class="navbar-text pull-right">
				<!--using font awesome for social media icons-->

				<a href="<c:url value="www.facebook.com"/>"> <i
					class="fa fa-facebook-square" aria-hidden="true"></i></a> <a
					href="<c:url value="www.twitter.com"/>"> <i
					class="fa fa-twitter fa-4x" aria-hidden="true"></i></a> <a
					href="<c:url value="www.googleplus.com"/>"> <i
					class="fa fa-google-plus fa-4x" aria-hidden="true"></i>
				</a> <a href="<c:url value="www.googleplus.com"/>"> <i
					class="fa fa-youtube-square-4px" id="1" aria-hidden="true"></i>
				</a>
			</div>

		</div>
	</div>
<p class="pull-right"><a href="#">Back to top</a></p>
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="./resources/js/bootstrap.min.js"></script>
</body>
</html>
