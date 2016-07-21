<?php

$connect = mysqli_connect("localhost","root","","volunteam");
if(mysqli_connect_errno($connect)){

echo "Failed to connect to MySQL: " . mysqli_connect_error();
}
else{
      $queryko = 'select * from events';
      $running = mysqli_query($connect,$queryko);

		$output = array();
	  while($row = mysqli_fetch_array($running)){
			array_push($output, array(
            'id'=>$row[0],
						'event_name'=>$row[1],
						'event_location'=>$row[2],
						'event_fromDate'=>$row[3],
            'event_fromTime'=>$row[5],
            'event_pic'=>$row[9]

						));
	  }
	  echo json_encode($output);
mysqli_close($connect);
}
?>


</html>
