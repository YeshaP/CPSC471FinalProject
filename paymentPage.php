<?php
	session_start();
?>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="login.css">
</head>
<body>

  <h1>User Registration</h1>
  
  <?php
  
	$servername = "localhost";
	$username = "project";
	$password = "databases";
	$dbname = "finalProject";
	
	$uname=$_SESSION['username'];
	
	$conn = new mysqli($servername, $username, $password, $dbname);
	// Check connection
	if ($conn->connect_error) {
		die("Connection failed: " . $conn->connect_error);
	}
	
	$sql = "SELECT * FROM customers WHERE username='$uname'";
	$result = mysqli_query($conn, $sql);
	$temp = mysqli_fetch_assoc($result);
	
	$RunningTotal = $_SESSION['RunningTotal'];
  
	echo "<div style=\"border-style: solid\"><h5>&nbsp;Your order has a total of \$$RunningTotal</h5>
	
	<p>&nbsp;Ship to: <br>&nbsp;$temp[street_name] , $temp[city] , $temp[province] , $temp[country] , $temp[postal_code]</p>
	</div><br>";
  
  
  ?>
  <form action="processPayment.php" method="POST">
    <!-- <div class="makePayment"> -->
      <label for="cardNumber"><b>Card Number</b></label>
      <input type="text" placeholder="Please enter Card Number" name="cardNumber" maxlength="16" required>
      
      <label for="expiry_month"><b>Expiry Month</b></label>
      <input type="number"  placeholder="mm" name="expiry_month" maxlength="2" required>   
      
      <label for="expiry_year"><b>Expiry Year</b></label>
      <input type="number" placeholder="yy" name="expiry_year" maxlength="2" required>  
    
    <select name="cardType">
  		<option value="VISA">VISA</option>
  		<option value="MasterCard">MasterCard</option>
  		<option value="American_Express">American Express</option>
  		<option value="Debit">Debit</option>
	</select>


    <button type="submit"><input type="submit" name="commit" value="Payment"></button>
      <!-- <a href="index.html" class="button" onclick="if(confirm('Payment Successful')){return true;}else{return false;};" title="LinkTitle">
        Make Payment
      </a> -->
    <!-- </div> -->
  </form>
</body>
</html>
