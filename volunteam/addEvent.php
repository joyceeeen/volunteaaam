<?php
       $con = mysqli_connect("localhost","root","","volunteam");
       if (mysqli_connect_errno($con))
       {
         echo '{"query_result":"ERROR"}';
        }
       $eventName = $_GET['event_name'];
       $eventLoc = $_GET['event_location'];
       $eventfromDate = $_GET['event_fromDate'];
       $eventtoDate = $_GET['event_toDate'];
       $eventNeed = $_GET['event_volunteer'];
       $eventtoTime = $_GET['event_toTime'];
       $eventfromTime = $_GET['event_fromTime'];
       $eventDesc = $_GET['event_description'];
       $eventGneed = $_GET['event_gneed'];
       $eventGneed2 = $_GET['event_gneed2'];
      //  $eventGneed3 = $_GET['event_gneed3'];
      //  $eventGneed4 = $_GET['event_gneed4'];
      //  $eventGneed5 = $_GET['event_gneed5'];
       $eventSneed = $_GET['event_sneed'];
       $eventSneed2 = $_GET['event_sneed2'];
      //  $eventSneed3 = $_GET['event_sneed3'];
      //  $eventSneed4 = $_GET['event_sneed4'];
      //  $eventSneed5 = $_GET['event_sneed5'];
       $noOfneeds = $_GET['event_noNeeds'];
       $noOfneeds2 = $_GET['event_noNeeds2'];
       $user_id = $_GET['user_id']

      //  $noOfneeds3 = $_GET['event_noNeeds3'];
      //  $noOfneeds4 = $_GET['event_noNeeds4'];
      //  $noOfneeds5 = $_GET['event_noNeeds5'];


         $result = mysqli_query($con,"INSERT INTO events(user_id,event_name,event_location,event_fromDate,event_toDate,event_volunteer,event_fromTime,event_toTime,event_description)
           VALUES('$user_id','$eventName','$eventLoc','$eventfromDate','$eventtoDate','$eventNeed','$eventfromTime','$eventtoTime','$eventDesc')");
         $result2 = mysqli_query($con,"INSERT INTO event_volunteer(event_id,event_gneed,event_sneed,event_noVolunteers)
          VALUES('$user_id','$eventGneed','$eventSneed','$noOfneeds'),('1','$eventGneed2','$eventSneed2','$noOfneeds2')");


       if($result || $result2 == true){
        echo '{"query_result":"SUCCESS"}';
        }
        else{
          echo '{"query_result":"FAILURE"}';
        }
mysqli_close($con);


?>
