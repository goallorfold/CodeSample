<?php
echo "<h3>Current Gas Pass Members</h3>
<table class='table table-bordered' id='editGasPassMembers'>
	<thead>
		<tr>
			<th class='col-md-3'>Name</th>
			<th class='col-md-1'>Note</th>
			<th class='col-md-1'>Remove</th>
		</tr>
	</thead>
	<tbody id='currentGasList'>";

require("conf.php");
$conn = new mysqli($conf['db']['host'], $conf['db']['user'], $conf['db']['password'], $conf['db']['db_name']);

$currentYear = $conn->query("SELECT yearID FROM current_year")->fetch_assoc()['yearID'];

$currentMembersOfGasPass = $conn->query("SELECT * FROM gas_pass_members WHERE yearID='$currentYear'");

$count = 0;
while ($row = $currentMembersOfGasPass->fetch_assoc()){
	$person = $conn->query("SELECT * FROM all_people WHERE personID='" . $row['personID'] . "'")->fetch_assoc();
	echo "<tr id='" . $row['personID'] . "'>
			<td>" . ucfirst($person['firstName']) . " " . ucfirst($person['lastName']) . "</td>
			<td>" . $row['note'] . "</td>
			<td><div align='center'><button type='button' class='button'>Remove</button></div></td>
		  </tr>";
}


echo "</tbody>
</table>";

?>
