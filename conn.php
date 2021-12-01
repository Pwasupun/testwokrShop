<?php
$host = "localhost";
$user = "root";
$pass = "Admin1234";
$db = "shop";
$con = mysqli_connect($host,$user,$pass,$db);

// Check connection
if (mysqli_connect_errno()) {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  exit();
}
?>