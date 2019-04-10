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

	session_start();
	
	$card_number=$_POST['cardNumber'];
	$card_type=$_POST['cardType'];
	$expiry_year=$_POST['expiry_year'];
	$expiry_month=$_POST['expiry_month'];


	$uname=$_SESSION['username'];
	
	$sql = "INSERT INTO purchase VALUES('$card_number','$card_type', '$uname', '$expiry_month', '$expiry_year')";
	if ($conn->multi_query($sql) === TRUE) {
		
		$_SESSION = array();
		//Kill session cookie
		if (ini_get("session.use_cookies")) {
			$params = session_get_cookie_params();
			setcookie(session_name(), '', time() - 42000,
				$params["path"], $params["domain"],
				$params["secure"], $params["httponly"]
			);
		}
		session_destroy();
		header('Location: index.html');
	} else {
		echo "Error: " . $sql . "<br>" . $conn->error;
	}
	$conn->close();
?>
