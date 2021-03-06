<!DOCTYPE html>
<html>
<title>User Registration</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Roboto'>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
    html, body, h1, h2, h3, h4, h5, h6 {
        font-family: "Roboto", sans-serif
    }
</style>
<style>
    body {
        font-family: Arial, Helvetica, sans-serif;
    }
    
    * {
        box-sizing: border-box
    }
    /* Full-width input fields */
    
    input[type=text],
    input[type=password] {
        width: 100%;
        padding: 15px;
        margin: 5px 0 22px 0;
        display: inline-block;
        border: none;
        background: #f1f1f1;
    }
    /* Add a background color when the inputs get focus */
    
    input[type=text]:focus,
    input[type=password]:focus {
        background-color: #ddd;
        outline: none;
    }
    /* Set a style for all buttons */
    
    button {}
    
    button:hover {
        opacity: 1;
    }
    /* Extra styles for the cancel button */
    
    .signupbtn {
        color: white;
        padding: 14px 20px;
        margin: 8px 0;
        border: none;
        cursor: pointer;
        width: 100%;
        opacity: 0.9;
        float: left;
        width: 50%;
        padding: 14px 20px;
        background-color: #4CAF50;
    }
    /* Float cancel and signup buttons and add an equal width */
    
    .cancelbtn {
        background-color: #f44336;
        color: white;
        padding: 14px 20px;
        margin: 8px 0;
        border: none;
        cursor: pointer;
        width: 100%;
        opacity: 0.9;
        float: left;
        width: 50%;
    }
    /* Add padding to container elements */
    
    .container {
        padding: 16px;
    }
    /* The Modal (background) */
    
    .modal {
        display: none;
        /* Hidden by default */
        position: fixed;
        /* Stay in place */
        z-index: 1;
        /* Sit on top */
        left: 0;
        top: 0;
        width: 100%;
        /* Full width */
        height: 100%;
        /* Full height */
        overflow: auto;
        /* Enable scroll if needed */
        background-color: #474e5d;
        padding-top: 50px;
    }
    /* Modal Content/Box */
    
    .modal-content {
        background-color: #fefefe;
        margin: 5% auto 15% auto;
        /* 5% from the top, 15% from the bottom and centered */
        border: 1px solid #888;
        width: 80%;
        /* Could be more or less, depending on screen size */
    }
    /* Style the horizontal ruler */
    
    hr {
        border: 1px solid #f1f1f1;
        margin-bottom: 25px;
    }
    /* The Close Button (x) */
    
    .close {
        position: absolute;
        right: 35px;
        top: 15px;
        font-size: 40px;
        font-weight: bold;
        color: #f1f1f1;
    }
    
    .close:hover,
    .close:focus {
        color: #f44336;
        cursor: pointer;
    }
    /* Clear floats */
    
    .clearfix::after {
        content: "";
        clear: both;
        display: table;
    }
    /* Change styles for cancel button and signup button on extra small screens */
    
    @media screen and (max-width: 300px) {
        .cancelbtn,
        .signupbtn {
            width: 100%;
        }
    }
</style>

<body class="w3-light-grey">

    <!-- Navigation Bar -->
    <div class="w3-bar w3-white w3-large">

        <input type="hidden" name="login" value="-">
        <button class="w3-bar-item w3-button w3-yellow w3-mobile" type="submit" onclick="return Index_onclick()"><i class="w3-margin-right"></i> DogOwner</button>
        <button class="w3-bar-item w3-button w3-mobile" type="submit" onclick="return About_onclick()"><i class="w3-margin-right"></i>About Us</button>
        <button class="w3-bar-item w3-button w3-mobile" type="submit" onclick="return Feedback_onclick()"><i class="w3-margin-right"></i>Leave Feedback</button>

    </div>
    <script language="javascript" type="text/javascript">
        function Button1_onclick() {
            window.open("login.jsp", "_self");
        }

        function Button2_onclick() {
            window.open("admincenter.html", "_self");
        }

        function Button3_onclick() {
            window.open("register.jsp", "_self");
        }

        function About_onclick() {
            window.open("about.jsp", "_self");
        }

        function Index_onclick() {
            window.open("index.jsp", "_self");
        }

        function Feedback_onclick() {
            window.open("feedback.jsp", "_self");
        }
    </script>

    <!-- Page Container -->
    <div class="w3-content w3-margin-top" style="max-width:1400px;">
        <!-- The Grid -->
        <div class="w3-content w3-padding">
            <div class="w3-container w3-padding-32">
                <div class="w3-container w3-card w3-white w3-margin-bottom">
                    <h2 class="w3-text-grey w3-padding-16"><i class="fa fa-suitcase fa-fw w3-margin-right w3-xxlarge w3-text-teal"></i>Register </h2>
                    <div class="w3-container">
                        <button class="w3-button w3-dark-grey" type="button" name="back" onclick="history.back()">Back</button>
                        <form id="register" action="register" style="border:1px solid #ccc">
                            <div class="container">
                                <h1>Sign Up</h1>
                                <p>Please fill in this form to create an account.</p>
                                <hr>
                                <label for="email"><b>Email</b></label>
                                <input type="text" placeholder="Enter Email" name="email" required>

                                <label for="name"><b>Your name</b></label>
                                <input type="text" placeholder="Enter your name" name="name" required>

                                <label for="address"><b>Your Address</b></label>
                                <input type="text" placeholder="Enter your address" name="address" required>

                                <label for="psw"><b>Password</b></label>
                                <input type="password" placeholder="Enter Password" name="psw" required>

                                <label for="psw-repeat"><b>Repeat Password</b></label>
                                <input type="password" placeholder="Repeat Password" name="psw-repeat" required>

                                <label for="phone"><b>Phone</b></label>
                                <input type="text" placeholder="Enter Phone" name="phone" required>

                                <label>
                                    <input type="checkbox" checked="checked" name="remember" style="margin-bottom:15px"> Remember me
                                </label>

                                <p>By creating an account you agree to our <a href="#" style="color:dodgerblue">Terms & Privacy</a>.</p>

                                <div class="clearfix">
                                    <button type="button" class="cancelbtn" onclick="history.back()">Cancel</button>
                                    <button type="submit" class="signupbtn" onclick="return Button1_onclick()">Sign Up</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                <footer class="w3-padding-32 w3-white w3-center w3-margin-top">
                    <div class="w3-xlarge w3-padding-16">
                        <i class="fa fa-facebook-official w3-hover-opacity"></i>
                        <i class="fa fa-instagram w3-hover-opacity"></i>
                        <i class="fa fa-snapchat w3-hover-opacity"></i>
                        <i class="fa fa-pinterest-p w3-hover-opacity"></i>
                        <i class="fa fa-twitter w3-hover-opacity"></i>
                        <i class="fa fa-linkedin w3-hover-opacity"></i>
                    </div>
                    <p>CSE 308 2018 Spring <a href="" target="_blank" class="w3-hover-text-green">Semester Project</a></p>
                </footer>
            </div>
            <!-- End Grid -->
            <!-- Page content -->

</body>
<script type="text/javascript">
    $(document).ready(function() {
        $("#register").submit(function() {
            $.ajax({
                url: 'login',
                type: 'POST',
                dataType: 'json',
                data: $('#register').serialize(),
                success: function(data) {
                    if (data.status == "failed") {
                        alert("register failed");
                    }
                }
            });
        });
    });
</script>
</html>