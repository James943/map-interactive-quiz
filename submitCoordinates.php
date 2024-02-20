<?php      
    include('connection.php');
    $sql = "UPDATE questions SET ".$_GET['team']." = '".$_GET['coordinates']."' WHERE q = '".$_GET['q']."'";  
    if ($con->query($sql) === TRUE) {
        echo ("<script LANGUAGE='JavaScript'>
        window.alert('Coordinates submitted');
        window.location.href='question.html?q=".$_GET['q']."&team=".$_GET['team']."';</script>");
         } else {
             echo "Error: " . $sql . "<br>" . $con->error;
         }
?>