<?php
$dbc = @mysqli_connect ('localhost','root','password','test') OR die ('Could not connect to MySQL: ' . mysqli_connect_error() );
$query="SELECT COUNT(*) FROM information_schema.CHARACTER_SETS C;";
$result = @mysqli_query ($dbc, $query);
$row = mysqli_fetch_array($result, MYSQLI_NUM);
$somet=$row[0];
echo $somet;
?>
