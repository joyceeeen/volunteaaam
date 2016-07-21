<?php
if(isset($_REQUEST['vNeed'])){

  $connect = mysqli_connect("localhost","root","","volunteam");
  if(mysqli_connect_errno($connect)){

    echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }


    $vNeed = $_REQUEST['vNeed'];
    $vList = explode(',',$vNeed);
    $volunteeers = "";
    for($i = 0; $i < count($vList); $i++){
      if($i == (count($vList)-1)){
        $volunteeers.="'".$vList[$i]."'";
      }
      else{
        $volunteeers.="'".$vList[$i]."',";
      }
    }

    //$trial = "'Doctor'";
    $queryko = 'SELECT * FROM volunteers WHERE volunteer_skills IN('.$volunteeers.') AND volunteer_type = "volunteer" ORDER BY volunteer_s';
    $running = mysqli_query($connect,$queryko);
    $output = array();
    while($row = mysqli_fetch_array($running)){
      array_push($output, array(
      'volunteer_name'=>$row[2],
      'volunteer_address'=>$row[3],
      'volunteer_skills'=>$row[4],
      'volunteer_profilepic'=>$row[5]
      // 'event_toDate'=>$row[4],
      // 'event_fromTime'=>$row[5],
      // 'event_toTime'=>$row[6]
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
