<?php

	require("conf.php");
	$newIdToAdd = $_POST['id'];
	$conn = new mysqli($conf['db']['host'], $conf['db']['user'], $conf['db']['password'], $conf['db']['db_name']);

	//var_dump($_POST);
	$note = mysqli_real_escape_string($conn, $_POST['info']);
	$currentYear = $conn->query("SELECT yearID FROM current_year")->fetch_assoc()['yearID'];


	$conn->query("INSERT INTO social_members (yearID, personID, note) VALUES ('$currentYear', '$newIdToAdd', '$note')");

?>
