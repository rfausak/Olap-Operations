
<?php
include 'connection.php';
/*
   Dynamically Add/Remove Dimensions, rollup/drilldown
   Copyright (c) 2014 Andrew R Fausak.  All Rights Reserved.
*/

if($_POST){
$myQuery1 = Array();
$myTables = Array();
$hasSalesFact = false;
		if($_POST['productbox'] != '') {
		array_push($myQuery1, $_POST['productbox']);
		array_push($myTables, 'product');
		}
		if($_POST['timebox'] != '') {
		array_push($myQuery1, $_POST['timebox']);
		array_push($myTables, 'time');
		}
		if($_POST['storebox'] != '') {
		array_push($myQuery1, $_POST['storebox']);
		array_push($myTables, 'store');
		}
		if($_POST['promotionbox'] != '') {
		array_push($myQuery1, $_POST['promotionbox']);
		array_push($myTables, 'promotion');
		}
		if($_POST['salesfactbox'] != '') {
		array_push($myQuery1, $_POST['salesfactbox']);
		array_push($myTables, 'sales_fact');
		$hasSalesFact = true; 
		}
$myString = 'SELECT ';
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

$result = mysql_query($myString) or die (mysql_error());

               echo "<table border='1'>";
                        echo "<tr>"; //create headers
			for($i = 0; $i < sizeof($myTables); $i++) {
			echo "<td><b>" . $myQuery1[$i]. "</b></td>";
			}
                        echo "</tr>";
                //fetch tha data from the database
                while($row = mysql_fetch_array($result)){
                        echo "<tr>";
			for($i = 0; $i < sizeof($myTables); $i++) {
			echo "<td>" . $row[$myQuery1[$i]]. "</td>";
			}
                        echo "</tr>";
                }
                echo "</table>";
}
?>
