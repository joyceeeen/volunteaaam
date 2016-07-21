<?php
session_start();
function clean($str) {
  $str = @trim($str);
  if(get_magic_quotes_gpc()) {
    $str = stripslashes($str);
  }
  return mysql_real_escape_string($str);
}
$any = clean($_POST['username']);
$password = clean($_POST['password']);
$connect = mysqli_connect("localhost","root","","volunteam");
$queryko = "SELECT * FROM users WHERE email = '".$any."' AND password = '".$password."' OR username = '".$any."' AND password = '".$password."' OR phone_number = '".$any."' AND password = '".$password."'";
$running = mysqli_query($connect,$queryko);
if(mysqli_num_rows($running) == 1) {
  session_regenerate_id();
  $member = mysqli_fetch_assoc($running);
  $_SESSION['SESS_ACCOUNT_ID'] = $member['account_id'];
  $_SESSION['SESS_TYPE'] = $member['type'];
  $_SESSION['SESS_FULNAME'] = $member['name'];
  //$_SESSION['SESS_PIC'] = $member['profile_pic'];
  session_write_close();
  header("location: home.php");
}else {
  $_SESSION['msg'] = 'Invalid Credentials!!.';
  $_SESSION['type'] = 'error.';
  header("location:login.php");
}
 ?>
