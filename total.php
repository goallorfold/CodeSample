<?php

	require("conf.php");
	$conn = new mysqli($conf['db']['host'], $conf['db']['user'], $conf['db']['password'], $conf['db']['db_name']);

	$result = $conn->query("SELECT * FROM all_people");

	$count = 0;
	$beginner = 0;
	$advanced = 0;
	$expert = 0;
	$elite = 0;
	$beginnerPeople = array();
	$advancedPeople = array();
	$expertPeople = array();
	$elitePeople = array();
	$freshman = 0;
	$sophomore = 0;
	$junior = 0;
	$senior = 0;
	while($row = $result->fetch_assoc()){
		$count++;
		if($row['skillLevel'] == "beginner"){
			$beginner++;
			$beginnerPeople[] = array("firstName" => $row['firstName'], "lastName" => $row['lastName']);
		}else if($row['skillLevel'] == "advanced"){
			$advanced++;
			$advancedPeople[] = array("firstName" => $row['firstName'], "lastName" => $row['lastName']);
		}else if($row['skillLevel'] == "expert"){
			$expert++;
			$expertPeople[] = array("firstName" => $row['firstName'], "lastName" => $row['lastName']);
		}else{
			$elite++;
			$elitePeople[] = array("firstName" => $row['firstName'], "lastName" => $row['lastName']);
		}
		if($row['gradeLevel'] == "freshman"){
			$freshman++;
		}else if($row['gradeLevel'] == "sophomore"){
			$sophomore++;
		}else if($row['gradeLevel'] == "junior"){
			$junior++;
		}else if($row['gradeLevel'] == "senior"){
			$senior++;
		}
	}

	echo "<pre>There are " . $count . " registered users.";
	echo "<br>There are " . $beginner . " beginner riders.<br>";
	foreach($beginnerPeople as $person){
		echo "	" . $person['firstName'] . " " . $person['lastName'] . "<br>";
	}
	echo "<br>There are " . $advanced . " advanced riders.<br>"; 
	foreach($advancedPeople as $person){
		echo "	" . $person['firstName'] . " " . $person['lastName'] . "<br>";
	}
	echo "<br>There are " . $expert . " expert riders.<br>";
	foreach($expertPeople as $person){
		echo "	" . $person['firstName'] . " " . $person['lastName'] . "<br>";
	}
	echo "<br>There are " . $elite . " elite riders.<br>";
	foreach($elitePeople as $person){
		echo "	" . $person['firstName'] . " " . $person['lastName'] . "<br>";
	}
	echo "<br>There are " . $freshman . " freshman, " . $sophomore . " sophomores, " . $junior . " juniors, " . $senior . " seniors.<br>";

?>