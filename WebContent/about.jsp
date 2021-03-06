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
   </script>
   <body>
   	<div class="w3-bar w3-white w3-large">
         
            <button class="w3-bar-item w3-button w3-yellow w3-mobile" type="submit" onclick="return Index_onclick()"><i class="w3-margin-right"></i>DogOwners</button>
            <button class="w3-bar-item w3-button w3-mobile" type="submit" onclick="return About_onclick()"><i class="w3-margin-right"></i>About Us</button>
            <button class="w3-bar-item w3-button w3-mobile" type="submit" onclick="return Feedback_onclick()"><i class="w3-margin-right"></i>Leave Feedback</button>
            <!-- <a href="#Help" class="w3-bar-item w3-button w3-mobile">Help</a>
            <a href="#contact" class="w3-bar-item w3-button w3-mobile">Contact</a> -->
	         <form action="index.jsp" >
	            <!-- <button class="w3-bar-item w3-button w3-right w3-light-grey w3-mobile" type="submit"><i class="w3-margin-right"></i>
                  <div class="user-pic-name">
                     <img src="dog.jpg" alt="Avatar" style="width:25px;height:25px;" class="little-profile">
                     Cheng Ji
                  </div>

               </button> -->
               <button class="fa fa-times-circle-o w3-bar-item w3-button w3-right  w3-mobile" type="submit" ><i class="w3-margin-right"></i> </button>
	         </form>
         
      </div>
   	<div class=class="w3-content w3-padding" style="max-width:1564px">
   		<div class="w3-container w3-padding-32" id="about">
            <h3 class="w3-border-bottom w3-border-light-grey w3-padding-16">About</h3>
            <p>A Gerrymander is a voting district that is designed to serve some political purpose. The name refers to both a salamander and Eldridge Gerry, whose newly created voting district about 200 years ago was said to resemble a salamander. Within the past 10 years, databases for voter characterization as well as tools for precise map drawing have made it possible to create congressional districts that favor the party responsible for the creation of the districts. Redistricting is done in states where census data requires a change in the number of delegates in the state, and the 2010 census triggered redistricting in a number of states. Many of these redistricting efforts resulted in a shift in the political representation in the states. As the realization of the impact of these changes has grown, various technical approaches to the issue have been proposed, some as quantitative measures of the presence of Gerrymandering, others as legal challenges to redistricting, and yet others as draft bills in Congress to minimize the effect of future redistricting. The system to be developed in this project will allow for the generation of congressional district boundaries without any political influence. This system relates to, but is different from, a system developed in a fall 2017 section of CSE308. That system gathered data associated with this topic, analyzed the data using many of the proposed measures of Gerrymandering, and presented the data in a way that highlighted the effects of gerrymandering.
            </p>
         </div>

         <div class="w3-row-padding">
            <div class="w3-col l3 m6 w3-margin-bottom">
               <img src="dog.jpg" alt="John" style="width:100%">
               <h3>Cheng Ji</h3>
               <p class="w3-opacity">Software Engineer</p>
               <p>He's awesome!</p>
                  <p><button class="w3-button w3-light-grey w3-block">Contact</button></p>
            </div>
            <div class="w3-col l3 m6 w3-margin-bottom">
               <img src="dog.jpg" alt="Jane" style="width:100%">
               <h3>Yuege Chen</h3>
               <p class="w3-opacity">Software Engineer</p>
               <p>He's awesome!</p>
               <p><button class="w3-button w3-light-grey w3-block">Contact</button></p>
            </div>
            <div class="w3-col l3 m6 w3-margin-bottom">
               <img src="dog.jpg" alt="Mike" style="width:100%">
               <h3>Seward Chen</h3>
               <p class="w3-opacity">Software Engineer</p>
               <p>He's awesome!</p>
               <p><button class="w3-button w3-light-grey w3-block">Contact</button></p>
            </div>
         </div>
		</div>

      <!-- Start of the Footer -->
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
      <!-- End of the Footer -->
      <script  src="loadData.js"></script>
	   <script  src="2016Data.js"></script>
	   <script  src="MinnesotaSyntax.js"></script>
	   <script  src="mapScript.js"></script>
	   <script  src="panels.js"></script>
   </body>
</html>