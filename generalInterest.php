<?php
	
	require("conf.php");
	$conn = new mysqli($conf['db']['host'], $conf['db']['user'], $conf['db']['password'], $conf['db']['db_name']);
	$userID = $_POST['id'];

	$currentYear = $conn->query("SELECT yearID FROM current_year")->fetch_assoc()['yearID'];
	echo "INSERT INTO regionals_general (yearID, personID) VALUES ('$currentYear', '$userID')";
	$conn->query("INSERT INTO regionals_general (yearID, personID) VALUES ('$currentYear', '$userID')");

?>
