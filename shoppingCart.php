<?php
	session_start();
?>

<!DOCTYPE html>
<html>
<head>
  <link rel="stylesheet" href="items.css">
</head>
<body>

<h1>Shopping Cart</h1>

<div class="cart" align="right">
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
  
		if ($_SESSION['loggedin'] == true)
		{
			echo "<a href=\"logout.php\" class=\"button\">Logout</a>";
			
			//if count(shoppingcart with username='' <> 0)
			
			$sql = "SELECT * FROM shopping_cart WHERE username='$uname'";
			$result = mysqli_query($conn, $sql);
			
			$count = mysqli_num_rows($result);
			
			if ($count <> 0)
			{
				echo "<a href=\"confirmpurchase.php\" class=\"button\">Purchase</a>";
			}
		}
  ?>
  
  <a href="items.php" class="button">Items</a>
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
		
		$_RUNNINGTOTAL = 0;
		
		$sql = "SELECT * FROM shopping_cart WHERE username='$uname'";
		$result = mysqli_query($conn, $sql);
		
		$cnt = mysqli_num_rows($result);
		//username, barcode, quantity, url
		//If the user doesn't have any items in his cart, don't perform the while loop; otherwise, do perform it
		if ($cnt > 0)
		{
			while($row = mysqli_fetch_assoc($result))
			{
				$sql2 = "SELECT * FROM items WHERE barcode='$row[barcode]'";
				$resulting = mysqli_query($conn, $sql2);
				
				$temp = mysqli_fetch_assoc($resulting);
				
				$_RUNNINGTOTAL += ($temp[price] * 1.05);
				
				echo "<div style=\"border-style: dotted; display: inline-block; background-color: white; padding: 0;margin-top: 20px;margin-left: 10px;margin-right: 2px;margin-bottom: 20px;text-align:center;\">
			</center><img src='$row[url]' height='300px' width='200px' border-style='solid'/>
				<br/>
				<h5 style=\"background-color: white;display: inline-block;text-align:center; margin-bottom:5px\"> 
				<p style=\"color:black; background-color: white\" >
					Price: \$$temp[price]<br>
					Quantity: $row[quantity]<br>
					Inventory: $temp[quantity]
					<br> Barcode: $row[barcode]
					</h5><br><br>
				<form method=\"POST\" action=\"update.php\">
					<input type=\"number\" name=\"quanti\" value=\"$row[quantity]\"/>
					<input type=\"hidden\" value=\"$row[barcode]\" name=\"var\" />
					<input type=\"submit\" value=\"Update\" />
				</form>
				</div>";
			}
			
			$_SESSION['RunningTotal'] = $_RUNNINGTOTAL;
		}
	?>
	
<script>
  function myFunction(){
    confirm("Purchase successful!");
  }
</script>
</body>
</html>
