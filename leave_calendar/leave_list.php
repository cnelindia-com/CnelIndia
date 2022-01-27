<?php
include('config.php');

$data_para = $_REQUEST;
$ticket_user_id = $data_para['ticket_user_id'];

$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => base_url.'api.php?action=past_leave_list&key='.$api_token,
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => '',
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 0,
  CURLOPT_FOLLOWLOCATION => true,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => 'POST',
  CURLOPT_POSTFIELDS => array('ticket_user_id' => $ticket_user_id),
  CURLOPT_HTTPHEADER => array(
    'Cookie: PHPSESSID=05694b4cb480ea5c72d523645e468f92'
  ),
));

$response = curl_exec($curl);

curl_close($curl);
$response = json_decode($response);

if($response->status)
{
    $data_hwe = $response->data;
    //total leave count
    $total_month_hwe = array();
    foreach($data_hwe as $data_hwess)
    {
        $ticket_user_id = $data_hwess->tickets_users_id;
        //get total month leave
        $sel_user = $conn->query("select * from tickets_users where tickets_users_id=".$ticket_user_id);
        $user_res = mysqli_fetch_array($sel_user);
        
        $leaves_per_month = $user_res['leaves_per_month'];
        //get month calculate
        $current_date = date('Y-m-d');
        $start_date = $user_res['join_date'];
        $total_month = (dateDifference($start_date, $current_date)+1)*$leaves_per_month;
       
       if(empty($total_month_hwe[$ticket_user_id]))
       {
           $total_month_hwe[$ticket_user_id] = $total_month;
       }
        $cut_date_value = 0;
        if($data_hwess->status==1)
        {
            $cut_date_value = $data_hwess->leave_count;
        }
        
        $total_month_hwe[$ticket_user_id] = $total_month_hwe[$ticket_user_id]-$cut_date_value;
    }
    //print_r($total_month_hwe);
    //die();
    $son_hwe = 1;
    foreach($data_hwe as $data_hwes)
    {
        $tickets_users_leaves_id = $data_hwes->tickets_users_leaves_id;
        $ticket_user_id = $data_hwes->tickets_users_id;
        
        //get total month leave
        $sel_user = $conn->query("select * from tickets_users where tickets_users_id=".$ticket_user_id);
        $user_res = mysqli_fetch_array($sel_user);
        
        $leaves_per_month = $user_res['leaves_per_month'];
        $tickets_users_name = $user_res['tickets_users_name'];
        $join_date = strtotime($user_res['join_date']);
        
        //get month calculate
        $current_date = date('Y-m-d');
        $start_date = $user_res['join_date'];
        $total_month = (dateDifference($start_date, $current_date)+1)*$leaves_per_month;
        
        $half_full_day = '';
        $cut_date_value = 0;
        if($data_hwes->leave_type==1){ $half_full_day = '<img src="https://img.icons8.com/dotty/50/000000/sun.png" style="width: 30px;"/>'; $cut_date_value = 1; }
        else if($data_hwes->leave_type==2){ $half_full_day = '<img src="https://img.icons8.com/ios-filled/50/000000/first-quarter.png" style="width: 30px;"/>'; $cut_date_value = 0.5; }
        else if($data_hwes->leave_type==3){ $half_full_day = '<img src="https://img.icons8.com/ios-filled/50/000000/50-percents.png" style="width: 30px;"/>'; $cut_date_value = 0.5; }
        
        $status_hwe = '';
        if($data_hwes->status==0){ $status_hwe = 'Pending'; }
        else if($data_hwes->status==1){ $status_hwe = 'Approved'; }
        
        $show_hash_colum = '';
        if($_SESSION['sta_type'] == 'Admin')
		{
		    $show_hash_colum = '<a href="leave_calendar.php?ticket_user_id='.$ticket_user_id.'">'.$tickets_users_name.'</a>';
		}
		else
		{
		    $show_hash_colum = $son_hwe;
		}
        
        echo "<tr><td>".$show_hash_colum."</td>
                  <td>".date('d-m-Y',$data_hwes->date_timestamp)."</td>
                  <td>".$half_full_day."</td>
                  <td>".$data_hwes->reason."</td>
                  <td>".$total_month_hwe[$ticket_user_id]."</td>
                  <td>".$status_hwe."</td>
                  <td>".$data_hwes->comments."</td>
                  <td>";
            if($_SESSION['sta_type'] == 'Admin')
			{
                if($data_hwes->status==0)
                {
                    echo  "<img src='https://img.icons8.com/fluency/50/000000/approval.png' style='cursor: pointer; width: 30px;' id='leave_approval_hwe' data-id='".$tickets_users_leaves_id."' />";
                }
			
            	echo  "<img src='https://img.icons8.com/color/50/000000/delete-sign--v1.png' style='cursor: pointer; width: 30px;' id='leave_delete_hwe' data-id='".$tickets_users_leaves_id."' />";
        	}
        	echo "</td></tr>";
		$son_hwe++;
        if($data_hwes->status==1)
        {
            $total_month_hwe[$ticket_user_id] = $total_month_hwe[$ticket_user_id]+$cut_date_value;
        }
    }
}
else
{
    echo "Data not found.";
}
die();
?>
?>