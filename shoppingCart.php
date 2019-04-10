<?php
	session_start();
?>

<!DOCTYPE html>
<html>
<head>
  <link rel="stylesheet" href="shoppingCart.css">
</head>
<body>

<h1>Shopping Cart</h1>

<div class="buyNow">
  <button type="button" id="button1" onclick="window.location.href = 'confirmpurchase.php';">Buy Now</button>
  <!-- <button onclick="myFunction()"> Buy Now </button> -->
  <?php
		if (isset($_SESSION['loggedin']) && $_SESSION['loggedin'] == true)
		{
			echo "<a href='logout.php' class='button'>Logout</a>";
		}
  ?>
</div>
<div>
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
		
		$sql = "SELECT * FROM shopping_cart WHERE username='$uname'";
		$result = mysqli_query($conn, $sql);
		
		$cnt = mysqli_num_rows($result);
	
		//If the user doesn't have any items in his cart, don't perform the while loop; otherwise, do perform it
		if ($cnt > 0)
		{
			while($row = mysqli_fetch_assoc($result))
			{
				echo "<img src='$row[url]' height='500px' width='400px' border-style='solid' align='left'/>";
			}
		}
	?>
</div>
<script>
  function myFunction(){
    confirm("Purchase successful!");
  }
</script>
</body>
</html>
