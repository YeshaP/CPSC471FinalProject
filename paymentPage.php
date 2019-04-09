<?php
	$servername = "localhost";
	$username = "root";
	$password = "yesha1998";
	$dbname = "finalproject";

	// Create connection
	$conn = new mysqli($servername, $username, $password, $dbname);
	// Check connection
	if ($conn->connect_error) {
		die("Connection failed: " . $conn->connect_error);
	}


	$card_number=$_POST['cardNumber'];
	$card_type=$_POST['cardType'];

  $uname="Hello";
	$sql = "INSERT INTO purchase VALUES('$card_number','$card_type','$uname')";
	if ($conn->multi_query($sql) === TRUE) {
		header('Location: index.html');
	} else {
		echo "Error: " . $sql . "<br>" . $conn->error;
	}
	$conn->close();
?>
