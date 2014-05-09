<?php
session_start();
?>
<?php
include 'connection.php';
/*
   Dynamically Add/Remove Dimensions, rollup/drilldown, slice/dice
   Copyright (c) 2014 Andrew R Fausak.  All Rights Reserved.
*/

$myQuery1 = Array();
$myTables = Array();
$hasSalesFact = false;
$sliceDiceQuery = Array();
$sliceDiceTable = Array();
$sliceDiceField = Array();
if($_POST) {
$_SESSION['productbox'] = null;
$_SESSION['timebox'] = null;
$_SESSION['storebox'] = null;
$_SESSION['promotionbox'] = null;
$_SESSION['salesfactbox'] = null;
		if($_POST['productbox'] != '') {
		array_push($myQuery1, $_POST['productbox']);
		array_push($myTables, 'product');
		$_SESSION['productbox'] = $_POST['productbox'];
		}
		if($_POST['timebox'] != '') {
		array_push($myQuery1, $_POST['timebox']);
		array_push($myTables, 'time');
		$_SESSION['timebox'] = $_POST['timebox'];
		}
		if($_POST['storebox'] != '') {
		array_push($myQuery1, $_POST['storebox']);
		array_push($myTables, 'store');
		$_SESSION['storebox'] = $_POST['storebox'];
		}
		if($_POST['promotionbox'] != '') {
		array_push($myQuery1, $_POST['promotionbox']);
		array_push($myTables, 'promotion');
		$_SESSION['promotionbox'] = $_POST['promotionbox'];
		}
		if($_POST['salesfactbox'] != '') {
		array_push($myQuery1, $_POST['salesfactbox']);
		array_push($myTables, 'sales_fact');
		$hasSalesFact = true; 
		$_SESSION['salesfactbox'] = $_POST['salesfactbox'];
		}
}
else {
	$hasGet = false;
	if(isset($_GET['product'])) {
	array_push($sliceDiceQuery, $_GET['product']);
	array_push($sliceDiceTable, 'product');
	array_push($sliceDiceField, $_SESSION['productbox']); 
	$hasGet = true;
	}
	if(isset($_GET['time'])) {
	array_push($sliceDiceQuery, $_GET['time']);
	array_push($sliceDiceTable, 'time');
	array_push($sliceDiceField, $_SESSION['timebox']); 
	$hasGet = true;
	}
	if(isset($_GET['store'])) {
	array_push($sliceDiceQuery, $_GET['store']);
	array_push($sliceDiceTable, 'store');
	array_push($sliceDiceField, $_SESSION['storebox']); 
	$hasGet = true;
	}
	if(isset($_GET['promotion'])) {
	array_push($sliceDiceQuery, $_GET['promotion']);
	array_push($sliceDiceTable, 'promotion');
	array_push($sliceDiceField, $_SESSION['promotionbox']); 
	$hasGet = true;
	}
	if(isset($_GET['sales_fact'])) {
	array_push($sliceDiceQuery, $_GET['sales_fact']);
	array_push($sliceDiceTable, 'sales_fact');
	array_push($sliceDiceField, $_SESSION['salesfactbox']); 
	$hasGet = true;
	}
if($hasGet) {
		if(isset($_SESSION['productbox'])){
                array_push($myQuery1, $_SESSION['productbox']);
                array_push($myTables, 'product');
		}
		if(isset($_SESSION['timebox'])){
		array_push($myQuery1, $_SESSION['timebox']);
		array_push($myTables, 'time');
		}
		if(isset($_SESSION['storebox'])){
		array_push($myQuery1, $_SESSION['storebox']);
		array_push($myTables, 'store');
		}
		if(isset($_SESSION['promotionbox'])){
		array_push($myQuery1, $_SESSION['promotionbox']);
		array_push($myTables, 'promotion');
		}
		if(isset($_SESSION['salesfactbox'])){
		array_push($myQuery1, $_SESSION['salesfactbox']);
		array_push($myTables, 'sales_fact');
		$hasSalesFact = true; 
		}
}
}
if(sizeof($myTables) > 0) {
$myString = 'SELECT ';
$m = 0;
while($myQuery1[$m] == null)
{
array_shift($myQuery1);
array_shift($myTables);
}
for ($i = 0; $i < sizeof($myTables); $i++) {
	if($i == 0) {
	$myString .= $myQuery1[$i];
	}
	else
	{
	$myString .= ', '.$myQuery1[$i];
	}
}
$myString .= ' FROM ';
for ($i = 0; $i < sizeof($myTables); $i++) {
if($myTables[$i] == 'sales_fact')
{$hassalesFact = true;}
	if($i == 0) {
	$myString .= $myTables[$i];
	}
	else
	{
	$myString .= ', '.$myTables[$i];
	}
}
	if($hasSalesFact == false)
	$myString .= ', sales_fact';
if(!($myTables[0] == 'sales_fact' && sizeof($myTables) == 1)) {
$myString .= ' WHERE ';
for ($i = 0; $i < sizeof($myTables); $i++) {

	if($myTables[$i] == 'sales_fact') //dont do anything for sales_fact
	{}	
	else {
		if($i > 0)
		$myString .= ' AND ';

		$myString .= $myTables[$i].'.'.$myTables[$i] . '_key = sales_fact.'.$myTables[$i].'_key';	
	}
}
//slicedice

for($i = 0; $i < sizeof($sliceDiceTable); $i++) {
	if(sizeof($myTables) > 0 || $i > 0) {
	$myString .= ' AND ';
	}
	if(strpos($myString, '.')) {
	$myString .= 'ABS('.$sliceDiceTable[$i] .'.'.$sliceDiceField[$i]. '-' . $sliceDiceQuery[$i] . ') < .01';
	}
	else
	$myString .= $sliceDiceTable[$i] .'.'.$sliceDiceField[$i]. ' = "' . $sliceDiceQuery[$i] . '"';
}
$myString .= ' GROUP BY ';
for ($i = 0; $i < sizeof($myTables); $i++) {

        if($myTables[$i] == 'sales_fact') //dont do anything for sales_fact
        {}
        else {
                if($i > 0)
                $myString .= ', ';

                $myString .= $myTables[$i].'.'.$myTables[$i] .'_key';
        }
}
}
//slicedicequery
$myGetReqs = "";
for($i = 0; $i < sizeof($sliceDiceTable); $i++) {
if($i > 0)
$myGetReqs .= '&';

$myGetReqs .= '' . $sliceDiceTable[$i] . '=' . urlencode($sliceDiceQuery[$i]);
}
if(sizeof($sliceDiceTable) > 0){
$myGetReqs .= '&';
}
$result = mysql_query($myString) or die (mysql_error());
$myScript = <<<HTML
	<script type="text/javascript">
	var myArray = [];
	function addToArray(stringToAdd) {
	myArray.push(stringToAdd);
console.log(myArray);
	}
	function openAllUrlsInArray() {
	var myString = "result.php?";
	for(var i = 0; i < myArray.length; i++) {
	if(i > 0)
	myString += '\&';
	myString += myArray[i];
	}
	window.location.href = myString; 
	}
	</script>
HTML;
$myPage = "";
$myPage .= $myScript;
$myPage .= '<center><button id="coolButton" onclick="javascript:openAllUrlsInArray();"></button></center>';

               $myPage .= "<table border='1'>";
                        $myPage .= "<tr>"; //create headers
			for($i = 0; $i < sizeof($myTables); $i++) {
			$myPage .= "<th>" . $myQuery1[$i]. "</th>";
			}
                        $myPage .= "</tr>";
                //fetch tha data from the database
                while($row = mysql_fetch_array($result)){
                        $myPage .= "<tr>";
			for($i = 0; $i < sizeof($myTables); $i++) {
			$currString = $myGetReqs . $myTables[$i].'='.urlencode($row[$myQuery1[$i]]);
$myString3 = <<<HTML
'$currString'
HTML;
$myString2 = '"addToArray('.$myString3.');"';
			$myPage .= "<td> <a href='#' onclick=$myString2>" . $row[$myQuery1[$i]]. "</a></td>";
			}
                        $myPage .= "</tr>";
                }
                $myPage .= "</table>";
}
?>

<html>
<body>
<style>
table {
margin: 0 auto;
}
th {
height: 70px;
width: 200px;
font-size: 40px;
background-color: #585858;
color: white;
} 
td {
font-size: 20px;
background-color: #F2F2F2;
}
body {
background-color: #CEE3F6;
}
#coolbutton {
	background: url('sd.png') no-repeat scroll 0 0 transparent;
	border:medium none;
	height:32px;
	margin:0;
	padding:0;
	width:200px;
}
</style>
<?php if(isset($myPage))echo $myPage; ?>
</body>
</html>
