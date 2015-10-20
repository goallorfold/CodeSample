<h3>Add New Social Member</h3>
<table class='table table-bordered' id='addSocialMembers' border='1'>
	<thead>
		<tr>
			<th class='col-md-3'>Name</th>
			<th class='col-md-1'>Note</th>
			<th class='col-md-1'>Add</th>
		</tr>
	</thead>
	<tbody id='newSocialList'>
	
<?php

	require("conf.php");
	$conn = new mysqli($conf['db']['host'], $conf['db']['user'], $conf['db']['password'], $conf['db']['db_name']);

	$currentYear = $conn->query("SELECT yearID FROM current_year")->fetch_assoc()['yearID'];

	$currentNonMembersOfSocial = $conn->query("SELECT a.* FROM all_people a NATURAL LEFT JOIN social_members b WHERE b.personID IS NULL");

	while ($row = $currentNonMembersOfSocial->fetch_assoc()){
		$person = $conn->query("SELECT * FROM all_people WHERE personID='" . $row['personID'] . "'")->fetch_assoc();
		echo "<tr id='" . $row['personID'] . "'>
				<td>" . ucfirst($person['firstName']) . " " . ucfirst($person['lastName']) . "</td>
				<td><input type='text' id='noteSocial" . $row['personID'] . "'></td>
				<td><div align='center'><button type='button' class='button'>Add</button></div></td>
			  </tr>";
	}

?>
	</tbody>
</table>

