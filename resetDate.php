<?php
	session_start();
	if(isset($_SESSION['userID'])){
		$dateTemp = $_GET['date'];
		include("letMeSignIn.php");
	}else{
		require("login.php");
	}

?>

