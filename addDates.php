<?php
	require("conf.php");
	$conn = new mysqli($conf['db']['host'], $conf['db']['user'], $conf['db']['password'], $conf['db']['db_name']);

	$months = array('1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12');
	$days1 = array('1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13', '14', '15', '16', '17',
		'18', '19', '20', '21', '22', '23', '24', '25', '26', '27', '28', '29', '30', '31');
	$days2 = array('1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13', '14', '15', '16', '17',
		'18', '19', '20', '21', '22', '23', '24', '25', '26', '27', '28', '29', '30');
	$days3 = array('1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13', '14', '15', '16', '17',
		'18', '19', '20', '21', '22', '23', '24', '25', '26', '27', '28', '29');
	foreach($months as $month){
		if($month == "2"){
			$tempDays = $days3;
		}else if($month == "9" || $month == "4" || $month == "6" || $month == "11"){
			$tempDays = $days2;
		}else{
			$tempDays = $days1;
		}
		foreach($tempDays as $day){
			$dateFull = $month . "/" . $day . "/2016";
			echo $dateFull . "<br>";
			$conn->query("INSERT INTO day_id (dateInfo) VALUES ('$dateFull')");
		}
	}

?>
