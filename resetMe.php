<?php
	require("conf.php");

	$conn = new mysqli($conf['db']['host'], $conf['db']['user'], $conf['db']['password'], $conf['db']['db_name']);

	$newEmail =  mysqli_real_escape_string($conn, $_POST['email']);

	$result = $conn->query("SELECT personID, email, password FROM all_people WHERE email='$newEmail'")->fetch_assoc();

	if(count($result) > 0){	
		$encrypt = $result['password'];
		
		require 'phpmailer/PHPMailerAutoload.php';

		$mail = new PHPMailer;

		//$mail->SMTPDebug = 3;                               // Enable verbose debug output

		$mail->isSMTP();                                      // Set mailer to use SMTP
		$mail->Host = 'smtp.gmail.com';  // Specify main and backup SMTP servers
		$mail->SMTPAuth = true;                               // Enable SMTP authentication
		$mail->Username = 'msuwaketeam@gmail.com';                 // SMTP username
		$mail->Password = 'spartywake2013';                           // SMTP password
		$mail->SMTPSecure = 'tls';                            // Enable TLS encryption, `ssl` also accepted
		$mail->Port = 587;                                    // TCP port to connect to

		$mail->FromName = 'MSUWake';
		$mail->addAddress($newEmail);     // Add a recipient

		$mail->isHTML(true);                                  // Set email format to HTML
		$url = "http://www.msuwake.com/reset.php?encrypt=" . $encrypt . "&action=reset&email=" . $newEmail;

		$mail->Subject = 'Reset MSUWake.com Password';
		$mail->Body    = 'You are receiving this email because you have requested your password be reset for account with email ' . $result['email'] . ', <br/> <br/>Your Membership ID is ' . $result['personID'] . '<br><br>Click here to reset your password <a href=' . $url . '>Reset Password</a> <br/>';
		$mail->AltBody = 'Hi, \n\nYour Membership ID is ' . $result['personID'] . ' \nClick here to reset your password http://www.msuwake.com/reset.php?encrypt=' . $encrypt . '&action=reset&email=' . $newEmail;

		//echo $mail->Body;
		if(!$mail->send()) {
		    echo 'Message could not be sent.';
		    echo 'Mailer Error: ' . $mail->ErrorInfo;
		} else {
		    echo 'Message has been sent';
		}
	}

?>
