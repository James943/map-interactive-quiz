<?php      
    include('connection.php');
    $sql = "SELECT * FROM games WHERE gameID = 1";  
    $result = mysqli_query($con, $sql);
    $data = array();
    while ($row = mysqli_fetch_object($result)) {
        array_push($data, $row);
    }
    echo json_encode($data);
?>