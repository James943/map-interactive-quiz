<?php      
    $host = "localhost";  
    $user = "jn494_james";  
    $password = '=.4KG#v^Pjc9';  
    $db_name = "jn494_quiz";  
      
    $con = mysqli_connect($host, $user, $password, $db_name);  
    if(mysqli_connect_errno()) {  
        die("Failed to connect with MySQL: ". mysqli_connect_error());  
    }  
?>