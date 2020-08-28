<?php
    $con = mysqli_connect('localhost', 'root', '','time_attendance');
    $con->query("SET NAMES UTF8"); 
    if ($con -> error ){
        echo '<script type = "text/javascript" > alert("Failed to connect : ' . $con -> error. '"); </script>';
    }
?>