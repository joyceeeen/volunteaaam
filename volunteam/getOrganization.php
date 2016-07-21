<?php
if(isset($_REQUEST['userID'])){

  $connect = mysqli_connect("localhost","root","","volunteam");
  if(mysqli_connect_errno($connect)){

    echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }

    $id = $_REQUEST['userID'];
    $queryko = 'SELECT * FROM organizations o INNER JOIN user_info u
                ON u.id = o.user_id
                WHERE u.id = '.$id.'';

    $running = mysqli_query($connect,$queryko);
    $output = array();
    while($row = mysqli_fetch_array($running)){
      array_push($output, array(

        "organization_id"=>$row[0],
        "creator_id"=>$row[1],
        "organization_name"=>$row[2],
        "organization_profile"=>$row[3],
        "organization_cover"=>$row[4],
        "creator_name"=>$row[5]
    ));
  }
  echo json_encode($output);

  }
  else
     {
     $output = "not found";
     print(json_encode($output));
     }
  mysqli_close($connect);
?>
