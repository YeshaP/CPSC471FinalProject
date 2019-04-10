<?php
	session_start();
?>
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
  <?php
  
		if ($_SESSION['loggedin'] == true)
		{
			echo "<a href=\"logout.php\" class=\"button\">Logout</a>";
			echo "<a href=\"confirmpurchase.php\" class=\"button\">Purchase</a>";
		}
  ?>
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
		
		$sql = "SELECT * FROM items";
		$result = mysqli_query($conn, $sql);

		while($row = mysqli_fetch_assoc($result))
		{
			echo "<div style=\"border-style: dotted; display: inline-block; background-color: #5e8cd1; padding: 0;margin-top: 20px;margin-left: 10px;margin-right: 2px;margin-bottom: 20px;text-align:center;\">
			</center><img src='$row[url]' height='300px' width='200px' border-style='solid'/>
			<br/>
			<h5 style=\"background-color: #5e8cd1;display: inline-block;text-align:center; margin-bottom:5px\"> 
			<p style=\"color:white; background-color: #5e8cd1\" >Description: <br>$row[description]</p> <br><br>
				Type: $row[type] <br> 
				Color: $row[color] <br> 
				Price: $row[price] <br> 
				Gender: $row[gender] <br> 
				Size: $row[size] <br> 
				Quantity: $row[quantity] 
				<br> Barcode: $row[barcode]
				</h5><br/>
			<form method=\"POST\" action=\"addtocart.php\">
				<input type=\"hidden\" value=\"$row[barcode]\" name=\"var\" />
				<input type=\"submit\" value=\"Add to cart\" />
			</form>
			</div>";
		}
?>
<script>
  function myFunction(){
    confirm("Product added to cart");
  }
</script>
</body>
</html>
