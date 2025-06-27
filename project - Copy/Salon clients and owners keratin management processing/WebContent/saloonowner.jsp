<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Shop Owner Registration</title>
<link href="contents/css/style.css" rel="stylesheet" type="text/css">
<link href="//fonts.googleapis.com/css?family=Open+Sans:400,700,600,300italic,300" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

<script type="text/javascript">
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

.input-group {
    display: flex;
    align-items: center;
    margin-bottom: 15px;
    position: relative;
}

.input-group i {
    position: absolute;
    left: 5px;
    top: 30%;
    transform: translateY(-50%);
    color: #999;
}

.input-group input {
    padding: 10px 10px 10px 35px; /* Adjusted padding for icon */
}

.input-group .toggle-password {
    position: absolute;
    top: 30%;
    right: 10px;
    transform: translateY(-50%);
    cursor: pointer;
    color: #ccc;
}

/* Container for password input */
.password-container {
    position: relative;
    margin-bottom: 20px;
}

.password-container input {
    width: calc(100% - 40px);
    padding-right: 40px;
    padding: 10px;
}

/* Lock icon for password input */
.password-container .fa-lock {
    position: absolute;
    left: 1px;
    top: 28%;
    transform: translateY(-50%);
    color: #999;
}

.login-bottom ul {
    list-style-type: none;
    padding: 0;
}

.login-bottom ul li {
    float: left;
    margin-right: 10px;
}

.login-bottom ul li:last-child {
    float: inline-block;
    margin-right: 10px;
}

input[type="submit"],
.login-bottom a {
    font-size: 0.9em;
    color: #ffffff;
    background: #EFC509;
    outline: none;
    border: none;
    cursor: pointer;
    padding: 10px 20px; /* Adjust padding as needed */
    -webkit-appearance: none;
    transition: background 0.5s, color 0.5s;
    text-decoration: none;
    display: inline-block;
    margin: 5px;
}

input[type="submit"]:hover,
.login-bottom a:hover {
    background: #2E4A84;
    color: #ffffff;
}

 .password-container .toggle-password {
    position: absolute;
    right: 50px;
    top: 30%;
    transform: translateY(-50%);
    color: #999;
    cursor: pointer;
    z-index: 1;
}
.btn-common {
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

.btn-common:hover {
    background: #2E4A84;
    color: #ffffff;
}
.login-bottom input[type="submit"]:hover,
.login-bottom a:hover {
    background: #ffffff;
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
</head>
<body>
    <h1>SHOP OWNER LOGIN AND REGISTER</h1>
    
    <div class="container w3l">
        <span title="REGISTER" class="button"> +</span>
        <div class="content">
            <div class="head">
                <h3>Register</h3>
            </div>
            <div class="body">
                <div class="login-top sign-top w3-agile">
                    <form action="SaloonOwner" method="post">
                        <!-- Name Input -->
                        <input type="text" name="Name" class="name active" autocomplete="off" placeholder="Your Name"
                            minlength="0" maxlength="15" pattern="[A-Za-z ]*" required="">
                        
                        <!-- Email Input -->
                        <input type="text" name="Email" class="email" autocomplete="off" placeholder="Email"
                            pattern="^[a-zA-Z0-9.]+@gmail\.com$" required="">
                        
                        <!-- Phone Input -->
                        <input type="text" name="Phone" class="phone" autocomplete="off" placeholder="Phone"
                            pattern="^[6789][0-9]{9}" required="">
                        
                        <!-- Shop Name Input with Icon -->
                        <div class="input-group">
                            <i class="fas fa-store"></i> <!-- Shop name icon -->
                            <input type="text" name="shopname" autocomplete="off" class="shop_name"
                                placeholder="Shop Name" required="">
                        </div>
                      
                        <div class="input-group">
                            <i class="fas fa-map-marker-alt"></i> <!-- Map marker icon -->
                            <input type="text" name="shopaddress" autocomplete="off" class="shopaddress"
                                placeholder="Shop Address" required="">
                        </div>
                        
                        <input type="submit" style="font-size: 0.9em; color: #fff; background: #EFC509; outline: none;
                            border: none; cursor: pointer; padding: 10px 20px; -webkit-appearance: none;"
                            value="Submit">
                    </form>
                </div>
                <div class="login-bottom">
                    <div class="clear"></div>
                </div>
            </div>
        </div>
    </div>
    
    <!-- jQuery Script -->
    <script src="http://code.jquery.com/jquery-2.1.4.min.js"></script>
   
    <script>
        $('.button').click(function (e) {
            e.preventDefault();
            $(this).parent().toggleClass('expand');
            $(this).parent().children().toggleClass('expand');
        });
    </script>
    
    <!-- Login Section -->
    <div class="login-inner">
        <div class="log-head">
            <h2>Login</h2>
        </div>
        <div class="login-top">
            <form action="SaloonLogin" method="post">
                <!-- Email Input for Login -->
                <input type="text" name="Email" class="email" autocomplete="off" placeholder="Email" required="">
               <!-- Password Input for Login with Lock Icon -->
<div class="password-container">
    <input type="password" id="logpassword" name="Password" class="Password" autocomplete="off"
        placeholder="Password" required="">
         <i class="fa fa-lock"></i>
    <i class="fas fa-eye toggle-password" id="toggleLogPasswordBtn" onclick="togglePassword('logpassword', 'toggleLogPasswordBtn')"></i>
</div>

<a href="statuscheck.jsp" class="btn-common" role="button" style="float:left">View Status</a>
<input type="submit" value="LOGIN" class="btn-common" style="float:right"/>

              <!--   <div class="login-bottom">
                    <ul style="list-style-type: none; padding: 0;">
                         Link to View Status 
                        <li style="float: left; margin-right: 10px;">
                            <a href="statuscheck.jsp" style="font-size: 0.9em; color: #ffffff; background: #EFC509;
                                outline: none; border: none; cursor: pointer; padding: 10px 20px; -webkit-appearance:
                                none; transition: background 0.5s, color 0.5s;" onmouseover="this.style.background='#2E4A84';
                                this.style.color='#ffffff';" onmouseout="this.style.background='#EFC509';
                                this.style.color='#ffffff';" role="button">View Status</a>
                        </li>
                        <li style="float: right;">
                            <input type="submit" value="LOGIN" style="font-size: 0.9em; color: #ffffff; background:
                                #EFC509; outline: none; border: none; cursor: pointer; padding: 10px 20px;
                                -webkit-appearance: none; transition: background 0.5s, color 0.5s;"
                                onmouseover="this.style.background='#2E4A84'; this.style.color='#ffffff';"
                                onmouseout="this.style.background='#EFC509'; this.style.color='#ffffff';" />
                        </li>
                    </ul>
                </div> -->
            </form>
            <div class="clearfix"></div>
        </div>
        <div class="clearfix"></div>
    </div>
     <!-- Add this Go Back button at the bottom-right of the page -->
<a href="index.html">
  <button style="position: fixed; bottom: 10px; right: 10px; background-color: #EFC509; color: white; border: none; padding: 10px 20px; cursor: pointer; font-size: 1em;">
    Go Back
  </button>
</a>
  
</body>
</html>
