<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="items.css">
</head>
<body>

<div class="heading">
  <h1>Mbiant Apparel</h1>
</div>

<div class="cart" align="right">
  <a href="logout.php" class="button">Logout</a>
  <a href="shoppingCart.php" class="button">Go to Shopping Cart</a>
</div>

<?php
	
		$servername = "localhost";
		$username = "project";
		$password = "databases";
		$dbname = "finalProject";
		
		$conn = new mysqli($servername, $username, $password, $dbname);
	
		if ($conn->connect_error) {
			die("Connection failed: " . $conn->connect_error);
		}
		
		$uname = $_SESSION['username'];
		
		$RunningTotal = 0;
		
		$sql = "SELECT * FROM items";
		$result = mysqli_query($conn, $sql);

		while($row = mysqli_fetch_assoc($result))
		{
			echo "<div style=\"border-style: solid; display: inline-block; background-color: #5e8cd1; margin-top: 20px;margin-left: 20px;margin-right: 10px;margin-bottom: 20px;text-align:center;\"><img src='$row[url]' height='500px' width='400px' border-style='solid'/><br/><h5 style=\"background-color: #5e8cd1;display: inline-block;text-align:center; margin-bottom:10px\"> Type: $row[type] <br> Color: $row[color] <br> Price: $row[price] <br> Gender: $row[gender] <br> Size: $row[size] <br> Quantity: $row[quantity] <br> Barcode: $row[barcode]</h5><br/><button type=\"button\" id=\"$row[barcode]\">Add to cart</button></div>";
		}
?>
<script>
  function myFunction(){
    confirm("Product added to cart");
  }
</script>
</body>
</html>
