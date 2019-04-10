<?php
		session_start();
		
		$servername = "localhost";
		$username = "project";
		$password = "databases";
		$dbname = "finalProject";
		
		$conn = new mysqli($servername, $username, $password, $dbname);
	
		if ($conn->connect_error) {
			die("Connection failed: " . $conn->connect_error);
		}
		
		$uname = $_SESSION['username'];
		$_barcode = $_POST['var'];
		
		//username, barcode, quantity, url -> Order in the table
		
		//Check if the item is in the database already
		
		$sql = "SELECT * FROM shopping_cart WHERE username='$uname' and barcode='$_barcode'";
		$result = mysqli_query($conn, $sql);
		
		$cnt = mysqli_num_rows($result);
		
		//Get the item url
		
		$sql = "SELECT * FROM items WHERE barcode='$_barcode'";
		$result = mysqli_query($conn, $sql);
		
		$temp = mysqli_fetch_assoc($result);
		
		$_url = $temp[url];
		
		if ($cnt == 0)
		{
			//insert
			$sql = "INSERT INTO shopping_cart VALUES('$uname', '$_barcode', '1', '$_url')";
			$result = mysqli_query($conn, $sql);
			
		}
		else
		{
			//Get quantity, update the value in the database
			
			$sql = "SELECT * FROM shopping_cart WHERE username='$uname' and barcode='$_barcode'";
			$result = mysqli_query($conn, $sql);
			
			$_quantity = mysqli_fetch_assoc($result);
		
			$quant = $_quantity[quantity];
			
			$quant += 1;
			
			$sql = "UPDATE shopping_cart SET quantity='$quant' WHERE username='$uname' and barcode='$_barcode'";
			$result = mysqli_query($conn, $sql);
			
			$sql = "INSERT INTO shopping_cart VALUES('$uname', '$item', ";
			$result = mysqli_query($conn, $sql);
		}
		
		header('Location: items.php');
		$conn->close();	
?>
