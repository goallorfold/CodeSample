<?php
	session_start();
	require("conf.php");
	$conn = new mysqli($conf['db']['host'], $conf['db']['user'], $conf['db']['password'], $conf['db']['db_name']);

	$date = mysqli_real_escape_string($conn, $_POST['date']);
	$userID = $_SESSION['userID'];

	$userID = $conn->query("SELECT personID FROM all_people WHERE email='$userID'")->fetch_assoc()['personID'];
	$getDayID = $conn->query("SELECT dayID FROM day_id WHERE dateInfo='" . $date . "'")->fetch_assoc()['dayID'];

	$conn->query("INSERT INTO signin_sheet (dayID, personID) VALUES ('$getDayID', '$userID')");
?>
