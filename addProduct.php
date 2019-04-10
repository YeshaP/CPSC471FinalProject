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

	$type=$_POST['type'];
	$barcode=$_POST['barcode'];
	$color=$_POST['color'];
	$price=$_POST['price'];
	$size=$_POST['size'];
	$gender=$_POST['gender'];
	$quantity=$_POST['quantity'];
	$description=$_POST['description'];
	$url=$_POST['url'];

	// Check if product already exists
    $sql = "SELECT * FROM items WHERE barcode='$barcode' LIMIT 1";
    $result = mysqli_query($conn, $sql);
    if (mysqli_num_rows($result) > 0) {
        $sql = "UPDATE items SET quantity='$quantity'";
        echo "Product quantity has been updated";
        header('Location: addProduct.php');
    }



	$sql = "INSERT INTO items VALUES('$type', '$barcode', '$color', '$price', '$size', '$gender', '$quantity', '$description', '$url')";

	if ($conn->multi_query($sql) === TRUE) {
    echo "Product has been added";
		header('Location: addProduct.php');
	} else {
		echo "Error: " . $sql . "<br>" . $conn->error;
	}

	$conn->close();
?>
