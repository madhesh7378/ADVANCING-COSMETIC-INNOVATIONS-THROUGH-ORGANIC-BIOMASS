<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <title>Process Analysis File Upload</title>
    <link rel="stylesheet" href="upload/css/style.css">
    <link href='//fonts.googleapis.com/css?family=Open+Sans:400,300italic,300,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
    <link href='//fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="File Upload widget Widget Responsive, Login Form Web Template, Flat Pricing Tables, Flat Drop-Downs, Sign-Up Web Templates, Flat Web Templates, Login Sign-up Responsive Web Template, Smartphone Compatible Web Template, Free Web Designs for Nokia, Samsung, LG, Sony Ericsson, Motorola Web Design" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<style>
  .action-btn {
        font-size: 0.9em;
        color: #fff;
        background: #EFC509;
        outline: none;
        border: none;
        cursor: pointer;
        padding: 10px 20px;
        -webkit-appearance: none;
        transition: background 0.5s, color 0.5s;
        text-decoration: none; /* Remove underline from links */
        display: inline-block; /* Ensure elements are inline */
        vertical-align: middle; /* Align vertically */
        margin-right: 10px; /* Adjust margin between elements */
    }
     .action-btn,
    .cancel-btn {
        font-size: 0.9em;
        color: #fff;
        background: #EFC509;
        outline: none;
        border: none;
        cursor: pointer;
        padding: 10px 20px;
        -webkit-appearance: none;
        transition: background 0.5s, color 0.5s;
        text-decoration: none;
        display: inline-block;
        vertical-align: middle;
        margin-right: 10px;
        border-radius: 3px;
        }
    .cancel-btn {
    font-size: 0.9em;
    color: #fff;
    background: #EFC509;
    outline: none;
    border: none;
    cursor: pointer;
    padding: 10px 20px;
    -webkit-appearance: none;
    transition: background 0.5s, color 0.5s;
    text-decoration: none;
    display: inline-block;
    vertical-align: middle;
    float: right; 
}
.cancel-btn:hover {
    background: #2E4A84;
    float: right;
}
    .action-btn:hover {
        background: #2E4A84;
    }
    p
    {
    text-align:center;
    }
    body {
    background: url("images/the.jpg");
    background-size: cover;
    font-family: 'Open Sans', sans-serif;
    /* Optional: Fallback background color */
    background-color: #105469;
}
</style>
</head>
<body>
<h1>FILE UPLOAD</h1>
    <div class="agile-its">
        <h2>File Upload</h2>
        <div class="w3layouts">
            <p>Upload Your Melanin Dataset File Here </p>
            <div class="photos-upload-view">
                <form id="upload" action="ProcessMelaninUpload" method="POST" enctype="multipart/form-data">
                    <input type="hidden" id="MAX_FILE_SIZE" name="MAX_FILE_SIZE" value="300000" />
                    <div class="agileinfo">
                        <input type="submit" class="choose" value="Choose file..">
                        <input type="file" id="fileselect" name="fileselect"/>
                    </div>
                </form>
                <div id="messages">
                    <p>Status Messages</p>
                </div>
                <div>
                 <div style="float: left;">
                    <input type="submit" class="action-btn" value="     Upload              " onclick="uploadFile()" />
                </div>
                <div style="float: right;">
                    <a href="processanalysishome.jsp" class="cancel-btn">Cancel</a>
                </div>
                </div>
            </div>
            <div class="clearfix"></div>
            <script src="upload/js/filedrag.js"></script>
        </div>
    </div>
    <script type="text/javascript" src="upload/js/jquery.min.js"></script>
</body>
</html>
<script>
    function uploadFile() {
        var fileInput = document.getElementById('fileselect');
        if (!fileInput.files || fileInput.files.length === 0) {
            alert('Please select a file to upload.');
            return;
        }
        var form = document.getElementById('upload');
        form.submit();
    }
</script>
