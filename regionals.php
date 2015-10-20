<!DOCTYPE HTML>
<html>
	<head>
		<title>Reginonals -- MSU Wakeboard Club</title>
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
					<?php
	                	session_start();
	                	require("conf.php");
	                	if(!isset($_SESSION['userID'])){
	                   		include("login.php");
	                   		exit;
	                   	}
	                   	$conn = new mysqli($conf['db']['host'], $conf['db']['user'], $conf['db']['password'], $conf['db']['db_name']);

						$currentYear = $conn->query("SELECT yearID FROM current_year")->fetch_assoc()['yearID'];
						$currentYearName = $conn->query("SELECT year FROM year_id WHERE yearID='$currentYear'")->fetch_assoc()['year'];

						$userID = $_SESSION['userID'];
						$userID = $conn->query("SELECT personID FROM all_people WHERE email='$userID'")->fetch_assoc()['personID'];
	                ?>

					<header>
						<h2>Regionals General Interest - <?php echo $currentYearName; ?></h2>
						<p><a href='logout.php'>Logout</a> (<?php echo $_SESSION['userID']; ?>)</p>
					</header>

					<div class="box">
						<?php
							$result = $conn->query("SELECT * FROM regionals_general WHERE personID='$userID' AND yearID='$currentYear'");
							$registered = false;
							while($row = $result->fetch_assoc()){
								$registered = true;
							}
							if(!$registered){
								echo "<div align='center'><p>Click the button below to be added to our regionals general interest group.</p><br><button class='button' id='" . $userID . "' onclick='interested(this.id)'>I'm Interested</button></div>";
							}else{
								echo "<div align='center'><p>You are registered for regionals! We will be contacting you shortly with more information.</p></div>";
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
			<script src="https://cdn.datatables.net/1.10.7/js/jquery.dataTables.min.js"></script>
			<script type="text/javascript">	

				function interested(id){
					var dataToPass = {
						"id" : id
					};
					$.ajax({
						type : "POST",
						url : "generalInterest.php",
						data : dataToPass,
						success : function(dataout){
							console.log(dataout);
							location.reload();
						}
					})
				}
			</script>

	</body>
</html>