<?php
	$host="68.183.197.33"; // Host name 
	$username="DemoAdmin"; // Mysql username 
	$password="cpsc471db"; // Mysql password 
	$db_name="finalProject"; // Database name 
	$tbl_name="items"; // Table name 
	// Connect to server and select databse.
	@mysql_connect("$host", "$username", "$password")or die("cannot connect"); 
	mysql_select_db("$db_name")or die("cannot select DB");
	// username and password sent from form 
	$username=$_POST['username']; 
	$password=$_POST['password']; 
	// To protect MySQL injection (more detail about MySQL injection)
	$username = stripslashes($username);
	$password = stripslashes($password);
	$username = mysql_real_escape_string($username);
	$password = mysql_real_escape_string($password);
	$sql="SELECT * FROM $items";
	$result=mysql_query($sql);
	// Mysql_num_row is counting table row
	$count=mysql_num_rows($result);
	// If result matched $username and $password, table row must be 1 row
	if($count==1){
		echo 'error fetching from db'; 
	}
	else
	{
		header('Location: login.html');
	}
?>