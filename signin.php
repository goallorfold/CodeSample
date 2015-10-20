<!DOCTYPE HTML>
<html>
	<head>
		<title>Sign In -- MSU Wakeboard Club</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="stylesheet" href="jqueryui/jquery-ui.min.css" />
		<link rel="icon" type="image/png" href="favicon.ico">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
		<!-- Latest compiled and minified CSS -->
		<link rel="stylesheet" href="css/bootstrap.min.css">

		<!-- Optional theme -->
		<link rel="stylesheet" href="css/bootstrap-theme.min.css">

		<!-- Latest compiled and minified JavaScript -->
		<script src="js/bootstrap.min.js"></script>
		<link rel="stylesheet" href="assets/css/main.css" />

	</head>
	<body>
		<div id="page-wrapper">

			<?php include("header.php"); ?>

			<!-- Main -->
				<section id="main" class="container 75%">
					<header>
						<h2>Sign In</h2>
						<p>Choose the date and sign in.</p>
					</header>
					<div class="alert alert-success" style="display:none;" align='center' id="alertSuccess">
						<strong>Success!</strong> You have been signed in.
					</div>
					<div class="box">
						<div id="datepicker" align='center'></div>
					</div>
					<div class='box' id="signInfo">
		                <?php
		                	session_start();
		                	if(isset($_SESSION['userID'])){
		                		include("letMeSignIn.php");
		                   	}else{
		                   		include("login.php");
		                   	}
		                ?>
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
			<script src="jqueryui/jquery-ui.min.js"></script>
			<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
			<script src="assets/js/main.js"></script>
			<script type="text/javascript">	
				var activeDays=[1, 18, 21, 22, 23, 24];

				$('#datepicker').datepicker(
				    {
				    	dateFormat: 'm/d/y',
				        beforeShowDay: function(date) {
				        	var currentDate = date;
				            var hilight = [false,''];

				            if ( activeDays.indexOf( date.getDate() ) > -1)
				            {
				                hilight = [true,'isActive'];
				            }

				            return hilight;
				        },
				        onSelect: function(date) {
				        	var currentDate = date;
				        	dateNew = date.substr(0, date.length -2);
				        	date = dateNew + "20" + date.substr(date.length - 2);
				        	console.log(date);
				        	var dataToPass = {"date": date};
				        	$.get("resetDate.php", dataToPass, function(data){
				        			console.log(data);
				        			$("#signInfo").html(data);
				        			$("#signInDate").html("Sign In for " + date);
				        			run();
				        		});
				        }
				    }
				);
			</script>
			<script type="text/javascript">
			function run(){
				$('#signInButton').on('click', 'button', function(e){
					var currentDate = $("#datepicker").datepicker('getDate').getDate();
					var currentMonth = $("#datepicker").datepicker('getDate').getMonth()+1;
					var currentYear = $("#datepicker").datepicker('getDate').getFullYear();
					var fullDate = currentMonth + "/" + currentDate + "/" + currentYear;
					var dataToPass = {
						"date" : fullDate
					};
					console.log(dataToPass);
					$.ajax({
						type: "POST",
						url: "signMeIn.php",
						data: dataToPass,
						success: function(dataout){
							window.location.replace("signin.php");
						}
					})
				});
			}
			run();
			</script>

	</body>
</html>