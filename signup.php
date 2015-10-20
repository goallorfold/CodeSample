<!DOCTYPE HTML>
<html>
	<head>
		<title>Sign Up -- MSU Wakeboard Club</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="stylesheet" href="assets/css/main.css" />
		<link rel="icon" type="image/png" href="favicon.ico">
	</head>
	<body>
		<div id="page-wrapper">

			<?php include("header.php"); ?>
			
			<!-- Main -->
				<section id="main" class="container 75%">
					<header>
						<h2>Sign Up</h2>
						<p>Sign Up below to be added to our mailing list and added as a member.</p>
					</header>
					<div class="alert alert-success" style="display:none;" align='center' id="alertSuccess">
						<strong>Success!</strong> New user has been registered.
					</div>
					<div class="box">
						<form method="post" action="submit_person.php" id="person_info">
							<fieldset>
							    <h3><b>Basic Info</b></h3>
							    <label for="name">Name:</label>
							    <input type="text" id="name" name="user_name" required>
							    
							    <label for="mail">Email:</label>
							    <input type="email" id="mail" name="user_email" required>

							    <label for="mail">Password:</label>
							    <input type="password" id="password" name="user_password" required>

							    <label for="phone">Phone Number:</label>
							    <input type="text" id="phone" name="user_phone" required>
						  	</fieldset>

						  	<fieldset>
							    <br><h3><b>About You</b></h3>

							    <label>Year:</label>
							    <input type="radio" id="freshman" value="freshman" name="user_age"><label for="freshman" class="light">Freshman</label><br>
							    <input type="radio" id="sophomore" value="sophomore" name="user_age"><label for="sophomore" class="light">Sophomore</label><br>
							    <input type="radio" id="junior" value="junior" name="user_age"><label for="junior" class="light">Junior</label><br>
							    <input type="radio" id="senior" value="senior" name="user_age"><label for="senior" class="light">Senior</label><br><br>

							    <label>Wakeboarding Skill Level:</label>
							    <input type="radio" id="beginner" value="beginner" name="user_exp"><label for="beginner" class="light">Beginner</label><br>
							    <input type="radio" id="advanced" value="advanced" name="user_exp"><label for="advanced" class="light">Advanced</label><br>
							    <input type="radio" id="expert" value="expert" name="user_exp"><label for="expert" class="light">Expert</label><br><br>

							    <label>I Have a Wakeboard Boat:</label>
							    <input type="radio" id="yes" value="yes" name="user_boat"><label for="yes" class="light">Yes</label><br>
							    <input type="radio" id="no" value="no" name="user_boat"><label for="no" class="light">No</label><br><br>

							    <label for="heard">How Did You Hear About Us?:</label>
							    <input type="text" id="heard" name="user_heard" required>
							 </fieldset>

							
							<br><br>
							<div class="row uniform">
								<div class="12u">
									<ul class="actions align-center">
										<li><input type="submit" value="Sign Up" /></li>
									</ul>
								</div>
							</div>
						</form>
					</div>
				</section>

			<!-- Footer -->
				<footer id="footer">
					<ul class="icons">
						<li><a href="https://twitter.com/msuwakeclub" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
						<li><a href="https://www.facebook.com/groups/MSUWakeClub/" class="icon fa-facebook"><span class="label">Facebook</span></a></li>
						<li><a href="https://instagram.com/msuwaketeam/" class="icon fa-instagram"><span class="label">Instagram</span></a></li>
					</ul>
					<ul class="copyright">
						<li>&copy; 2015 MSUWakeboard Club. All rights reserved.</li>
					</ul>
				</footer>

		</div>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.dropotron.min.js"></script>
			<script src="assets/js/jquery.scrollgress.min.js"></script>
			<script src="assets/js/skel.min.js"></script>
			<script src="assets/js/util.js"></script>
			<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
			<script src="assets/js/main.js"></script>
			<script type="text/javascript">	
				$("#person_info").submit(function (ev) {
				  ev.preventDefault();
				  var dataToPass = $("#person_info").serialize();
				  $.ajax({
				  	type: $("#person_info").attr("method"),
				  	url: $("#person_info").attr("action"),
				  	data: dataToPass,
				  	success: function(dataout){
				      console.log(dataout);
				      if(dataout == "DONE"){
				    		console.log(dataout);
				    		document.getElementById("person_info").reset();
				    		$("#alertSuccess").show();
				    		$('html, body').animate({ scrollTop: 0 }, 0);
				    		window.setTimeout(function () {$("#alertSuccess").fadeOut(); }, 2000);
				      }
				  	}
				  })
				});
			</script>

	</body>
</html>