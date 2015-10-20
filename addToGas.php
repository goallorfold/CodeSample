<?php

	require("conf.php");
	$newIdToAdd = $_POST['id'];

	$conn = new mysqli($conf['db']['host'], $conf['db']['user'], $conf['db']['password'], $conf['db']['db_name']);

	$note = mysqli_real_escape_string($conn, $_POST['info']);
	$currentYear = $conn->query("SELECT yearID FROM current_year")->fetch_assoc()['yearID'];

	$conn->query("INSERT INTO gas_pass_members (yearID, personID, note) VALUES ('$currentYear', '$newIdToAdd', '$note')");

?>
