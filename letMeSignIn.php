<div class="box">
	<h3 id="signInDate" align='center'>Sign In For Today<h3>
	<p id="signinStatus">
		<?php 
			$userID = $_SESSION['userID'];
			require("conf.php");
			$conn = new mysqli($conf['db']['host'], $conf['db']['user'], $conf['db']['password'], $conf['db']['db_name']);
			$result = $conn->query("SELECT personID FROM all_people WHERE email='$userID'")->fetch_assoc()['personID'];
			if(isset($dateTemp)){
				$date = $dateTemp;
			}else {
				$date = date('n/j/Y');
			}
			$dateId = $conn->query("SELECT dayID FROM day_id WHERE dateInfo='$date'")->fetch_assoc()['dayID'];
			$results = $conn->query("SELECT * FROM signin_sheet WHERE dayID='$dateId' AND personID='$result'");
			$count = 0;
			while($row = $results->fetch_assoc()){
				$count++;
			}
			if($count != 0){
				echo "<p align='center'>You Are Already Signed In For " . $date . "</p>";
			}else{
				echo "<div align='center' id='signInButton'><button type='button' class='button'>Sign In</button></div>";
			}
		?>
	</p>
</div>
<a href="logout.php" class="actions" align='center'>Logout </a> (<?php echo $_SESSION['userID']; ?>)
