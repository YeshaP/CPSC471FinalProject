<?php
	session_start();
?>

<!DOCTYPE html>
<html>
	<head>
		<title>Login to Ambiant</title>
		<link rel="stylesheet" href="login.css">
	</head>

	<body>

	<?php

		if (isset($_SESSION['loggedin']) && $_SESSION['loggedin'] == true)
		{
			header('Location: selection.html');
		}

	?>

	<h1>Admin Login</h1>
	  <div class="info">

		<form method="POST" action="adminSignIn.php">
			<label for="uname"><b>Username</b></label>
			<input type="text" placeholder="Please enter Username" name="uname" required>

			<label for="pass"><b>Password</b></label>
			<input type="password" placeholder="Please enter Password" name="pass" required>

			<button type="submit"><input type="submit" name="commit" value="Login"></button>
		</form>

	  </div>

	</body>
</html>
