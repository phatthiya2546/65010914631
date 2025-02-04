<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>ภัททิยา แนวโอโล(แยม)</title>
</head>

<body>
	<h1>ภัททิยา แนวโอโล (แยม)</h1>
    <form method="post" action="">
ราคาสินค้า<input type="number" name="n" min="0" autofocus required>
<button type="submit" name="Submit" >OK</button>
</form>
<hr>

<?php
if(isset($_POST['Submit'])){
	$price = $_POST['n'];
	if($price >=5000){
		$sale = $price*0.15;
	}else if($price >=2000){
		$sale = $price*0.10;
	}else if($price >=1000){
		$sale = $price*0.5;
	}else{
		$sale =0;
}
$net = $price-$sale;
echo"ราคาสินค้ารวม = ".number_format($price,2)." บาท <br>";
echo"ส่วนลดที่ได้ =".number_format($sale,2)." บาท <br>";
echo"จำนวนเงินที่จ่าย =".number_format($net,2)." บาท";
}
?>
</body>
</html>


</body>
</html>
