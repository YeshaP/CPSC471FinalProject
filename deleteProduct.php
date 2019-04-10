<?php
	$servername = "localhost";
	$username = "project";
	$password = "databases";
	$dbname = "finalProject";

	// Create connection
	$conn = new mysqli($servername, $username, $password, $dbname);
	// Check connection
	if ($conn->connect_error) {
		die("Connection failed: " . $conn->connect_error);
	}

	$barcode=$_POST['barcode'];


	// Check if product already exists
    $sql = "SELECT * FROM items WHERE barcode='$barcode'";
    $result = mysqli_query($conn, $sql);
    if (mysqli_num_rows($result) > 0) {
        $sql = "DELETE FROM items INNER JOIN shopping_cart WHERE barcode='$barcode'";
        $result = mysqli_query($conn, $sql);
        echo "Product has been deleted";
        $conn->close();
        header('Location: deleteProduct.html');
    }else{
      echo "Product does not exist";
      header('Location: deleteProduct.html');
    }


	$conn->close();
?>
