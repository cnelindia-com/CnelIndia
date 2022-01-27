<?php 
session_start();

date_default_timezone_set("Asia/Kolkata");

//database connection
$actual_link = "http://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]";
if(strpos($actual_link, 'readyforyourreview') !== false) 
{
    $host = "localhost";
    $user = "ccrdskmy_leave";
    $pass = "?eMWUHkZ_sE@";
    $data = "ccrdskmy_leave_schedule";
    
    define("base_url","https://readyforyourreview.com/cnelindia/leave_calendar/");
    define("base_url_ee","https://readyforyourreview.com/cnelindia/employee_evaluation/");
    
    $api_token = "s6d5fs5fs5df6s65df"; 
}
else
{
    include('../../config.php');
    
    define("base_url","https://cnelindia.com/support/admin/leave_calendar/");
    define("base_url_ee","https://readyforyourreview.com/cnelindia/employee_evaluation/");
}



$conn = mysqli_connect($host, $user, $pass, $data);
// Check connection
if (!$conn) {
  die("Connection failed: " . mysqli_connect_error());
}

function dateDifference($date_1 , $date_2 , $differenceFormat = '%m' )
{
    $datetime1 = date_create($date_1);
    $datetime2 = date_create($date_2);
   
    $interval = date_diff($datetime1, $datetime2);
   
    return $interval->format($differenceFormat);
}
?>