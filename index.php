<center><form action="result.php" target="myframe" method="POST">
<select name="timebox" id="timebox">
<option value=""></option>
<option value="year">Year</option>
<option value="month">Month</option>
</select>

<select name="productbox" id="productbox">
<option value=""></option>
<option value="description">Product Name</option>
<option value="brand">Product Brand</option>
</select>

<select name="storebox" id="storebox">
<option value=""></option>
<option value="name">Store Name</option>
<option value="store_number">Store Number</option>
</select>

<select name="promotionbox" id="promotionbox">
<option value=""></option>
<option value="promotion_name">Promotion Name</option>
<option value="coupon_type">Coupton Type</option>
</select>

<select name="salesfactbox" id="salesfactbox">
<option value=""></option>
<option value="dollar_sales">Dollar Sales</option>
<option value="unit_sales">Unit Sales</option>
</select>
<input name="submitbutton" type="submit" value="submit" />
</form></center>

<iframe name="myframe" src="result.php" width="100%" height="100%">
	
</iframe>
