<!DOCTYPE HTML>
<html>
	<head>
		<title>Forgot Password -- MSU Wakeboard Club</title>
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
		<header id="header">
			<h1><a href="index.php">MSUWake</a></h1>
			<nav id="nav">
				<ul>
					<li><a href="index.php">Home</a></li>
					<li><a href="about.php">About</a></li>
					<li><a href="signin.php">Sign In</a></li>
					<li><a href="signup.php" class="button">Sign Up</a></li>
				</ul>
			</nav>
		</header>
		<section id="main" class="container 75%">
			<header>
				<h2>Reset Your Password</h2>
				<p>Type in the e-mail address associated to your account and we will send you a link to reset your password.</p>
			</header>
			<div class="alert alert-success" style="display:none;" align='center' id="alertSuccess">
				<strong>Success!</strong> If your email was found in our database, we sent you an e-mail to reset your password.
			</div>
			<div class="box">
				<form action="resetMe.php" method="POST" id='resetForm'>
					<div class="row uniform 50%">
						<div class="12u">
							<input type="text" name="email" id="email" placeholder="Email">
						</div>
					</div>
					<div class="row uniform">
						<div class="12u">
							<ul class="actions align-center">
								<li><input type="submit" value="Reset Password" /></li>
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
			<script type='text/javascript'>
				$('#resetForm').submit(function (evt) {
					$("#resetButton").attr('style', 'display:none;');
					$(".waitAlert").attr('style', '');
				    evt.preventDefault();
				    $.ajax({             
						type: 'post',
						url: 'resetMe.php',
						data: $('#resetForm').serialize(),
						success: function (data) {
							console.log(data);
							$("#alertSuccess").show();
							document.getElementById("resetForm").reset();
						}
					});
				});
			</script>

	</body>
</html>
