<?php 
include "connect.php";

$name = $_POST['name'];
$id = $_POST['id'];
$department = $_POST['department'];
$time = $_POST['time'];
$ttype = $_POST['ttype'];
$curdate = $_POST['date'];

if($ttype=="in"){
  $sql_ins = "INSERT INTO `reccord`(`id`, `name`,`department`,`time`,`date`) VALUES ('$id','$name','$department','$time','$curdate')";
$stmt = $con->prepare($sql_ins);
$stmt->execute();   
}
if($ttype=="out"){
    $sql_ins = "INSERT INTO `reccord_out`(`id`, `name`,`department`,`time`,`date`) VALUES ('$id','$name','$department','$time','$curdate')";
  $stmt = $con->prepare($sql_ins);
  $stmt->execute();   
  }
?>