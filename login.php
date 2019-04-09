<?php
function OpenCon()
 {
 $dbhost = "68.183.197.33";
 $dbuser = "DemoAdmin";
 $dbpass = "cpsc471db";
 $db = "68.183.197.33";
 $conn = new mysqli($dbhost, $dbuser, $dbpass,$db) or die("Connect failed: %s\n". $conn -> error);
 
 return $conn;
 }
 
function CloseCon($conn)
 {
 $conn -> close();
 }
   
?>