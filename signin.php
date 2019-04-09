<?php
	$servername = "localhost";
	$username = "project";
	$password = "databases";
	$dbname = "finalProject";

	$_uname=$_POST['uname'];
	$_pass=$_POST['pass']; 

	$conn = new mysqli($servername, $username, $password, $dbname);

	if ($conn->connect_error) {
		die("Connection failed: " . $conn->connect_error);
	}

	$sql = "SELECT * FROM customers WHERE username='$_uname' and password='$_pass'";
    $result = mysqli_query($conn, $sql);
    
    session_start();
    if (mysqli_num_rows($result) > 0) {
		$_SESSION['id'] = $_uname;
        $_SESSION['username'] = $_uname;
        $_SESSION['loggedin'] = true;
        header('Location: items.html');
    }
    else
    {
		header('Location: login.php');
	}
 
?>
