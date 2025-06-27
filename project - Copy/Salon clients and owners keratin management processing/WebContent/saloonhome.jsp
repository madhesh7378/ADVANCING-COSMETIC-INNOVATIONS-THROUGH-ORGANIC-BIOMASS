<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="utf-8">
	<meta name="keywords" content="Barber Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
	Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
	<script type="application/x-javascript">
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<link rel="stylesheet" href="saloonhome/css/jquery-ui.css" />
	<link href="saloonhome/css/easy-responsive-tabs.css" rel='stylesheet' type='text/css' />
	<link rel="stylesheet" href="saloonhome/css/bootstrap.css">
	<link rel="stylesheet" href="saloonhome/css/style.css" type="text/css" media="all" /> 
	<link rel="stylesheet" href="saloonhome/css/fontawesome-all.css">
	<link href="//fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&amp;subset=devanagari,latin-ext" rel="stylesheet">
<title>Saloon Home Page</title>
</head>
<body>
<header>
	<div class="top-bar_sub container-fluid">
		<div class="top-forms text-left mt-3">
			<!--/nav-->
			<div class="header_top">
				<nav class="navbar navbar-expand-lg navbar-light bg-light">
					<button class="navbar-toggler navbar-toggler-right mx-auto" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
						aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
						<span class="navbar-toggler-icon"></span>
					</button>

					<div class="collapse navbar-collapse" id="navbarSupportedContent">
						<ul class="navbar-nav mx-auto">
							<li>
								<a class="nav-link scroll" href="index.html">Home</a>
							</li>
							<li>
							<a class="nav-link" href="saloonupload.jsp">Upload</a>
							</li>
							<li>
							<a class="nav-link" href="ownerview.jsp">DataSet Status</a>
							</li>
							<li>
							<a class="nav-link" href="amountstatus.jsp">Payment Status</a>
							</li>
	<li>
								<a class="nav-link" href="index.html">LogOut</a>
							</li>
</ul>
					</div>					
				</nav>
			</div>
		</div>
	</div>
</header>
<section class="banner" id="home">
	<div class="callbacks_container">
		<ul class="rslides" id="slider3">
			<li>
				<div class="slider-info bg1">
					<div class="bs-slider-overlay">
					<div class="banner-text container">
						<h1 class="movetxt text-left agile-title text-uppercase">The Best Place For </h1>
						<h2 class="movetxt text-left mb-3 agile-title text-uppercase">Hair Salon </h2>							
					</div>
					</div>
				</div>
			</li>
			<li>
				<div class="slider-info bg2">
					<div class="bs-slider-overlay">
					<div class="banner-text container">
						<h4 class="movetxt text-left agile-title text-uppercase">Your Hair Beauty </h4>
						<h4 class="movetxt text-left mb-3 agile-title text-uppercase">Our Duty </h4>
					</div>
					</div>
				</div>
			</li>
		</ul>
	</div>
</section>
<section class="about py-5" id="about">
	<div class="container py-lg-3 py-2">
		<div class="heading text-center">
			<i class="fas fa-cut"></i>
			<h3 class="heading mb-sm-5 mb-3 text-uppercase">About us</h3>
		</div>
		<div class="row about-grids">
			<div class="col-lg-4 about-grid1 mb-lg-0 mb-5">
				<h3 class="text-uppercase">Welcome to our Hair Salon shop</h3>
				<p class="my-lg-4 my-3">Hairdressers are a wonderful breed. You work one on one with another human being, and the object is to make them feel so much better, and to look at themselves with a twinkle in their eye. </p>
				
			</div>
			
			</div>
		</div>
	</div>
</section>
<section class="newsletter text-center py-5">
	<div class="container py-lg-3">
		<div class="logo mb-5 text-center">
			<a class="navbar-brand" href="index.html">
				<i class="fas fa-cut"></i> Barber <span> Best Hair Salon</span></a> 
		</div>
	</div>
</section>
	<script type="text/javascript" src="saloonhome/js/jquery-2.2.3.min.js"></script>
	<script type="text/javascript" src="saloonhome/js/bootstrap.js"></script>
	<script src="saloonhome/js/easy-responsive-tabs.js"></script>
	<script>
		$(document).ready(function () {
			$('#horizontalTab').easyResponsiveTabs({
				type: 'default', 
				width: 'auto', 
				fit: true, 
				closed: 'accordion', 
				activate: function (event) { 
					var $tab = $(this);
					var $info = $('#tabInfo');
					var $name = $('span', $info);
					$name.text($tab.text());
					$info.show();
				}
			});
			$('#verticalTab').easyResponsiveTabs({
				type: 'vertical',
				width: 'auto',
				fit: true
			});
		});
	</script>
	<script type="text/javascript">
		$(window).load(function() {
			$("#flexiselDemo1").flexisel({
				visibleItems:1,
				animationSpeed: 1000,
				autoPlay: false,
				autoPlaySpeed: 3000,    		
				pauseOnHover: true,
				enableResponsiveBreakpoints: true,
				responsiveBreakpoints: { 
					portrait: { 
						changePoint:480,
						visibleItems: 1
					}, 
					landscape: { 
						changePoint:640,
						visibleItems:1
					},
					tablet: { 
						changePoint:768,
						visibleItems: 1
					}
				}
			});
			
		});
	</script>
	<script type="text/javascript" src="saloonhome/js/jquery.flexisel.js"></script>
	<script src="saloonhome/js/jquery-ui.js"></script>
	<script>
		$(function () {
			$("#datepicker,#datepicker1,#datepicker2,#datepicker3").datepicker();
		});
	</script>
	<script src="saloonhome/js/responsiveslides.min.js"></script>
	<script>
		// You can also use "$(window).load(function() {"
		$(function () {
			// Slideshow 4
			$("#slider3").responsiveSlides({
				auto: true,
				pager: true,
				nav: false,
				speed: 500,
				namespace: "callbacks",
				before: function () {
					$('.events').append("<li>before event fired.</li>");
				},
				after: function () {
					$('.events').append("<li>after event fired.</li>");
				}
			});

		});
	</script>
	<script src="saloonhome/js/SmoothScroll.min.js"></script>
	<script type="text/javascript" src="saloonhome/js/move-top.js"></script>
	<script type="text/javascript" src="saloonhome/js/easing.js"></script>
	<script type="text/javascript">
		jQuery(document).ready(function($) {
			$(".scroll").click(function(event){		
				event.preventDefault();
				$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
			});
		});
	</script>
	<script type="text/javascript">
		$(document).ready(function() {			
			$().UItoTop({ easingType: 'easeOutQuart' });
								
			});
	</script>
</body>
</html>