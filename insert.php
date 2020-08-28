<?php 
include "connect.php";

$name = $_POST['name'];
$id = $_POST['id'];
$department = $_POST['department'];
$time = $_POST['time'];


$sql_ins = "INSERT INTO `reccord`(`id`, `name`,`department`,`time`) VALUES ('$id','$name','$department','$time')";
$stmt = $con->prepare($sql_ins);
$stmt->execute(); 
?>