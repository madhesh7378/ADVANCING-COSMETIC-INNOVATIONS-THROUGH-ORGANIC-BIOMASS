<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*"%>
<%@ page import="dbconnection.Dbconn"%>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.PreparedStatement" %> 
<%@ page import="java.sql.Blob" %>
<%@ page import="java.util.Random" %>
<%@ page import="java.sql.Connection" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
.column-wrapper {
  margin-bottom: 10px; 
  overflow: hidden;
}
.column-border {
  border: 1px solid #ccc;
  padding: 10px;
  position: relative;
  margin-bottom: 30px;
  margin-right: 4px;
  width: 91%; /* Set fixed width for each column */
  height: 500px;
}
.item {
  height: 65%;
}
.add {
  position: absolute;
  bottom: 10px;
  left: 50%;
  transform: translateX(-50%);
  width: 100%;
}
.clearfix::after {
  content: "";
  display: table;
  clear: both;
}
h4 {
  text-align: center;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Skin Care Products</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta property="og:title" content="Vide" />
<meta name="keywords" content="Big store Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="doc/css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href="doc/css/style.css" rel='stylesheet' type='text/css' />
<script src="doc/js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="doc/js/move-top.js"></script>
<script type="text/javascript" src="doc/js/easing.js"></script>
<script type="text/javascript">
jQuery(document).ready(function($) {
  $(".scroll").click(function(event) {
    event.preventDefault();
    $('html,body').animate({ scrollTop: $(this.hash).offset().top }, 1000);
  });
});
</script>
<link href="doc/css/font-awesome.css" rel="stylesheet"> 
<link href='//fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Noto+Sans:400,700' rel='stylesheet' type='text/css'>
<script src="doc/js/jstarbox.js"></script>
<link rel="stylesheet" href="doc/css/jstarbox.css" type="text/css" media="screen" charset="utf-8" />
<script type="text/javascript">
jQuery(function() {
  jQuery('.starbox').each(function() {
    var starbox = jQuery(this);
    starbox.starbox({
      average: starbox.attr('data-start-value'),
      changeable: starbox.hasClass('unchangeable') ? false : starbox.hasClass('clickonce') ? 'once' : true,
      ghosting: starbox.hasClass('ghosting'),
      autoUpdateAverage: starbox.hasClass('autoupdate'),
      buttons: starbox.hasClass('smooth') ? false : starbox.attr('data-button-count') || 5,
      stars: starbox.attr('data-star-count') || 5
    }).bind('starbox-value-changed', function(event, value) {
      if (starbox.hasClass('random')) {
        var val = Math.random();
        starbox.next().text(' ' + val);
        return val;
      }
    });
  });
});
</script>
</head>
<body>
<%
Connection conn = Dbconn.getconnection();
String qry = "select * from admin_files";
PreparedStatement ps = conn.prepareStatement(qry);
ResultSet rs = ps.executeQuery();
%>
<%@ page session="true" %>
<%
String email = (String) session.getAttribute("userEmail");
%>
<div class="header">
  <div class="container">
    <div class="logo">
      <h1><a href="index.html"><b>T<br>H<br>E</b>Big Store<span>The Best Hair Products</span></a></h1>
    </div>
    <div class="nav-top">
      <nav class="navbar navbar-default">
        <div class="navbar-header nav_2">
          <button type="button" class="navbar-toggle collapsed navbar-toggle1" data-toggle="collapse" data-target="#bs-megadropdown-tabs">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
        </div> 
        <div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
          <ul class="nav navbar-nav">
            <li class="active"><a href="index.html" class="hyper"><span>Home</span></a></li>
            <li><a href="displaycart.jsp?" class="hyper"><span>Cart Items</span></a></li>
            <li><a href="index.html" class="hyper"><span>LogOut</span></a></li>
          </ul>
        </div>
      </nav>
      <div class="clearfix"></div>
    </div>
  </div>			
</div>
<div data-vide-bg="doc/video/video">
  <div class="container">
    <div class="banner-info">
      <h3>Make The Waste Hair As A Reusable Product And Get More Attractive Without Skin Allergy</h3>
      <div class="search-form"></div>
    </div>
  </div>
</div>
<script>window.jQuery || document.write('<script src="doc/js/vendor/jquery-1.11.1.min.js"><\/script>')</script>
<script src="doc/js/jquery.vide.min.js"></script>
<div class="content-top">
  <div class="container">
    <div class="spec">
      <h3>Products</h3>
      <div class="ser-t">
        <b></b>
        <span><i></i></span>
        <b class="line"></b>
      </div>
    </div>
    <div class="tab-head">
      <nav class="nav-sidebar">
        <ul class="nav tabs">
          <li class="active"><a href="#tab1" data-toggle="tab">Staples</a></li>
        </ul>
      </nav>
      <div class="container">
        <div class="row">
          <%
          while (rs.next()) {
          %>
          <div class="col-md-4 mb-4">
            <div class="column-wrapper">
              <div class="column-border">
                <div class="item">
                  <img src="<%= rs.getString(10) %>" style="display: block; margin: 0 auto; width: 160px; height: 160px;"><br>
                  <h4 style="width: 100%; text-align: center; font-weight:bold;"><%= rs.getString(2) %></h4><br>
                 
                  <%= rs.getString(3) %><br>
                  <h4><b>Rupees:- <%= rs.getString(5) %></b></h4>
                  <div class="add">
                    <a href="cartdetail.jsp?id=<%= rs.getString(1) %>" class="btn btn-success">View More</a>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <% } %>
        </div>
      </div>
    </div>
  </div>
</div>
<br>
<div class="footer">
  <div class="container">
    <div class="col-md-3 footer-grid">
      <h3>About Us</h3>
      <p>We're passionate about transforming your haircare routine with top-quality products. Our mission is to provide the best for your hair.</p>
    </div>
  </div>
</div>
<script src="doc/js/bootstrap.min.js"></script>
<script src="doc/js/jquery.easing.min.js"></script>
</body>
</html>
