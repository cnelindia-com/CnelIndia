<?php
include('config.php');
$data_para = $_REQUEST;
$tickets_users_id = $data_para['ticket_user_id'];

$sel_user = $conn->query("select * from tickets_users where tickets_users_id=".$tickets_users_id);

$user_res = mysqli_fetch_array($sel_user);



$leaves_per_month = $user_res['leaves_per_month'];


//get month calculate

$current_date = date('Y-m-d');

$start_date = $user_res['join_date'];

$total_month = (dateDifference($start_date, $current_date)+1)*$leaves_per_month;





//get leave count

$sel_user_leave = $conn->query("select * from tickets_users_leaves where tickets_users_id=".$tickets_users_id." and status=1");

$total_leave_count = 0;

while($user_res_leave = mysqli_fetch_array($sel_user_leave))

{

        $total_leave_count = $total_leave_count+$user_res_leave['leave_count'];

}

echo $leave_blance = $total_month-$total_leave_count; 
die();
?>