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
					</header>

<?php
	require("conf.php");

	$connection = new mysqli($conf['db']['host'], $conf['db']['user'], $conf['db']['password'], $conf['db']['db_name']);

	if(isset($_GET['action']))
	{        
	    if($_GET['action']=="reset")
	    {
	        $encrypt = mysqli_real_escape_string($connection,$_GET['encrypt']);
	        $email = mysqli_real_escape_string($connection, $_GET['email']);
	        $query = "SELECT personID FROM all_people where password='".$encrypt."' AND email='" . $email ."'";
	        $result = mysqli_query($connection,$query);
	        $Results = mysqli_fetch_array($result);
	        if(count($Results)>=1)
	        {
	        	$message = "";
	        }
	        else
	        {
	            echo '<p align="center">Invalid address please try again. <a href="forgotpassword.php">Click Here</a> to send a new key to your e-mail.</p>';
	            exit;
	        }
	    }
	}
	elseif(isset($_POST['action']))
	{
	    $encrypt      = mysqli_real_escape_string($connection,$_POST['action']);
	    $password     = mysqli_real_escape_string($connection,$_POST['password']);
	    $email = mysqli_real_escape_string($connection, $_POST['email']);

	    $query = "SELECT personID FROM all_people where password='".$encrypt."' AND email='" . $email . "'";

	    $result = $connection->query($query);
	    $results = array();
	    while($row = $result->fetch_assoc()){
	    	$results[] = $row;
	    }
	    if(count($results)>=1)
	    {
	        $query = "update all_people set password='". password_hash($password, PASSWORD_DEFAULT) ."' where personID='".$results[0]['personID']."'";
	        $connection->query($query);
	 		$idUser = $connection->query("SELECT email FROM all_people WHERE personID='" . $results[0]['personID'] ."'")->fetch_assoc()['email'];
	        $message = "Your password for account " . $idUser . " changed sucessfully.";
	    }
	    else
	    {
	        echo '<p align="center">Invalid address please try again. <a href="forgotpassword.php">Click Here</a> to send a new key to your e-mail.</p>';
	        exit;
	    }
	}
	else
	{
	    header("location: index.php");
	}

echo '<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script>
  function mypasswordmatch()
{
    var pass1 = $("#password").val();
    var pass2 = $("#password2").val();
    var pass1length = pass1.length;
    if (pass1 != pass2)
    {
        alert("Passwords do not match");
        return false;
    }
    else
    {
    	if(pass1length < 6){
    		alert("Password must be 6 characters long.");
    		return false;
    	}else{
        	$( "#reset" ).submit();
        }
    }
}
  </script>
</head>
<body>
 <b>'.$message.'</b>
  <form action="reset.php" method="post" id="reset" >
    <p><input id="password" name="password" type="password" placeholder="Enter new password (5-16 characters)">
    <p><input id="password2" name="password2" type="password" placeholder="Re-type new password (5-16 characters)">
    <input name="action" type="hidden" value="'.$encrypt.'" /></p>
    <input name="email" type="hidden" value="' .$email.'" />
    <p><input type="button" value="Reset Password" onclick="mypasswordmatch();" /></p>
  </form>
';

?>
