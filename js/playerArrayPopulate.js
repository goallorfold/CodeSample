var playerArray = [];
var headers = [];

var qbCount = 0;
var rbCount = 0;
var wrCount = 0;
var teCount = 0;
var kCount = 0;
var dCount = 0;

//Populate the all players array
$('#playerTable th').each(function(index, item) {
    headers[index] = $(item).html();
});

$('#playerTable tr').has('td').each(function(att, items) {
    var indexForArray = $(this).attr('id').substring(6);
    var arrayItem = {};
    $('td', $(this)).each(function(index, item) {
        arrayItem[headers[index]] = $(item).html();
        if($(att)[0] == undefined){
          arrayItem['playerID'] = 1;
        }else{
          arrayItem['playerID'] = $(att)[0] + 1;
        }
    });
    playerArray[indexForArray] = arrayItem;
});
//console.log(playerArray);

//Populate the QB player array
var qbPlayerArray = [];

$('#playerTableQb tr').has('td').each(function(att) {
    var arrayItem = {};
    $('td', $(this)).each(function(index, item) {
        arrayItem[headers[index]] = $(item).html();
        if($(att)[0] == undefined){
          arrayItem['playerID'] = 1;
        }else{
          arrayItem['playerID'] = $(att)[0] + 1;
        }
    });
    qbPlayerArray.push(arrayItem);
});

//Populate the RB player array
var rbPlayerArray = [];

$('#playerTableRb tr').has('td').each(function(att) {
    var arrayItem = {};
    $('td', $(this)).each(function(index, item) {
        arrayItem[headers[index]] = $(item).html();
        if($(att)[0] == undefined){
          arrayItem['playerID'] = 1;
        }else{
          arrayItem['playerID'] = $(att)[0] + 1;
        }
    });
    rbPlayerArray.push(arrayItem);
});


//Populate the WR player array
var wrPlayerArray = [];

$('#playerTableWr tr').has('td').each(function(att) {
    var arrayItem = {};
    $('td', $(this)).each(function(index, item) {
        arrayItem[headers[index]] = $(item).html();
        if($(att)[0] == undefined){
          arrayItem['playerID'] = 1;
        }else{
          arrayItem['playerID'] = $(att)[0] + 1;
        }
    });
    wrPlayerArray.push(arrayItem);
});

//Populate the TE player array
var tePlayerArray = [];

$('#playerTableTe tr').has('td').each(function(att) {
    var arrayItem = {};
    $('td', $(this)).each(function(index, item) {
        arrayItem[headers[index]] = $(item).html();
        if($(att)[0] == undefined){
          arrayItem['playerID'] = 1;
        }else{
          arrayItem['playerID'] = $(att)[0] + 1;
        }
    });
    tePlayerArray.push(arrayItem);
});


//Populate the Kicker player array
var kPlayerArray = [];

$('#playerTableK tr').has('td').each(function(att) {
    var arrayItem = {};
    $('td', $(this)).each(function(index, item) {
        arrayItem[headers[index]] = $(item).html();
        if($(att)[0] == undefined){
          arrayItem['playerID'] = 1;
        }else{
          arrayItem['playerID'] = $(att)[0] + 1;
        }
    });
    kPlayerArray.push(arrayItem);
});

//Populate the Defense player array
var dPlayerArray = [];

$('#playerTableD tr').has('td').each(function(att) {
    var arrayItem = {};
    $('td', $(this)).each(function(index, item) {
        arrayItem[headers[index]] = $(item).html();
        if($(att)[0] == undefined){
          arrayItem['playerID'] = 1;
        }else{
          arrayItem['playerID'] = $(att)[0] + 1;
        }
    });
    dPlayerArray.push(arrayItem);
});

//Populate the player choice array
var playerChoiceArray = [];

$('#playerChoiceTable tr').has('td').each(function(att) {
    var arrayItem = {};
    $('td', $(this)).each(function(index, item) {
        arrayItem[headers[index]] = $(item).html();
        if($(att)[0] == undefined){
          arrayItem['playerID'] = 1;
        }else{
          arrayItem['playerID'] = $(att)[0] + 1;
        }
    });
    playerChoiceArray.push(arrayItem);
});

//Populate the player choice QB array
var qbPlayerChoiceArray = [];

$('#qbPlayerChoiceTable tr').has('td').each(function(att) {
    var arrayItem = {};
    $('td', $(this)).each(function(index, item) {
        arrayItem[headers[index]] = $(item).html();
        if($(att)[0] == undefined){
          arrayItem['playerID'] = 1;
        }else{
          arrayItem['playerID'] = $(att)[0] + 1;
        }
    });
    qbPlayerChoiceArray.push(arrayItem);
});

//Populate the player choice RB array
var rbPlayerChoiceArray = [];

$('#rbPlayerChoiceTable tr').has('td').each(function(att) {
    var arrayItem = {};
    $('td', $(this)).each(function(index, item) {
        arrayItem[headers[index]] = $(item).html();
        if($(att)[0] == undefined){
          arrayItem['playerID'] = 1;
        }else{
          arrayItem['playerID'] = $(att)[0] + 1;
        }
    });
    rbPlayerChoiceArray.push(arrayItem);
});

//Populate the player choice WR array
var wrPlayerChoiceArray = [];

$('#wrPlayerChoiceTable tr').has('td').each(function(att) {
    var arrayItem = {};
    $('td', $(this)).each(function(index, item) {
        arrayItem[headers[index]] = $(item).html();
        if($(att)[0] == undefined){
          arrayItem['playerID'] = 1;
        }else{
          arrayItem['playerID'] = $(att)[0] + 1;
        }
    });
    wrPlayerChoiceArray.push(arrayItem);
});

//Populate the player choice TE array
var tePlayerChoiceArray = [];

$('#tePlayerChoiceTable tr').has('td').each(function(att) {
    var arrayItem = {};
    $('td', $(this)).each(function(index, item) {
        arrayItem[headers[index]] = $(item).html();
        if($(att)[0] == undefined){
          arrayItem['playerID'] = 1;
        }else{
          arrayItem['playerID'] = $(att)[0] + 1;
        }
    });
    tePlayerChoiceArray.push(arrayItem);
});

//Populate the player choice K array
var kPlayerChoiceArray = [];

$('#kPlayerChoiceTable tr').has('td').each(function(att) {
    var arrayItem = {};
    $('td', $(this)).each(function(index, item) {
        arrayItem[headers[index]] = $(item).html();
        if($(att)[0] == undefined){
          arrayItem['playerID'] = 1;
        }else{
          arrayItem['playerID'] = $(att)[0] + 1;
        }
    });
    kPlayerChoiceArray.push(arrayItem);
});

//Populate the player choice D array
var dPlayerChoiceArray = [];

$('#dPlayerChoiceTable tr').has('td').each(function(att) {
    var arrayItem = {};
    $('td', $(this)).each(function(index, item) {
        arrayItem[headers[index]] = $(item).html();
        if($(att)[0] == undefined){
          arrayItem['playerID'] = 1;
        }else{
          arrayItem['playerID'] = $(att)[0] + 1;
        }
    });
    dPlayerChoiceArray.push(arrayItem);
});

//ALL PLAYER TABLE STUFF

//What should happen when the + button is clicked in the All Available Players tab. It should update the All Available Players and include that in the new table as well as update the proper position table aswell
$('#playerTable').on('click', 'button', function(e){
  var playerNumber = $(this).closest('tr').attr("id");
  playerNumber = playerNumber.substring(6);
  var playerID = "#" + $(this).closest('tr').attr("id");
  var playerPosition = playerArray[playerNumber]['Position'];

  //Now update the correct sublist
  if(playerPosition == 'QB'){
    if(qbCount >= 3 && !isTotalCount){
      alert("You can only select up to 3 Quarterbacks. \nPlease upgrade your account to Elite in order to have unlimited selections!");
    }else{
      addIntoChoiceTable('Qb', playerArray, playerNumber, playerID);
      qbCount++;
    }
  }
  else if(playerPosition == 'RB'){
    if(rbCount >= 5 && !isTotalCount){
      alert("You can only select up to 5 Runningbacks. \nPlease upgrade your account to Elite in order to have unlimited selections!");
    }else{
      addIntoChoiceTable('Rb', playerArray, playerNumber, playerID);
      rbCount++;
    }
  }
  else if(playerPosition == 'WR'){
    if(wrCount >= 7 && !isTotalCount){
      alert("You can only select up to 7 Wide Receivers. \nPlease upgrade your account to Elite in order to have unlimited selections!");
    }else{
      addIntoChoiceTable('Wr', playerArray, playerNumber, playerID);
      wrCount++;
    }  
  }
  else if(playerPosition == 'TE'){
    if(teCount >= 3 && !isTotalCount){
      alert("You can only select up to 3 Tight Ends. \nPlease upgrade your account to Elite in order to have unlimited selections!");
    }else{
      addIntoChoiceTable('Te', playerArray, playerNumber, playerID);
      teCount++;
    }     
  }
  else if(playerPosition == 'K'){
    if(kCount >= 2 && !isTotalCount){
      alert("You can only select 2 Kickers. \nPlease upgrade your account to Elite in order to have unlimited selections!");
    }else{
      addIntoChoiceTable('K', playerArray, playerNumber, playerID);
      kCount++;
    }    
  }
  else if(playerPosition == 'D'){
    if(dCount >= 2 && !isTotalCount){
      alert("You can only select up to 2 Defensive Teams. \nPlease upgrade your account to Elite in order to have unlimited selections!");
    }else{
      addIntoChoiceTable('D', playerArray, playerNumber, playerID);
      dCount++;
    }   
  }
})//end on click event for add on playerTable


//What to happen when the add button is clicked on the QB spot
$('#playerTableQb').on('click', 'button', function(e){
  var playerNumber = $(this).closest('tr').attr("id");
  playerNumber = playerNumber.substring(6);
  var playerID = "#" + $(this).closest('tr').attr("id");
  var playerPosition = playerArray[playerNumber]['Position'];

  if(qbCount >= 3 && !isTotalCount){
    alert("You can only select up to 3 Quarterbacks. \nPlease upgrade your account to Elite in order to have unlimited selections!");
  }else{
    addIntoChoiceTable('Qb', playerArray, playerNumber, playerID);
    qbCount++;
  }
})

$('#playerTableRb').on('click', 'button', function(e){
  var playerNumber = $(this).closest('tr').attr("id");
  playerNumber = playerNumber.substring(6);
  var playerID = "#" + $(this).closest('tr').attr("id");
  var playerPosition = playerArray[playerNumber]['Position'];
  
  if(rbCount >= 5 && !isTotalCount){
    alert("You can only select up to 5 Runningbacks. \nPlease upgrade your account to Elite in order to have unlimited selections!");
  }else{
    addIntoChoiceTable('Rb', playerArray, playerNumber, playerID);
    rbCount++;
  }
})

$('#playerTableWr').on('click', 'button', function(e){
  var playerNumber = $(this).closest('tr').attr("id");
  playerNumber = playerNumber.substring(6);
  var playerID = "#" + $(this).closest('tr').attr("id");
  var playerPosition = playerArray[playerNumber]['Position'];

  if(wrCount >= 7 && !isTotalCount){
    alert("You can only select up to 7 Wide Receivers. \nPlease upgrade your account to Elite in order to have unlimited selections!");
  }else{
    addIntoChoiceTable('Wr', playerArray, playerNumber, playerID);
    wrCount++;
  }
})

$('#playerTableTe').on('click', 'button', function(e){
  var playerNumber = $(this).closest('tr').attr("id");
  playerNumber = playerNumber.substring(6);
  var playerID = "#" + $(this).closest('tr').attr("id");
  var playerPosition = playerArray[playerNumber]['Position'];

  if(teCount >= 3 && !isTotalCount){
    alert("You can only select up to 3 Tight Ends. \nPlease upgrade your account to Elite in order to have unlimited selections!");
  }else{
    addIntoChoiceTable('Te', playerArray, playerNumber, playerID);
    teCount++;
  }  
})

$('#playerTableK').on('click', 'button', function(e){
  var playerNumber = $(this).closest('tr').attr("id");
  playerNumber = playerNumber.substring(6);
  var playerID = "#" + $(this).closest('tr').attr("id");
  var playerPosition = playerArray[playerNumber]['Position'];

  if(kCount >= 2 && !isTotalCount){
    alert("You can only select 1 Kickers. \nPlease upgrade your account to Elite in order to have unlimited selections!");
  }else{
    addIntoChoiceTable('K', playerArray, playerNumber, playerID);
    kCount++;
  }  
})

$('#playerTableD').on('click', 'button', function(e){
  var playerNumber = $(this).closest('tr').attr("id");
  playerNumber = playerNumber.substring(6);
  var playerID = "#" + $(this).closest('tr').attr("id");
  var playerPosition = playerArray[playerNumber]['Position'];

  if(dCount >= 2 && !isTotalCount){
    alert("You can only select up to 2 Defensive Teams. \nPlease upgrade your account to Elite in order to have unlimited selections!");
  }else{
    addIntoChoiceTable('D', playerArray, playerNumber, playerID);
    dCount++;
  } 
})


//----------------------------------------
// ALL CHOICE TABLE STUFF
$('#playerChoiceTable').on('click', 'button', function(e){
  var playerNumber = $(this).closest('tr').attr("id");
  playerNumber = playerNumber.substring(6);
  var playerID = "#" + $(this).closest('tr').attr("id");
  var playerPosition = playerArray[playerNumber]['Position'];

  //Now update the correct sublist
  if(playerPosition == 'QB'){
    qbCount--;
    removeFromChoiceTable('Qb', playerArray, playerNumber, playerID);
  }
  else if(playerPosition == 'RB'){
    rbCount--;
    removeFromChoiceTable('Rb', playerArray, playerNumber, playerID);
  }
  else if(playerPosition == 'WR'){
    wrCount--;
    removeFromChoiceTable('Wr', playerArray, playerNumber, playerID);  
  }
  else if(playerPosition == 'TE'){
    teCount--;
    removeFromChoiceTable('Te', playerArray, playerNumber, playerID);   
  }
  else if(playerPosition == 'K'){
    kCount--;
    removeFromChoiceTable('K', playerArray, playerNumber, playerID);  
  }
  else if(playerPosition == 'D'){
    dCount--;
    removeFromChoiceTable('D', playerArray, playerNumber, playerID);   
  }
})

$('#playerChoiceTableQb').on('click', 'button', function(e){
  var playerNumber = $(this).closest('tr').attr("id");
  playerNumber = playerNumber.substring(6);
  var playerID = "#" + $(this).closest('tr').attr("id");
  var playerPosition = playerArray[playerNumber]['Position'];

  qbCount--;
  removeFromChoiceTable('Qb', playerArray, playerNumber, playerID);
})

$('#playerChoiceTableRb').on('click', 'button', function(e){
  var playerNumber = $(this).closest('tr').attr("id");
  playerNumber = playerNumber.substring(6);
  var playerID = "#" + $(this).closest('tr').attr("id");
  var playerPosition = playerArray[playerNumber]['Position'];

  rbCount--;
  removeFromChoiceTable('Rb', playerArray, playerNumber, playerID);
})

$('#playerChoiceTableWr').on('click', 'button', function(e){
  var playerNumber = $(this).closest('tr').attr("id");
  playerNumber = playerNumber.substring(6);
  var playerID = "#" + $(this).closest('tr').attr("id");
  var playerPosition = playerArray[playerNumber]['Position'];

  wrCount--;
  removeFromChoiceTable('Wr', playerArray, playerNumber, playerID);
})

$('#playerChoiceTableTe').on('click', 'button', function(e){
  var playerNumber = $(this).closest('tr').attr("id");
  playerNumber = playerNumber.substring(6);
  var playerID = "#" + $(this).closest('tr').attr("id");
  var playerPosition = playerArray[playerNumber]['Position'];

  teCount--;
  removeFromChoiceTable('Te', playerArray, playerNumber, playerID);
})

$('#playerChoiceTableK').on('click', 'button', function(e){
  var playerNumber = $(this).closest('tr').attr("id");
  playerNumber = playerNumber.substring(6);
  var playerID = "#" + $(this).closest('tr').attr("id");
  var playerPosition = playerArray[playerNumber]['Position'];

  kCount--;
  removeFromChoiceTable('K', playerArray, playerNumber, playerID);
})

$('#playerChoiceTableD').on('click', 'button', function(e){
  var playerNumber = $(this).closest('tr').attr("id");
  playerNumber = playerNumber.substring(6);
  var playerID = "#" + $(this).closest('tr').attr("id");
  var playerPosition = playerArray[playerNumber]['Position'];

  dCount--;
  removeFromChoiceTable('D', playerArray, playerNumber, playerID);
})


//Function that handles adding to the Selected Players table and removing from Available Players
function addIntoChoiceTable(position, playerArray, playerNumber, playerID){
  $('#playerTable').DataTable().row(playerID).remove().draw( false );
  $('#playerChoiceTable').dataTable().fnAddDataAndDisplay([
    playerArray[playerNumber]['Player'],
    playerArray[playerNumber]['Position'],
    playerArray[playerNumber]['Salary'],
    "<button type='button' id='player" + playerNumber + "Button' class='btn btn-danger btn-number' data-type='minus' data-field='quant[2]'> <span class='glyphicon glyphicon-minus'></span>"
  ]);
  //console.log($('#player' + playerNumber + 'Button').closest('td'));
  $('#player' + playerNumber + 'Button').closest('td').attr('colspan', 4);
  $('#player' + playerNumber + 'Button').closest('td').attr('align', 'center');
  $('#player' + playerNumber + 'Button').closest('tr').attr('id', 'player' + playerNumber);

  var tableName = '#playerTable' + position;
  var tableChoiceName = '#playerChoiceTable' + position;
  $(tableName).DataTable().row(playerID).remove().draw( false );
  $(tableChoiceName).dataTable().fnAddDataAndDisplay([
    playerArray[playerNumber]['Player'],
    playerArray[playerNumber]['Position'],
    playerArray[playerNumber]['Salary'],
    "<button type='button' id='player" + playerNumber + "ButtonIn' class='btn btn-danger btn-number' data-type='minus' data-field='quant[2]'> <span class='glyphicon glyphicon-minus'></span>"
  ]);
  $('#player' + playerNumber + 'ButtonIn').closest('td').attr('colspan', 4);
  $('#player' + playerNumber + 'ButtonIn').closest('td').attr('align', 'center');
  $('#player' + playerNumber + 'ButtonIn').closest('tr').attr('id', 'player' + playerNumber);   
}

//Function that handles removing from Selected Players and adding back into Available Players
function removeFromChoiceTable(position, playerArray, playerNumber, playerID){
  $('#playerChoiceTable').DataTable().row(playerID).remove().draw( false );
  $('#playerTable').dataTable().fnAddDataAndDisplay([
    playerArray[playerNumber]['Player'],
    playerArray[playerNumber]['Position'],
    playerArray[playerNumber]['Salary'],
    playerArray[playerNumber]['Projection'],
    "<button type='button' id='player" + playerNumber + "Button' class='btn btn-success btn-number' data-type='minus' data-field='quant[2]'> <span class='glyphicon glyphicon-plus'></span>"
  ]);
  $('#player' + playerNumber + 'Button').closest('td').attr('colspan', 4);
  $('#player' + playerNumber + 'Button').closest('td').attr('align', 'center');
  $('#player' + playerNumber + 'Button').closest('tr').attr('id', 'player' + playerNumber);

  var tableName = '#playerTable' + position;
  var tableChoiceName = '#playerChoiceTable' + position;
  $(tableChoiceName).DataTable().row(playerID).remove().draw( false );
  $(tableName).dataTable().fnAddDataAndDisplay([
    playerArray[playerNumber]['Player'],
    playerArray[playerNumber]['Position'],
    playerArray[playerNumber]['Salary'],
    playerArray[playerNumber]['Projection'],
    "<button type='button' id='player" + playerNumber + "ButtonIn' class='btn btn-success btn-number' data-type='minus' data-field='quant[2]'> <span class='glyphicon glyphicon-plus'></span>"
  ]);
  $('#player' + playerNumber + 'ButtonIn').closest('td').attr('colspan', 4);
  $('#player' + playerNumber + 'ButtonIn').closest('td').attr('align', 'center');
  $('#player' + playerNumber + 'ButtonIn').closest('tr').attr('id', 'player' + playerNumber);

}

//We must handle the generate lineups button via ajax
var frm = $('#selectedPlayers');
var dataToPass;

frm.submit(function (ev) {
  ev.preventDefault();
  var qbChoices = $("#playerChoiceTableQb tr").length - 1;
  var rbChoices = $("#playerChoiceTableRb tr").length - 1;
  var wrChoices = $("#playerChoiceTableWr tr").length - 1;
  var teChoices = $("#playerChoiceTableTe tr").length - 1;
  var kChoices = $("#playerChoiceTableK tr").length - 1;
  var dChoices = $("#playerChoiceTableD tr").length - 1;
  $('#quickSubmit').prop('disabled', true);
  $('#quickSubmit').val("Loading...");

  var dataFromTable = $('#playerChoiceTable').dataTable().fnGetData();
  var dataToPass = JSON.stringify(dataFromTable);
  //console.log(dataToPass);
  //console.log(frm.serialize());
  var start = performance.now();
  $.ajax({
      type: frm.attr('method'),
      url:  frm.attr('action'),
      data: dataToPass,
      success: function (dataout) {
        var end = performance.now();
        var time = end - start;
        console.log("IT TOOK: " + time/1000 + ' s.');
        console.log(dataout);
        $('#quickSubmit').prop('disabled', false);
        $('#quickSubmit').val("Generate Lineups");
        var error = dataout.indexOf("NOT ENOUGH PLAYERS");
        var error2 = dataout.indexOf("Salary Too High");
        if(error > -1){
          alert("Not enough players added to the table.");
        }else if(error2 > -1){
          alert("All lineups exceed $60000. Please add cheaper players.");
        }else{
          var dataToPass = dataout;
          //console.log(dataToPass);
          dataToPass = JSON.parse(dataToPass);
          $.ajax({
            url: 'displayLineups.php',
            type: 'post',
            data: JSON.stringify(dataToPass),
            success: function(response){
              //console.log(response);
              if(isTotalCount){
                $('.resultData').html(response);
                window.location.hash = '#resultData';
              }else{
                $('.displayData').html("<div class='box'>" + response + "</div>");
              }
              //console.log(dataToPass);
            },
            error: function(xhr){
              console.log(xhr);
            }
          });
        }
        //console.log(data);
          //alert('Not Yet Implemented');
      }
  });

});

document.getElementById("quickUpgrade").onclick = function() {
  location.href = 'subscribe.php';
};
