<?php

	require("conf.php");
	$conn = new mysqli($conf['db']['host'], $conf['db']['user'], $conf['db']['password'], $conf['db']['db_name']);

	$choice = explode(" ", $_POST['user_name']);
	$firstName = $choice[0];
	$lastName = $choice[1];
	$email = mysqli_real_escape_string($conn, $_POST['user_email']);
	$phoneNumber = mysqli_real_escape_string($conn, $_POST['user_phone']);
	$skillLevel = mysqli_real_escape_string($conn, $_POST['user_exp']);
	$gradeLevel = mysqli_real_escape_string($conn, $_POST['user_age']);
	$boatInfo = mysqli_real_escape_string($conn, $_POST['user_boat']);
	$heardInfo = mysqli_real_escape_string($conn, $_POST['user_heard']);
	$passwordInfo = mysqli_real_escape_string($conn, $_POST['user_password']);
	$passwordInfo = password_hash($passwordInfo, PASSWORD_DEFAULT);
	$ipInfo = $_SERVER['REMOTE_ADDR'];
	if($boatInfo == "yes"){
		$temp = 1;
	}else{
		$temp = 0;
	}
	$query = "INSERT INTO all_people (firstName, lastName, email, phoneNumber, skillLevel, gradeLevel, ownsBoat, ipAddress, password)
		VALUES ('$firstName', '$lastName', '$email', '$phoneNumber', '$skillLevel', '$gradeLevel', '$temp', '$ipInfo', '$passwordInfo') ON DUPLICATE KEY UPDATE personID=LAST_INSERT_ID(personID)";

	//echo $query;
	$conn->query($query);
	$lastInsertId = $conn->insert_id;
	$conn->query("INSERT INTO mailing_list (personID) VALUE ('$lastInsertId')");
	$conn->query("INSERT INTO heard (personID, heardInfo) VALUES ('$lastInsertId', '$heardInfo')");

	echo "DONE";

?>
