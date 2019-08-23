<?php 
// Database configuration
DEFINE ('DB_HOST', 'localhost'); 
DEFINE ('DB_USER', 'horation');
DEFINE ('DB_PASSWORD', 'hmsvictory'); 
DEFINE ('DB_NAME', 'display_images'); 

//create database connection
$dbcon = mysqli_connect(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME) OR die ('Could not connect to MySQL: '. mysqli_connect_error()); 

// Check connection
if(mysqli_connect_errno($dbcon))  echo "Failed to connect MySQL: " .mysqli_connect_error();
mysqli_set_charset($dbcon, 'utf8'); 
?> 