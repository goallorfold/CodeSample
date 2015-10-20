<?php
	session_start();
	
	require('conf.php');

	$conn = new mysqli($conf['db']['host'], $conf['db']['user'], $conf['db']['password'], $conf['db']['db_name']);

	$newUsername = mysqli_real_escape_string($conn, $_POST['email']);
	$newPassword = mysqli_real_escape_string($conn, $_POST['password']);

	$passwordHash = password_hash($newPassword, PASSWORD_DEFAULT);

	$result = $conn->query("SELECT password FROM all_people WHERE email='$newUsername'")->fetch_assoc()['password'];

	$passwordVerification = password_verify($newPassword, $result);
	if($passwordVerification){
		echo "YES";
		$_SESSION['userID'] = $newUsername;
	}else{
		echo "NO";
	}
?>
