<?php
include 'connection.php';
/* 
   Dynamic dropdown menu content generation (dimensions/attributes)
   Copyright (c) 2014 Andrew R Fausak.  All Rights Reserved.
*/
$result1 = mysql_query("show columns from time") or die (mysql_error());
$timeOptions = "";
if (mysql_num_rows($result1) > 0) {
$i = 0;
    while ($row = mysql_fetch_assoc($result1)) {
	$rowField = $row['Field'];
	if($i !== 0){
	$timeOptions .= '<option value="'.$rowField.'">'.$rowField.'</option>';
	}
	$i++;
    }
}
mysql_free_result($result1);

$result2 = mysql_query("show columns from promotion") or die (mysql_error());
$promoOptions = "";
if (mysql_num_rows($result2) > 0) {
$i = 0;
    while ($row = mysql_fetch_assoc($result2)) {
        $rowField = $row['Field'];
        if($i !== 0){
        $promoOptions .= '<option value="'.$rowField.'">'.$rowField.'</option>';
        }
        $i++;
    }
}

$result2 = mysql_query("show columns from store") or die (mysql_error());
$storeOptions = "";
if (mysql_num_rows($result2) > 0) {
$i = 0;
    while ($row = mysql_fetch_assoc($result2)) {
        $rowField = $row['Field'];
        if($i !== 0){
        $storeOptions .= '<option value="'.$rowField.'">'.$rowField.'</option>';
        }
        $i++;
    }
}

$result2 = mysql_query("show columns from product") or die (mysql_error());
$productOptions = "";
if (mysql_num_rows($result2) > 0) {
$i = 0;
    while ($row = mysql_fetch_assoc($result2)) {
        $rowField = $row['Field'];
        if($i !== 0){
        $productOptions .= '<option value="'.$rowField.'">'.$rowField.'</option>';
        }
        $i++;
    }
}

$result2 = mysql_query("show columns from sales_fact") or die (mysql_error());
$salesOptions = "";
if (mysql_num_rows($result2) > 0) {
$i = 0;
    while ($row = mysql_fetch_assoc($result2)) {
        $rowField = $row['Field'];
        if($i >= 4){
        $salesOptions .= '<option value="'.$rowField.'">'.$rowField.'</option>';
	}
        $i++;
    }
}


echo <<<HTML
<center><form action="result.php" target="myframe" method="POST">
<select name="productbox" id="productbox">
<option value=""></option>
$productOptions
</select>

<select name="timebox" id="timebox">
<option value=""></option>
$timeOptions
</select>


<select name="storebox" id="storebox">
<option value=""></option>
$storeOptions
</select>

<select name="promotionbox" id="promotionbox">
<option value=""></option>
$promoOptions
</select>

<select name="salesfactbox" id="salesfactbox">
<option value=""></option>
$salesOptions
</select>

<input name="submitbutton" type="submit" value="submit" />
</form>
</center>
HTML;
?>

<iframe name="myframe" src="result.php" width="100%" height="100%">
	
</iframe>
