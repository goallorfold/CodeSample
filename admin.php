<!DOCTYPE HTML>
<html>
	<head>
		<title>Admin -- MSU Wakeboard Club</title>
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
	                   	}else{
	                   		$isAdmin = false;
	                   		$idTemp = $_SESSION['userID'];
	                   		foreach($conf['admin'] as $admin){
	                   			if($idTemp == $admin){
	                   				$isAdmin = true;
	                   			}
	                   		}
	                   	}
	                   	if(!$isAdmin){
	                   		exit;
	                   	}
	                ?>
					<header>
						<h2>Admin Panel</h2>
						<p>Edit People Below.</p><br>
						<a href="logout.php">Logout</a> (<?php echo $_SESSION['userID']; ?>)
					</header>

					<div class="box">
						<div class="col-xs-6" id="editMembersTable">
                            <h3></h3>
                            <ul class="nav nav-tabs">
                                <li class="active"><a data-toggle="tab" href="#editMembers">Edit Members</a></li>
                                <li><a data-toggle="tab" href="#editGasPass">Gas Pass Members</a></li>
                                <li><a data-toggle="tab" href="#editSocial">Social Members</a></li>
                                <li><a data-toggle="tab" href="#emailMembers">Email Members</a></li>
                            </ul>
                            <div class="tab-content">
                            	<div id='editMembers' class='tab-pane active'>
                                	<table class='table table-bordered' id='editAllMembers'>
                                		<thead>
                                			<tr>
                                				<th class='col-md-3'>Name</th>
                                			</tr>
                                		</thead>
                                		<tbody>
                                			<?php
                                			?>
                                		</tbody>
                                	</table>
                                </div>
                            	<div id='editGasPass' class='tab-pane'>
                            		<div style='border: 1px solid black;' id='resetGasMembers'>
                            			<?php require("gasPassMembers.php"); ?>
                                	</div>
                                	<br>
                                	<div style='border: 1px solid black;' id='resetAddGasMembers'>
	                                	<?php require("addGasPassMembers.php"); ?>
	                                </div>
                                </div>
                                <div id='editSocial' class='tab-pane'>
                                	<div style='border: 1px solid black;' id='resetSocialMembers'>
                            			<?php require("socialMembers.php"); ?>
                                	</div>
                                	<br>
                                	<div style='border: 1px solid black;' id='resetAddSocialMembers'>
	                                	<?php require("addSocialMembers.php"); ?>
	                                </div>
                                </div>
                                <div id='emailMembers' class='tab-pane'>
                                	<div style='border: 1px solid black;' id='resetSocialMembers'>
                            			<?php require("emailMembers.php"); ?>
                                	</div>
                                </div>
                            </div>
                        </div>
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
				$(document).ready(function() {
			        $('#editGasPassMembers').dataTable({"bAutoWidth": false, "bLengthChange": false});
			        $('#addGasPassMembers').dataTable({"bAutoWidth": false, "bLengthChange": false});
			        $('#editSocialMembers').dataTable({"bAutoWidth": false, "bLengthChange": false});
			        $('#addSocialMembers').dataTable({"bAutoWidth": false, "bLengthChange": false});
			        run();
			    } );
			</script>
			<script type="text/javascript">
				function updateGasList(){
					$.ajax({
						type : "GET",
						url : "gasPassMembers.php",
						success : function(dataout){
							$("#resetGasMembers").html(dataout);
							$('#editGasPassMembers').dataTable({"bAutoWidth": false, "bLengthChange": false});
							run();
						}
					})
					$.ajax({
						type : "GET",
						url : "addGasPassMembers.php",
						success : function(dataout){
							$("#resetAddGasMembers").html(dataout);
							$('#addGasPassMembers').dataTable({"bAutoWidth": false, "bLengthChange": false});
							run();
						}
					})
				}

				function updateSocialList(){
					$.ajax({
						type : "GET",
						url : "socialMembers.php",
						success : function(dataout){
							$("#resetSocialMembers").html(dataout);
							$('#editSocialMembers').dataTable({"bAutoWidth": false, "bLengthChange": false});
							run();
						}
					})
					$.ajax({
						type : "GET",
						url : "addSocialMembers.php",
						success : function(dataout){
							$("#resetAddSocialMembers").html(dataout);
							$('#addSocialMembers').dataTable({"bAutoWidth": false, "bLengthChange": false});
							run();
						}
					})
				}

				function run(){
					$('#newGasList').on('click', 'button', function(e){
						var personNumber = $(this).closest('tr').attr('id');
						var info = $("#note" + personNumber).val();				
						var dataToPass = {
							"id" : personNumber,
							"info" : info
						};
						$.ajax({
							type : "POST",
							url : "addToGas.php",
							data : dataToPass,
							success : function (dataout){
								updateGasList();
							}
						})			
					});

					$('#currentGasList').on('click', 'button', function(e){
						var personNumber = $(this).closest('tr').attr('id');
						var dataToPass = {
							"id" : personNumber
						};
						$.ajax({
							type : "POST",
							url : "deleteFromGas.php",
							data : dataToPass,
							success : function (dataout){
								updateGasList();
							}
						})					
					});

					$('#newSocialList').on('click', 'button', function(e){
						var personNumber = $(this).closest('tr').attr('id');
						var info = $("#noteSocial" + personNumber).val();
						var dataToPass = {
							"id" : personNumber,
							"info" : info
						};
						
						$.ajax({
							type : "POST",
							url : "addToSocial.php",
							data : dataToPass,
							success : function (dataout){
								updateSocialList();
							}
						})					
					});

					$('#currentSocialList').on('click', 'button', function(e){
						var personNumber = $(this).closest('tr').attr('id');
						var dataToPass = {
							"id" : personNumber
						};
						$.ajax({
							type : "POST",
							url : "deleteFromSocial.php",
							data : dataToPass,
							success : function (dataout){
								updateSocialList();
							}
						})					
					});
				}

				$("#person_email_send").submit(function(ev){
					ev.preventDefault();
					var dataToPass = $("#person_email_send").serialize();
					$.ajax({
						type: $("#person_email_send").attr("method"),
						url: $("#person_email_send").attr("action"),
						data: dataToPass,
						success: function(dataout){
							console.log(dataout);
						}
					})
				});
			</script>

	</body>
</html>