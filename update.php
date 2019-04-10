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
	$quanti = $_POST['quanti'];
	$_barcode = $_POST['var'];
	
	
	//Check that the value changed is less than or equal to the quantity that exists in the items table
	
	$sql = "SELECT quantity FROM items WHERE barcode='$_barcode'";
	$result = mysqli_query($conn, $sql);
	
	$temp = mysqli_fetch_assoc($result);
	$_quantityItems = $temp[quantity];
	
	if ($quanti > $_quantityItems)
	{
		$_quantityShoppingCart == $_quantityItems;
		
		$sql = "UPDATE shopping_cart SET quantity='$_quantityShoppingCart' WHERE barcode='$_barcode'";
		$result = mysqli_query($conn, $sql);
		
		header('Location: shoppingCart.php');
	}
	else
	{
		$_quantityShoppingCart == $_quanti;
		
		$sql = "UPDATE shopping_cart SET quantity='$_quantityShoppingCart' WHERE barcode='$_barcode'";
		$result = mysqli_query($conn, $sql);
		
		header('Location: shoppingCart.php');
	}
	
?>
