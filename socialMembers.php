<h3>Current Social Members</h3>
<table class='table table-bordered' id='editSocialMembers'>
	<thead>
		<tr>
			<th class='col-md-3'>Name</th>
			<th class='col-md-1'>Note</th>
			<th class='col-md-1'>Remove</th>
		</tr>
	</thead>
	<tbody id='currentSocialList'>

<?php

	require("conf.php");
	$conn = new mysqli($conf['db']['host'], $conf['db']['user'], $conf['db']['password'], $conf['db']['db_name']);

	$currentYear = $conn->query("SELECT yearID FROM current_year")->fetch_assoc()['yearID'];

	$currentMembersOfSocial = $conn->query("SELECT * FROM social_members WHERE yearID='$currentYear'");

	$count = 0;
	while ($row = $currentMembersOfSocial->fetch_assoc()){
		$person = $conn->query("SELECT * FROM all_people WHERE personID='" . $row['personID'] . "'")->fetch_assoc();
		echo "<tr id='" . $row['personID'] . "'>
				<td>" . ucfirst($person['firstName']) . " " . ucfirst($person['lastName']) . "</td>
				<td>" . $row['note'] . "</td>
				<td><div align='center'><button type='button' class='button'>Remove</button></div></td>
			  </tr>";
	}

?>

	</tbody>
</table>
