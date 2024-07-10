<?php      
    include('connection.php');
    $sql = "UPDATE questions SET ".$_GET['colour']." = '".$_GET['coordinates']."' WHERE qSet = 2 AND q = '".$_GET['q']."'";  
    if ($con->query($sql) === TRUE) {
        echo ("<script LANGUAGE='JavaScript'>
        window.alert('Coordinates submitted');
        window.location.href='question.html?q=".$_GET['q']."&colour=".$_GET['colour']."';</script>");
         } else {
             echo "Error: " . $sql . "<br>" . $con->error;
         }
?>