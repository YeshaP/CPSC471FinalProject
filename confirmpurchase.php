<?php

	$servername = "localhost";
	$username = "project";
	$password = "databases";
	$dbname = "finalProject";

	$conn = new mysqli($servername, $username, $password, $dbname);
	
	if ($conn->connect_error) {
		die("Connection failed: " . $conn->connect_error);
	}
    
	session_start();
	
	$uname=$_SESSION['username'];
	
	$sql = "SELECT shopping_cart_items FROM customers WHERE username='$uname'";
    $result = mysqli_query($conn, $sql);
    
    $fieldinfo = mysqli_fetch_field($result);
    
	header('Location: paymentPage.html');
?>
