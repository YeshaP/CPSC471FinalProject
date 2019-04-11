<?php

	session_start();
	
	$_SESSION = array();
	//Kill session cookie
	if (ini_get("session.use_cookies")) {
		$params = session_get_cookie_params();
		setcookie(session_name(), '', time() - 42000,
			$params["path"], $params["domain"],
			$params["secure"], $params["httponly"]
		);
	}
	$_SESSION['loggedin'] = false;
	$_SESSION['admin'] == false;
	session_destroy();
	header('Location: index.html');

?>
