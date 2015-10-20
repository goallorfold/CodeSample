<?php

	require("conf.php");
	$newIdToAdd = $_POST['id'];
	$conn = new mysqli($conf['db']['host'], $conf['db']['user'], $conf['db']['password'], $conf['db']['db_name']);

	$currentYear = $conn->query("SELECT yearID FROM current_year")->fetch_assoc()['yearID'];

	$conn->query("DELETE FROM gas_pass_members WHERE yearID='$currentYear' AND personID='$newIdToAdd'");

?>
