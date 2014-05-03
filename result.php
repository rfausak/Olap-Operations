
<?php
include 'connection.php';


if($_POST){
	//if(isset($_POST['productbox'])){
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
}
?>
