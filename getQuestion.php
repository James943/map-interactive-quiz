<?php      
    include('connection.php');
    $sql = "SELECT * FROM questions WHERE qSet = 2 AND q = ".$_GET['q'];  
    $result = mysqli_query($con, $sql);
    $data = array();
    while ($row = mysqli_fetch_object($result)) {
        array_push($data, $row);
    }
    echo json_encode($data);
?>