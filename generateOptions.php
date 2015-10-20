<?php

function generateTableChoice($position, $date){
  require("conf.php");
  $choiceTableDiv = "<div id='" . $position . "' class='tab-pane "; if($position == 'freshman') {$choiceTableDiv .= 'active';} $choiceTableDiv .= "'>";
    $count = 0;
    $choiceTableDiv .= "<table class='table table-bordered' id='playerTable"; if($position != 'freshman') {$choiceTableDiv .= ucfirst($position);} $choiceTableDiv .= "'><thead>
        <tr>
          <th class='col-md-3'>Name</th>
          <th class='col-md-1'>Email</th>
        </tr>
        </thead>
        <tbody>";
    $conn = new mysqli($conf['db']['host'], $conf['db']['user'], $conf['db']['password'], $conf['db']['db_name']);

    $sqlQuery = "SELECT * FROM all_people WHERE gradeLevel='" . strtolower($position) . "'";

    $result = $conn->query($sqlQuery);
    while($row = $result->fetch_assoc()){
      $dayID = $conn->query("SELECT dayID FROM day_id WHERE dateInfo='" . $date . "'")->fetch_assoc()['dayID'];
      $isAlreadySignedIn = $conn->query("SELECT * FROM signin_sheet WHERE personID='" . $row['personID'] . "' AND dayID='" . $dayID . "'");
      $signedIn = false;
      while ($temp = $isAlreadySignedIn->fetch_assoc()){
        $signedIn = true;
      }
      $choiceTableDiv .= "<tr id='person" . $row['personID'] . "' >
              <td>" . ucfirst($row['firstName']) . " " . ucfirst($row['lastName']) . "</td>
              <td>" . $row['email'] . "</td>";
      if(!$signedIn) {
        $choiceTableDiv .= "<td colspan='4' align='center'><button type='button' class='button' data-type='plus' data-field='quant[2]'>Sign In</button></td>";
      } else{
        $choiceTableDiv .= "<td>Signed In</td";
      }
        $choiceTableDiv .=  "</tr>";
    $count++;
    }
    $choiceTableDiv .= "</tbody></table></div>";
    echo $choiceTableDiv;
}

?>