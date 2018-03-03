
<!DOCTYPE html>
<html>
<title>CSE308</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body, h1, h2, h3, h4, h5, h6 {
	font-family: "Raleway", Arial, Helvetica, sans-serif
}
</style>
<body class="w3-light-grey">

	<!-- Navigation Bar -->
	<div class="w3-bar w3-white w3-large">
		<form action="index.jsp">
			<button class="w3-bar-item w3-button w3-yellow w3-mobile"
				type="submit">
				<i class="w3-margin-right"></i> DogOwners
			</button>
		</form>
		<a href="#Help" class="w3-bar-item w3-button w3-mobile">Help</a> <a
			href="#contact" class="w3-bar-item w3-button w3-mobile">Contact</a>
		<form action="login.jsp">
			<button
				class="w3-bar-item w3-button w3-right w3-light-grey w3-mobile"
				type="submit">
				<i class="w3-margin-right"></i> Login/Register
			</button>
		</form>
	</div>
	<!-- Header -->


	<!-- Page content -->
	<div class="w3-content" style="max-width: 1532px; max-height: 800">




		<table>
			<tr>
				<td><div class=" w3-container w3-white"
						style="height: 600px; width: 900px">
						<h6>Map goes here</h6>
					</div></td>
				<td><div class=" w3-container w3-red"
						style="height: 600px; width: 400px">
						<h6>
							<div class="tab">
								<button class="tablinks" onclick="openTab(event, 'Edit')">Edit</button>
								<button class="tablinks" onclick="openTab(event, 'Compare')">Compare</button>
								<button class="tablinks" onclick="openTab(event, 'Data')">Data</button>
							</div>


							<!-- Tab content -->
							<div id="Edit" class="tabcontent">
								<h3>Edit</h3>
								<p>Maunal Edit.</p>
							</div>

							<div id="Compare" class="tabcontent">
								<h3>Comparison</h3>
								<p>Compare Districts.</p>
							</div>

							<div id="Data" class="tabcontent">
								<h3>Data</h3>
								<p>Virtualize Data.</p>
							</div>
							<script>
								function openTab(evt, functionName) {
									var i, tabcontent, tablinks;
									tabcontent = document
											.getElementsByClassName("tabcontent");
									for (i = 0; i < tabcontent.length; i++) {
										tabcontent[i].style.display = "none";
									}
									tablinks = document
											.getElementsByClassName("tablinks");
									for (i = 0; i < tablinks.length; i++) {
										tablinks[i].className = tablinks[i].className
												.replace(" active", "");
									}
									document.getElementById(functionName).style.display = "block";
									evt.currentTarget.className += " active";
								}
							</script>
						</h6>
					</div></td>
			</tr>
		</table>














		<div class="w3-container" id="contact">
			<h2>Contact</h2>
			<p>If you have any questions, do not hesitate to ask them.</p>
			<i class="fa fa-envelope w3-text-red" style="width: 30px"></i> Email:
			yuege.chen@stonybrook.edu<br> <i
				class="fa fa-envelope w3-text-red" style="width: 30px"></i> Email:
			zijun.he@stonybrook.edu<br> <i
				class="fa fa-envelope w3-text-red" style="width: 30px"> </i> Email:
			nan.jiang.1@stonybrook.edu<br>
		</div>

		<!-- End page content -->
	</div>

	<!-- Footer -->
	<footer class="w3-padding-32 w3-black w3-center w3-margin-top">
		<h5>Find Us On</h5>
		<div class="w3-xlarge w3-padding-16">
			<i class="fa fa-facebook-official w3-hover-opacity"></i> <i
				class="fa fa-instagram w3-hover-opacity"></i> <i
				class="fa fa-snapchat w3-hover-opacity"></i> <i
				class="fa fa-pinterest-p w3-hover-opacity"></i> <i
				class="fa fa-twitter w3-hover-opacity"></i> <i
				class="fa fa-linkedin w3-hover-opacity"></i>
		</div>
	</footer>


</body>
</html>
