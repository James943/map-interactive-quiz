<?php      
    include('connection.php');
    $colour = $_POST['colour'];
    $name = $_POST['name'];
    //to prevent from mysqli injection  
    $name = stripcslashes($name);  
    $name = mysqli_real_escape_string($con, $name);
    
    $sql = "SELECT $colour FROM games WHERE gameID = '1'";  
    $result = mysqli_query($con, $sql);
    $row = mysqli_fetch_row($result);
    if ($row[0] == "") {
        
        $sql = "UPDATE games SET $colour = '$name' WHERE gameID = 1";
        if ($con->query($sql) === TRUE) {
        echo ("<script LANGUAGE='JavaScript'>window.location.href='question.html?q=1&colour=".$colour."';</script>");
         } else {
             echo "Error: " . $sql . "<br>" . $con->error;
         }
         
    } else {
        echo("<script LANGUAGE='JavaScript'>window.alert('Too slow, someone already picked that colour');window.location.href='index.html';</script>");
    }

?>