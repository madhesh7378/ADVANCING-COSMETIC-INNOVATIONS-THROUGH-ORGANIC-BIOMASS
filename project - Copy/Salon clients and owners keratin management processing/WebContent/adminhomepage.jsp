<!DOCTYPE html>
<html lang="en">
<head>
<title>Admin Controll</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Controller Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="adminpage/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="adminpage/css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="adminpage/css/font-awesome.min.css" rel="stylesheet" type="text/css" media="all" />

<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
 <style>
       .navbar-brand {
            display: inline-block;
            float: none;
            text-align: center;
            padding: 15px 0;
            width: 100%;
        }
    .navbar-nav {
        display: flex;
        justify-content: space-around;
        width: 100%;
    }
    .navbar-nav > li {
        float: none;
    }
    .navbar-nav > li > a {
        padding: 15px 20px;
    }
</style>
    </style>
</head>
<body>
	<div class="banner">
		<div class="container">
			<nav class="navbar navbar-default">
				<div class="navbar-header navbar-left">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<h1><a class="navbar-brand" href="index.html">A<span>D</span>M<span>I</span>N</a></h1>
				</div>
				<div class="collapse navbar-collapse navbar-right" id="bs-example-navbar-collapse-1">
					    <ul class="nav navbar-nav">
          							
          							   <li><a href="adminfileupload.jsp">Upload Data</a></li>
          							   <li><a href="admlogstatus.jsp">Employee Status</a></li>
          							    <li><a href="adminselect.jsp">Saloon Data</a></li>
          							    <li><a href="cmadmindisp.jsp">Collection Management</a></li>
          							    <li><a href="selectprocess.jsp">Process Analysis</a></li>
          		
									<li><a href="index.html">LogOut</a></li>
</li>
         						 </ul>
       						 </div>
       						 </nav>
       						 </div>
				<div class="clearfix"></div>
				<div class="w3l_banner_info">
				<div class="slider">
					<div class="callbacks_container">
						<ul class="rslides" id="slider3">
							<li>
								<div class="w3l_banner_info">
									 <h4>Initiate</h4>
									<p>Hello we are here to help you </p>
								</div>
							</li>
							<li>
								<div class="w3l_banner_info">
									<h4>A Smart</h4>
									<p>Hello we are here to help you </p>
								</div>
							</li>
							<li>
								<div class="w3l_banner_info">
									 <h4>Leadership</h4>
									<p>Hello we are here to help you </p>
									
								</div>
							</li></ul>
					</div>
				</div>
				</div>			
					</div><div class="about" id="about">
        <div class="container">
			 <div class="wthree-about">
				  <div class="col-md-5 wthree-ab-left">
				      <img src="adminpage/images/ab.jpg" class="responsive" alt=" " />
                  </div>
				  <div class="col-md-7 wthree-ab-right">
				     <h2>A Few Words About Us</h2>
				     <p>The Core Aim Of Ours Is To Make The Cosmetics From The Nature Products And To Make The Chemical And Alergy Free Beauty Free Cosmetic
				     This Will Help Us To Maintain Our Skin To Protect From Chemical Products And Provide Nature Friendly Products</p>
				     <p>We Are Creating And Selling The Products From The Waste Hair And Make Those Waste Hair Into Use Full Products
				     This Will Helpus To Control The Waste Hair Decomposison Properly So That We Can Able To Deliver A Healthy Earh To Our Future</
					</div>
				  <div class="clearfix"></div>
			 </div>
		</div>
	</div>

<script type="text/javascript" src="adminpage/js/jquery-2.1.4.min.js"></script>
<script>
					$('ul.nav li.dropdown').hover(function() {
 						 $(this).find('.dropdown-menu').stop(true, true).delay(200).fadeIn(500);
							}, function() {
  								$(this).find('.dropdown-menu').stop(true, true).delay(200).fadeOut(500);
							});
				</script>
				<script src="adminpage/js/responsiveslides.min.js"></script>
							<script>
								// You can also use "$(window).load(function() {"
								$(function () {
								  // Slideshow 4
								  $("#slider3").responsiveSlides({
									auto: true,
									pager:true,
									nav:false,
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
							<script>
								// You can also use "$(window).load(function() {"
								$(function () {
								  // Slideshow 4
								  $("#slider4").responsiveSlides({
									auto: true,
									pager:false,
									nav:true,
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
<script type="text/javascript" src="adminpage/js/move-top.js"></script>
<script type="text/javascript" src="adminpage/js/easing.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script>
	<script src="adminpage/js/bootstrap.js"></script>
</body>
</html>