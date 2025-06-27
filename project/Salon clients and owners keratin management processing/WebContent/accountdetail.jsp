<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Account Details</title>
 <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="UTF-8" />
    <meta name="keywords"
        content="Flat lay login form Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
     <link href="//fonts.googleapis.com/css2?family=Nunito:wght@300;400;600&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="account/css/style.css" type="text/css" media="all" />
    <script src="https://kit.fontawesome.com/af562a2a63.js" crossorigin="anonymous"></script>
    <style>
        /* Submit button hover effect */
        .btn.btn-style:hover {
            background-color: #007bff;
            color: white;
            cursor: pointer;
        }

        /* Go Back button hover effect */
        .btn.btn-style.mt-3:hover {
            background-color: #dc3545;
            color: white;
            cursor: pointer;
        }

        /* Add margin to create space between the buttons */
        .btn.btn-style.mt-3 {
            margin-top: 15px; /* Adds space between buttons */
        }
    </style>
</head>
<body>
 <section class="w3l-workinghny-form">
        <!-- /form -->
        <div class="workinghny-form-grid">
            <div class="wrapper">
                <div class="logo">
                    <h1><a class="brand-logo" href="index.html">Account Details</a></h1>
                </div>
                <div class="workinghny-block-grid">
                    <div class="form-right-inf">
                        <div class="login-form-content">
                        <form action="AcceptAmount" class="signin-form" method="post">
                            <div class="one-frm">
                                    <input type="text" name="name" pattern="[A-Za-z .]+" autocomplete="off" placeholder="Name" required="" autofocus>
                                </div>
                                <div class="one-frm">
                                    <input type="email" name="Email" placeholder="Email" autocomplete="off" pattern="^[a-zA-Z0-9.]+@gmail\.com$"  required="" autofocus>
                                </div>
                               <div class="one-frm">
                                    <input type="text" name="accnumber"  pattern="[0-9]{16}" autocomplete="off" title="Enter 16 digit number" placeholder="Account Number" required="" autofocus>
                                </div>
                                <div class="one-frm">
                                    <input type="text" name="batch" autocomplete="off" placeholder="Batch Details" required="" autofocus>
                                </div>
                                <button class="btn btn-style mt-3">Submit</button>
                                <button class="btn btn-style mt-3" onclick="window.location.href='saloonhome.jsp';">Go Back</button>

                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</body>
</html>
