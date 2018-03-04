
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
  <input type="hidden" name="login" value="-">
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
            <h2>Join Now</h2>
          </div>
        </div>
       
      </div><br>

    <!-- End Left Column -->
    </div>

    <!-- Right Column -->
    <div class="w3-twothird">
    
      <div class="w3-container w3-card w3-white w3-margin-bottom">
        <h2 class="w3-text-grey w3-padding-16"><i class="fa fa-suitcase fa-fw w3-margin-right w3-xxlarge w3-text-teal"></i>Register </h2>
        <div class="w3-container">
        
        
		 
		  
        
        <button class="w3-button w3-dark-grey" type="button" name="back" onclick="history.back()">Back</button>
        
        <div class="w3-responsive" style="width:700px; height:300px;overflow:auto;">
  			<table class="w3-table-all">
              <tr>
              <th></th>
             	 <th>Id</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Address</th>
                <th>City</th>
                <th>State</th>
                <th>ZipCode</th>
                <th>CreditCardNo</th>
                <th>Phone</th>
                <th>Email</th>
                <th>Rating</th>
              </tr>
              <tr>
              	<form action="Customer_Rep" method="post">
              	  <input type="hidden" name="action" value="add">
  				 <input type="hidden" name="login" value="-">
  				 <input type="hidden" name="type" value="register">
  				
  				<td><button class="w3-button w3-dark-grey" type="submit"> Submit</button> </td>  
               	<td><input class="w3-input w3-border" type="text"  name="cID" required style="width: 100px;"></td>
                <td><input class="w3-input w3-border" type="text"  name="cFirstName" required style="width: 100px;"></td>
                <td><input class="w3-input w3-border" type="text"  name="cLastName" required style="width: 100px;"></td>
                <td><input class="w3-input w3-border" type="text"  name="cAddress" required style="width: 100px;"></td>
                <td><input class="w3-input w3-border" type="text"  name="cCity" required style="width: 100px;"></td>
                <td><input class="w3-input w3-border" type="text"  name="cState" required style="width: 100px;"></td>
                <td><input class="w3-input w3-border" type="text"  name="cZipCode" required style="width: 100px;"></td>
                <td><input class="w3-input w3-border" type="text"  name="cCreditCardNo" required style="width: 100px;"></td>
                <td><input class="w3-input w3-border" type="text"  name="cPhone" required style="width: 100px;"></td>
                <td><input class="w3-input w3-border" type="text"  name="cEmail" required style="width: 100px;"></td>
                <td><input class="w3-input w3-border" type="text"  readonly value=1 name="cRating" required style="width: 100px;"></td>
                     
      			</form>
              </tr>
              </table>
              </div>
        </div>
      </div>

      

    <!-- End Right Column -->
    </div>
    
  <!-- End Grid -->
  
  <!-- Page content -->
  

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

</body>
</html>