<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Pay Amount</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<link href="amountreq/css/style.css" rel="stylesheet" type="text/css" media="all" />

<style>
    .wrap {
        width: 100%;
        text-align: center; /* Align center for demo purposes */
    }

    .content {
        display: inline-block;
        text-align: center; /* Align inner content to the center */
    }

    .search_box {
        margin: 0 auto; /* Center the search box */
        text-align: center; /* Align text inside box */
    }

    .buttons {
        margin-top: 10px; /* Adjust as needed */
        text-align: center; /* Center align buttons */
    }

    .btn {
        display: inline-block;
        padding: 10px 20px;
        background-color: #007bff; /* Blue color for the button */
        color: white;
        text-decoration: none;
        border: none;
        cursor: pointer;
        margin: 0 5px; /* Adjust spacing between buttons */
        text-align: center;
        font-size: 15px;
        border-radius: 5px;
    }

    .btn:hover {
        background-color: #0056b3; /* Darker shade of blue on hover */
    }

    .link {
        display: inline-block;
        padding: 8px 18px;
        background-color: #6c757d; /* Gray color for the link */
        color: white;
        text-decoration: none;
        border: none;
        cursor: pointer;
        text-align: center;
        font-size: 15px;
        border-radius: 5px;
        margin: 0 5px; /* Adjust spacing between buttons */
    }

    .link:hover {
        background-color: #5a6268; /* Darker shade of gray on hover */
    }

    input[type="text"] {
        width: 300px; /* Increase width */
        margin-bottom: 5px; /* Adjust margin */
        padding: 15px; /* Adjust padding as needed */
        font-size: 20px; /* Adjust font size as needed */
        border-radius: 5px;
        border: 1px solid #ccc;
        box-sizing: border-box; /* Ensures padding and border are included in the width */
    }

    h1 {
        font-size: 50px;
        padding-top: 50px;
        text-align: center;
        color: white;
    }

    .seach_bar {
        margin-bottom: 30px; /* Adjust margin */
    }
</style>


</head>
<body>
  <h1>PAY AND BUY THE PRODUCT</h1>
    <div class="wrap">
        <div class="content">
            <div class="logo">
              
            </div>
            <div class="seach_bar">
                <p>Enter The Amount In Rs..</p>
                <div class="search_box">
                    <form id="amountForm" action="FixAmount" method="POST">
                        <input type="text" name="amount" id="amountInput" size="50" placeholder="Enter The Amount In Rs..." autocomplete="off"><br>
                    </form>
                </div>
            </div>
            <div class="buttons" style="text-align:center;">
                <a href="adminhomepage.jsp" class="btn link">Go Back</a>
                <button type="button" id="submitButton" class="btn">Send</button>
            </div>
        </div>
    </div>

    <script>
        document.getElementById('submitButton').addEventListener('click', function() {
            var form = document.getElementById('amountForm');
            form.submit();
        });
    </script>
</body>
</html>
