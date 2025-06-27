<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="contents/css/style.css" rel='stylesheet' type='text/css' />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Catchy Login and Registration Widget Responsive, Login form web template, Sign up Web Templates, Flat Web Templates, Login signup Responsive web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<script src="contents/js/jquery-1.11.1.min.js"></script> 
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,700,600,300italic,300' rel='stylesheet' type='text/css'>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Collection Management</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
<title>Insert title here</title>
</head>
<script>
function togglePassword(fieldId, iconId) {
    var field = document.getElementById(fieldId);
    var icon = document.getElementById(iconId);

    if (field.type === 'password') {
        field.type = 'text';
        icon.classList.remove('fa-eye');
        icon.classList.add('fa-eye-slash');
    } else {
        field.type = 'password';
        icon.classList.remove('fa-eye-slash');
        icon.classList.add('fa-eye');
    }
}
</script>

<style>
        .login-bottom a.view-status {
            font-size: 0.9em;
            color: #ffffff;
            background: #EFC509;
            outline: none;
            border: none;
            cursor: pointer;
            padding: 10px 20px;
            -webkit-appearance: none;
            transition: background 0.5s, color 0.5s;
            text-decoration: none;
            display: inline-block;
            margin: 5px;
          
        }
        .login-bottom a.view-status:hover {
            background: #2E4A84;
            color: #ffffff;
        }
        .input-with-icon {
            position: relative;
        }
        .input-group i {
    position: absolute;
    right: 5px;
    top: 30%;
    transform: translateY(-50%);
    color: #999;
}
.input-group .toggle-password {
    position: absolute;
    top: 30%;
    right: 10px;
    transform: translateY(-50%);
    cursor: pointer;
    color: #ccc;
}
.input-with-icon input[type="text"] {
    padding-left: 30px; 
}
        .login-button {
            font-size: 0.9em;
            color: #ffffff;
            background: #EFC509;
            outline: none;
            border: none;
            cursor: pointer;
            padding: 10px 20px;
            -webkit-appearance: none;
            transition: background 0.5s, color 0.5s;
            margin: 5px;
        }
        .input-with-icon i {
            position: absolute;
            left: 3px;
            top: 30%;
            transform: translateY(-50%);
            color: #aaa;
        }
        .input-with-icon input[type="text"] {
            padding-left: 30px;
        }
        input[type="submit"],
.login-bottom a {
    font-size: 0.9em;
    color: #ffffff;
    background: #EFC509;
    outline: none;
    border: none;
    cursor: pointer;
    padding: 10px 30px; /* Adjust padding as needed */
    -webkit-appearance: none;
    transition: background 0.5s, color 0.5s;
    text-decoration: none;
    display: inline-block;
    margin: 5px;
}
.password-container {
    position: relative;
    display: inline-block;
    width: 100%;
}

.toggle-password {
    position: absolute;
    top: 30%;
    right: 50px; /* Adjust as needed */
    transform: translateY(-50%);
    cursor: pointer;
    color: #ccc;
}
input[type="submit"]:hover,
.login-bottom a:hover {
    background: #2E4A84;
    color: #ffffff;
}
.input-group .toggle-password {
    position: absolute;
    top: 50%;
    right: 10px;
    transform: translateY(-50%);
    cursor: pointer;
    color: #ccc;
}

.login-button:hover {
    background: #2E4A84;
    color: #ffffff;
    }
    .container {
    margin-bottom: 30; /* Remove any bottom margin */
    padding-bottom: 30; /* Remove any bottom padding */
}

  .go-back-btn {
    position: fixed;
    bottom: 10px;
    right: 10px;
    background-color: #EFC509;
    color: white;
    border: none;
    padding: 10px 20px;
    cursor: pointer;
    font-size: 1em;
    transition: background-color 0.3s ease, transform 0.3s ease;
  }

  .go-back-btn:hover {
    background-color: #c79d08; /* Darken the background color on hover */
    transform: scale(1.1); /* Slightly enlarge the button */
  }
    </style>
<body>
<h1>COLLECTION MANAGEMENT LOGIN AND REGISTER</h1>
	<!-- /register -->	
		<div class="container w3l">
  		    <span title="REGISTER" class="button"> +</span>
		  <div class="content">
			<div class="head">
			  <h3>Register</h3>
			</div>
			<div class="body">
			    <div class="login-top sign-top w3-agile">
							 <form action="CollectionManagementRegister" method="post">
									<input type="text" name="cName" class="name active" autocomplete="off" placeholder="Employee Name" minlength="0" maxlength="15" pattern="[A-Za-z ]*" required="">
									<input type="text" name="cEmail" class="email" autocomplete="off" placeholder="Employee Email" pattern="^[a-zA-Z0-9.]+@gmail\.com$" required="">
									<input type="text" name="cPhone" class="phone" autocomplete="off" title="Enter 10 Digit Phone Number"  placeholder="Employee Phone" pattern="^[6789][0-9]{9}" required="">
									 <div class="input-with-icon">
                        <i class="far fa-user-circle"></i>
                        <input type="text" name="cid" class="id" autocomplete="off" placeholder="Employee Id" title="Enter 4 Digit Employee ID" pattern="[0-9]{4}" min="4" max="1234" maxlength="4" required="">
                    </div>
												<input type="submit" style="   font-size: 0.9em; color: #fff;
    background: #EFC509;
    outline: none;
    border: none;
    cursor: pointer;
    padding: 10px 20px;
    -webkit-appearance: none;" value="submit">
										</div>
									<div class="login-bottom">										
									<div class="clear"></div>
								</div>	
								</form>
							</div>
			</div>
		  </div>
		</div>
		<script src="http://code.jquery.com/jquery-2.1.4.min.js"></script> 
		<script>
		$('.button').click(function (e) {
		  e.preventDefault();
		  $(this).parent().toggleClass('expand');
		  $(this).parent().children().toggleClass('expand');
		});
		</script>
			<div class="login-inner">
				<div class="log-head">
							<h2>Login</h2>
						</div>
								<div class="login-top">
								<form action="CollectionLogin" method="post">
									<input type="text" name="Email" autocomplete="off" class="email" placeholder="Email" required=""/>
			<div class="password-container">
    <input type="password" name="Password" autocomplete="off" id="logpassword" class="password" placeholder="Password" required=""/>
    <i class="fas fa-eye toggle-password" id="toggleLogPasswordBtn" onclick="togglePassword('logpassword', 'toggleLogPasswordBtn')"></i>
</div>


								<!-- 	<div class="login-bottom">
									<ul style="list-style-type: none; padding: 0;">
									<li>  <a href="cmstatusview.jsp" class="view-status" 
                   onmouseover="this.style.background='#2E4A84'; this.style.color='#ffffff';"
                   onmouseout="this.style.background='#EFC509'; this.style.color='#ffffff';">
                   View Status
                </a></li>

       <li style="float: right;">
    <input type="submit" value="LOGIN" class="login-button"/>
</li>
									</ul>	
									</div> -->
									
																	
<a href="cmstatusview.jsp" class="login-button" role="button" style="float:left">View Status</a>
<input type="submit" value="LOGIN" class="btn-common" style="float:right"/>
											</form>
								<div class="clearfix"></div>
													
							</div>
						</div>
	<div class="clearfix"> </div>	
	 <!-- Add this Go Back button at the bottom-right of the page -->
<a href="index.html">
  <button style="position: fixed; bottom: 10px; right: 10px; background-color: #EFC509; color: white; border: none; padding: 10px 20px; cursor: pointer; font-size: 1em;">
    Go Back
  </button>
</a>
 </body>
</html>