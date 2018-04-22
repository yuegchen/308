<html>
   <head>
      <title>CSE308</title>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
      <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
      <link rel="stylesheet" href="tabs.css"/>
      <!-- Leaflet CSS -->
      <link rel="stylesheet" href="https://unpkg.com/leaflet@1.3.1/dist/leaflet.css"
         integrity="sha512-Rksm5RenBEKSKFjgI3a41vrjkw4EVPlJ3+OiI65vTjIdo9brlAacEuKOiQ5OFh7cOI1bkDwLqdLw3Zg0cRJAAQ=="
         crossorigin=""/>
      <link rel="stylesheet" href="style.css"/>
      <!-- Leaflet JS -->
      <script src="https://unpkg.com/leaflet@1.3.1/dist/leaflet.js"
         integrity="sha512-/Nsx9X4HebavoBvEBuyp3I7od5tA0UzAxs+j83KgC8PU0kgB4XiK4Lfe4y4cgBtaRJQEIFCW+oC506aPT2L1zw=="
         crossorigin=""></script>
      <!-- My CSS -->
   </head>
   <script language="javascript" type="text/javascript">
	// <!CDATA[

	function About_onclick() {
		window.open("about.jsp","_self");
	}
	function Index_onclick() {
	    window.open("index.jsp","_self");
	}
	function Button3_onclick() {
	    window.open("register.jsp","_self");
	}
	function Feedback_onclick() {
	    window.open("feedback.jsp","_self");
	}

	// ]]>
	<%
	String username=(String)request.getSession().getAttribute("uname");
      %>
	</script>
   <body>
   	<div class="w3-bar w3-white w3-large">
         
            <button class="w3-bar-item w3-button w3-yellow w3-mobile" type="submit" onclick="return Index_onclick()"><i class="w3-margin-right"></i> DogOwners</button>
            
            <button class="w3-bar-item w3-button w3-mobile" type="submit" onclick="return About_onclick()"><i class="w3-margin-right"></i>About Us</button>
            <button class="w3-bar-item w3-button w3-mobile" type="submit" onclick="return Feedback_onclick()"><i class="w3-margin-right"></i>Leave Feedback</button>
	     <%if (username==null){ %>
	         <form action="login.jsp" >
	            <button class="w3-bar-item w3-button w3-right w3-light-grey w3-mobile" type="submit"><i class="w3-margin-right"></i> Login/Register</button>
	         </form>
         <%}else{ %>
         	<form action="UserCenter.jsp" >
 				<input type="hidden" name="login" value=<%=username%>>
  				<button class="fa fa-user fa-fw w3-bar-item w3-button w3-right  w3-mobile" type="submit"><i class="w3-margin-right"></i> <%=username%></button>
  			</form>
         		<%} %>
      </div>
   	<div class="box">
   		<div class="left"><div id="mapid"></div></div>
   		<div class="right">
				<div class="tab_select">
					<button class="tab_button" onclick="setMode(event, 'redistricting')">Auto Redistricting</button>
	  				<button class="tab_button" onclick="setMode(event, 'manual')">Manual Editing</button>
	  				<button class="tab_button" onclick="setMode(event, 'compare')">Comparison</button>
	  				<button class="tab_button" onclick="setMode(event, 'visualize')">Visualization</button>
				</div>
	 			
				<div id="redistricting" class="panel_content">
					<h3>Automatic Redistricting</h3>
					<p>Automatically generate a redistricting plan based on user's focus</p> 
					<hr>
					<div id="redistrict_container">
						<p>Compactness: </p><input type="range" min="1" max="100" value="50" class="slider" id="compactness">
						<p>Population: </p><input type="range" min="1" max="100" value="50" class="slider" id="population">
						<p>Contiguity: </p><input type="range" min="1" max="100" value="50" class="slider" id="contiguity">
						<p>Partisan Fairness: </p><input type="range" min="1" max="100" value="50" class="slider" id="partisan">
						<p>Racial Fairness: </p><input type="range" min="1" max="100" value="50" class="slider" id="racial">
						<button style="margin: 15px auto; display:block;" class="tab_button" onclick="setMode(event, '')">Generate</button>
	  				</div>

				</div>

				<div id="manual" class="panel_content">
	  				<h3>Manual Editing</h3>
	  				<p>Select a district, then click on the precincts you wish to assign it to.</p>
	  				<hr>
	  				<div id="district_container">
	  	
	  				</div>
				</div>

				<div id="compare" class="panel_content">
					<h3>District Comparison</h3>
					<p>You can compare the old districts to yours.</p> 
				</div>

				<div id="visualize" class="panel_content">
					<h3>Visualization</h3>
					<p>You will be able to view districts by party affiliation, socioeconomic category, and population here.</p>
				</div>

			</div>
		</div>
		<footer class="w3-padding-32 w3-white w3-center w3-margin-top">
         <h5>Find Us On</h5>
         <div class="w3-xlarge w3-padding-16">
            <i class="fa fa-facebook-official w3-hover-opacity"></i>
            <i class="fa fa-instagram w3-hover-opacity"></i>
            <i class="fa fa-snapchat w3-hover-opacity"></i>
            <i class="fa fa-pinterest-p w3-hover-opacity"></i>
            <i class="fa fa-twitter w3-hover-opacity"></i>
            <i class="fa fa-linkedin w3-hover-opacity"></i>
         </div>
      </footer>
   	
      <script  src="loadData.js"></script>
	   <script  src="2016Data.js"></script>
	   <script  src="MinnesotaSyntax.js"></script>
	   <script  src="mapScript.js"></script>
	   <script  src="panels.js"></script>
   </body>
</html>