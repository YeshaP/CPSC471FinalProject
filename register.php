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
	
	
	$u_name=$_POST['uname']; 
	$f_name=$_POST['fname'];
	$m_name=$_POST['mname'];
	$l_name=$_POST['lname'];
	$s_name=$_POST['sname'];
	$_city=$_POST['city'];
	$_province=$_POST['province'];
	$_country=$_POST['country'];
	$_postal_code=$_POST['postal_code'];
	$_pass=$_POST['pass'];

	// Check if email already exists
    $sql = "SELECT * FROM customers WHERE username='$u_name' LIMIT 1";
    $result = mysqli_query($conn, $sql);
    if (mysqli_num_rows($result) > 0) {
        header('Location: register.html');
    }


	
	$sql = "INSERT INTO customers VALUES('$u_name', '$f_name', '$m_name', '$l_name', '$s_name', '$_city', '$_province', '$_country', '$_postal_code', '$_pass')";

	if ($conn->multi_query($sql) === TRUE) {
		header('Location: login.html');
	} else {
		echo "Error: " . $sql . "<br>" . $conn->error;
	}

	$conn->close();
?> 
