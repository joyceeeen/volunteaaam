<?php
if(isset($_REQUEST['eventID'])){

  $connect = mysqli_connect("localhost","root","","volunteam");
  if(mysqli_connect_errno($connect)){

    echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }


    $id = $_REQUEST['eventID'];
    $queryko = 'SELECT * FROM events WHERE id = '.$id.'';
    $running = mysqli_query($connect,$queryko);
    $output = array();
    while($row = mysqli_fetch_array($running)){
      array_push($output, array(
      'event_name'=>$row[1],
      'event_location'=>$row[2],
      'event_fromDate'=>$row[3],
      'event_fromTime'=>$row[5],
      'event_volunteer'=>$row[7],
      'event_description'=>$row[8]
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
