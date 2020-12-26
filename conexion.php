  
<?php
session_start();

$conn = mysqli_connect(
  'localhost',
  'root',
  '',
  'base'
) or die(mysqli_erro($mysqli));

/*
if(isset ($conn)){
	echo "Bade de datos conectada :D";
}*/

?>