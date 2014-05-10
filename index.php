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
<title>Grocery's OLAP</title>
<center><h1>Welcome to Grocery's OLAP</h1></center>
<center><form action="result.php" target="myframe" method="POST">
<dl>
<dt><label for="productbox">Product</label></dt>
<dd><select name="productbox" id="productbox">
<option value=""></option>
$productOptions
</select></dd>
</dl>

<dl>
<dt><label for="timebox">Time</label></dt>
<dd><select name="timebox" id="timebox">
<option value=""></option>
$timeOptions
</select></dd>
</dl>

<dl>
<dt><label for="storebox">Store</label></dt>
<dd><select name="storebox" id="storebox">
<option value=""></option>
$storeOptions
</select></dd>
</dl>

<dl>
<dt><label for="promotionbox">Promotion</label></dt>
<dd><select name="promotionbox" id="promotionbox">
<option value=""></option>
$promoOptions
</select></dd>
</dl>

<dl>
<dt><label for="salesfactbox">Sales Fact</label></dt>
<dd><select name="salesfactbox" id="salesfactbox">
<option value=""></option>
$salesOptions
</select></dd>
</dl>

<input name="submitbutton" type="submit" value="submit" id="b1"/>
</form>
</center>
HTML;
?>

<iframe name="myframe" src="result.php" width="100%" height="100%" frameborder="0">
	
</iframe>


<style>
dl {
	display: inline-block;
}
label {
	font-weight:bold;
	font-size: 20px;
}
h1, label {
	font-family: "Lucida Sans Unicode", "Lucida Grande", sans-serif;
}
</style>