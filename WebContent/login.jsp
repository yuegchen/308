<!DOCTYPE html >
<html xmlns="http://www.w3.org/1999/xhtml" >
<title>W3.CSS Template</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body,h1,h2,h3,h4,h5,h6 {font-family: "Raleway", Arial, Helvetica, sans-serif}
</style>
<head>
   
<script language="javascript" type="text/javascript">
// <!CDATA[

function Button1_onclick() {
	window.open("UserCenter.jsp","_self");
}
function Button2_onclick() {
    window.open("AdminCenter.jsp","_self");
}
function Button3_onclick() {
    window.open("register.jsp","_self");
}

// ]]>
</script>
</head>
<div class="w3-bar w3-white w3-large">
  <form action="index.html" >
  	<button class="w3-bar-item w3-button w3-yellow w3-mobile" type="submit"><i class="w3-margin-right"></i> DogOwner</button>
  </form>
  </div>
<body style="font-size: 12pt; text-align: center" bgcolor="LightYellow">
        <br />
        <img src="dog.jpg" width="1200" height="600"/><br />
        <br />
        
        <form name="myForm" action="login" method="post">

        <span style="font-size: 10pt">User ID :</span>
        <input id="Text1" name="login" type="text" />
        &nbsp; <span style="font-size: 10pt">Password:</span>
        <input id="Password1" name="userpasswd" type="password" />
        &nbsp;
        
        &nbsp;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <input id="Button1" style="width: 70px" type="button" value="User" onclick="return Button1_onclick()" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <input id="Button1" style="width: 70px" type="button" value="Admin" onclick="return Button2_onclick()" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <input id="Button2" style="width: 70px" type="button" value="Register" onclick="return Button3_onclick()" /><br />
        <br />
        </form>
        
        <span style="font-size: 9pt">
            <br />
            Yuege Chen, Cheng Ji, Seward Chen<br />
            Department of Computer Science, State University of New York at Stony Brook</span></strong></span><span
                style="font-size: 9pt"> </span>

</body>
</html>
