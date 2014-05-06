
<?php
include 'connection.php';


if($_POST){
	//if(isset($_POST['productbox'])){
/*
     if ($_POST['productbox'] != '' && $_POST['timebox'] == '') {
	 	
		$selectedproduct = $_POST['productbox'];
		$selectedtime = $_POST['timebox'];

		echo $selectedproduct . "<br>";
		echo $selectedtime . "<br>" . "<br>";

		//$result = mysql_query("select name from WHERE column = '$selectedoption' ");
		$result = mysql_query("select $selectedproduct from product") or die (mysql_error());


		echo "<table border='1'>";
		//fetch tha data from the database
		while($row = mysql_fetch_array($result)){
			//echo $row[$selectedproduct] . "<br>";
			echo "<tr>";
			echo "<td>" . $row[$selectedproduct]. "</td>";
			echo "</tr>";
		}
		echo "</table>";

		//close the connection
		//mysql_close($dbhandle);
	}
	
	if ($_POST['productbox'] != '' && $_POST['timebox'] != '') {
	 	
		$selectedproduct = $_POST['productbox'];
		$selectedtime = $_POST['timebox'];

		echo $selectedproduct . "<br>";
		echo $selectedtime . "<br>" . "<br>";

		//$result = mysql_query("select name from WHERE column = '$selectedoption' ");
		$result = mysql_query("select $selectedproduct, $selectedtime from product, time where product.product_key = time.time_key") or die (mysql_error());


		echo "<table border='1'>";
		//fetch tha data from the database
		while($row = mysql_fetch_array($result)){
			//echo $row[$selectedproduct] . "<br>";
			echo "<tr>";
			echo "<td>" . $row[$selectedproduct]. "</td>";
			echo "<td>" . $row[$selectedtime]. "</td>";
			echo "</tr>";
		}
		echo "</table>";

		//close the connection
		//mysql_close($dbhandle);
	}
*/
$myQuery1 = Array();
$myTables = Array();
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
	if($i == 0) {
	$myString .= $myTables[$i];
	}
	else
	{
	$myString .= ', '.$myTables[$i];
	}

}
$myString .= ' WHERE ';
for ($i = 0; $i < sizeof($myTables); $i++) {
	
        $myString .= $myTables[$i].'.'.$myTables[$i] . '_key = '. $myTables[$i+1] . '.' .$myTables[$i+1].'_key';
$i++;
}
$result = mysql_query($myString) or die (mysql_error());

               echo "<table border='1'>";
                //fetch tha data from the database
                while($row = mysql_fetch_array($result)){
                        echo "<tr>";
			for($i = 0; $i < sizeof($myTables); $i++) {
			echo "<td>" . $row[$myQuery1[$i]]. "</td>";
			}
                        echo "</tr>";
                }
                echo "</table>";

                //close the connection
                //mysql_close($dbhandle);

}
?>
