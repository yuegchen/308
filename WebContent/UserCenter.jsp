<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<title>WhereToGo_Customer</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Roboto'>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
html,body,h1,h2,h3,h4,h5,h6 {font-family: "Roboto", sans-serif}
</style>
<body class="w3-light-grey">
	 
<!-- Navigation Bar -->
<div class="w3-bar w3-white w3-large">
  <form action="index.html" >
  <input type="hidden" name="login" value="login">
  	<button class="w3-bar-item w3-button w3-yellow w3-mobile" type="submit"><i class="w3-margin-right"></i> DogOwner</button>
  </form>
  <a href="#Help" class="w3-bar-item w3-button w3-mobile">Help</a>
  <a href="#contact" class="w3-bar-item w3-button w3-mobile">Contact</a>
 
 <form action="index.html" >
 	<input type="hidden" name="login" value="-">
  	<button class="fa fa-times-circle-o w3-bar-item w3-button w3-right  w3-mobile" type="submit" ><i class="w3-margin-right"></i> </button>
  </form>

</div>
<!-- Page Container -->
<div class="w3-content w3-margin-top" style="max-width:1400px;">

  <!-- The Grid -->
  <div class="w3-row-padding">
  
    <!-- Left Column -->
    <div class="w3-third">
    
      <div class="w3-white w3-text-grey w3-card-4">
        <div class="w3-display-container">
          <img src="dog.jpg" style="width:100%" alt="Avatar">
          <div class="w3-display-bottomleft w3-container w3-text-black">
            <h2>user</h2>
          </div>
        </div>
     <div class="w3-container">
          <p><i class="fa fa-id-card-o fa-fw w3-margin-right w3-large w3-text-teal"></i>id</p>
          <p><i class="fa fa-briefcase fa-fw w3-margin-right w3-large w3-text-teal"></i>Customer</p>
          <p><i class="fa fa-home fa-fw w3-margin-right w3-large w3-text-teal"></i>address</p>
          <p><i class="fa fa-calendar fa-fw w3-margin-right w3-large w3-text-teal"></i>CreationDate</p>
          <p><i class="fa fa-envelope fa-fw w3-margin-right w3-large w3-text-teal"></i>email</p>	
          <p><i class="fa fa-credit-card-alt fa-fw w3-margin-right w3-large w3-text-teal"></i>CreditCardNo</p>
          <p><i class="fa fa-mobile-phone fa-fw w3-margin-right w3-large w3-text-teal"></i>Phone</p>
          <p><i class="	fa fa-star fa-fw w3-margin-right w3-large w3-text-teal"></i>Rating</p>
         
        
        
       
        </div>
      </div><br>

    <!-- End Left Column -->
    </div>

    <!-- Right Column -->
    <div class="w3-twothird">
    
      <div class="w3-container w3-card w3-white w3-margin-bottom">
        <h2 class="w3-text-grey w3-padding-16"><i class="fa fa-suitcase fa-fw w3-margin-right w3-xxlarge w3-text-teal"></i>Redistricting</h2>
        <div class="w3-container">
        
        
		 
		  
        
        <div class="w3-responsive" style="width:700px; height:500px;">
  			<table class="w3-table-all">
              <tr>
              
                <th >Redistricting Plans</th>
                <th>Redistricting History</th>
                <th>Redistricting Data</th>
                <th>Weights</th>
                
                
              </tr>
             
              <tr>
              	
          
                <td>
                <div class="w3-bar w3-light-grey">
                 
  				 </div>
  				 </td>
  				 <td>
  				 <div class="w3-bar w3-light-grey">
                   
  				 </div>            
               </td>
              </tr>
             
              </table>
              </div>
        </div>
      </div>

      

    <!-- End Right Column -->
    </div>
    
  <!-- End Grid -->
  
  <!-- Page content -->
  <div class="w3-content" style="max-width:1532px;">

 

  </div>

  
  <!-- End Page Container -->
  </div>

  <footer class="w3-padding-32 w3-black w3-center w3-margin-top">
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

</body>
</html>
