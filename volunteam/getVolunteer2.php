<?php


  $connect = mysqli_connect("localhost","root","","volunteam");
  if(mysqli_connect_errno($connect)){

    echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }

    $user_id = "1";
    $id = "1";
    $queryko = 'SELECT * from events e, organizations o where e.user_id= '.$user_id.' AND id = '.$id.'';
    $running = mysqli_query($connect,$queryko);

    $output = array();
    while($row = mysqli_fetch_array($running)){
      array_push($output, array(
        $output[] = $row
    ));
  }
  echo json_encode($output);
  mysqli_close($connect);

  // else
  //    {
  //    $output = "not found";
  //    print(json_encode($output));
  //    }

?>
