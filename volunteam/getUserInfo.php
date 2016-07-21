<?php
if(isset($_REQUEST['userID'])){

  $connect = mysqli_connect("localhost","root","","volunteam");
  if(mysqli_connect_errno($connect)){

    echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }


    $id = $_REQUEST['userID'];
    $queryko = 'SELECT * FROM user_info WHERE id = '.$id.'';
    $running = mysqli_query($connect,$queryko);
    $output = array();
    while($row = mysqli_fetch_array($running)){
      array_push($output, array(
    "id"=>$row[0],
    "name"=>$row[1],
    "gender"=>$row[2],
    "email"=>$row[3],
    "password"=>$row[4],
    "user"=>$row[5],
    "profile_pic"=>$row[6]
    ));
  }
  echo json_encode($output);
  mysqli_close($connect);
  }
  else
     {
     $output = "not found";
     print(json_encode($output));
     }

?>
