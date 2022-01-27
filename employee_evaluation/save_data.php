<?php
include('../leave_calendar/config.php');
if(!isset($_REQUEST['skip']))
{
    $date_reviewed= $_POST['date_reviewed'];
    $review_from= $_POST['review_period_from'];
    $review_to= $_POST['review_period_to'];
    $performance_goals= $_POST['performance_goal'];
    $overall_rating = $_POST['overall_rating'];
    $overall_comment= $_POST['overall_rating_performance_comment'];
    $tickets_users_id= $_POST['tickets_users_id'];
    $team_user_id= $_POST['team_user_id'];
    
    $performance_category_list = $_POST['performance_category_list'];
    $performance_category_comment = $_POST['performance_category_comment'];
    
    $insert_data= array();
    
    $insert_data['employee_id']= $tickets_users_id;
    $insert_data['supervisor_id']= $team_user_id;
    $insert_data['date_reviewed']= strtotime($date_reviewed);
    $insert_data['review_from']= strtotime($review_from);
    $insert_data['review_to']= strtotime($review_to);
    $insert_data['performance_goals']= $performance_goals;
    $insert_data['overall_rating']= $overall_rating;
    $insert_data['overall_comment']= $overall_comment;
    
    $url=base_url."/api.php?action=add_employee_evaluation&key=".$api_token;
    
    $curl = curl_init();
    
    curl_setopt_array($curl, array(
      CURLOPT_URL => $url,
      CURLOPT_RETURNTRANSFER => true,
      CURLOPT_ENCODING => "",
      CURLOPT_MAXREDIRS => 10,
      CURLOPT_TIMEOUT => 30,
      CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
      CURLOPT_CUSTOMREQUEST => "POST",
      CURLOPT_POSTFIELDS => $insert_data,
      CURLOPT_HTTPHEADER => array(
        
      ),
    ));
    $response = curl_exec($curl);
    $err = curl_error($curl);
    
    curl_close($curl);
    
    if ($err) {
      //echo "cURL Error #:" . $err;
    } else {
    $response = json_decode($response,true);
      //print_r($response);
    }
    $data_id =$response['data_id'];
    
    
    
    if(count($performance_category_list)>0)
    {
        foreach($performance_category_list as $category_id => $performance_category_lists)
        {
            $insert_data['employee_evaluation_id']= $data_id;
            $insert_data['performance_id']= $category_id;
            $insert_data['rating_id']= $performance_category_lists;
            $insert_data['employee_comments']= $performance_category_comment[$category_id];
            
            
            $url=base_url."/api.php?action=add_evaluation_performance_rating&key=".$api_token;
            
            $handle = curl_init($url);
            curl_setopt($handle, CURLOPT_POST, true);
            curl_setopt($handle, CURLOPT_POSTFIELDS, $insert_data);
            $response = curl_exec($handle);
            curl_close($handle);
            
        }
    }
    
    header("Cache-Control: no-cache, must-revalidate");
    header('Access-Control-Allow-Origin: *');
    echo true;
    die();
}
else
{
    $insert_data= array();
    $tickets_users_id= $_POST['tickets_users_id'];
    $team_user_id= $_POST['team_user_id'];
    $review_from= strtotime($_POST['review_period_from']);
    $review_to= strtotime($_POST['review_period_to']);
    $insert_data['skip']= 1;
    $insert_data['employee_id']= $tickets_users_id;
    $insert_data['supervisor_id']= $team_user_id;
    $insert_data['review_from']= $review_from;
    $insert_data['review_to']= $review_to;
    
    $url=base_url."/api.php?action=add_employee_evaluation&key=".$api_token;
    $curl = curl_init();
    curl_setopt_array($curl, array(
      CURLOPT_URL => $url,
      CURLOPT_RETURNTRANSFER => true,
      CURLOPT_ENCODING => "",
      CURLOPT_MAXREDIRS => 10,
      CURLOPT_TIMEOUT => 30,
      CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
      CURLOPT_CUSTOMREQUEST => "POST",
      CURLOPT_POSTFIELDS => $insert_data,
      CURLOPT_HTTPHEADER => array(
      ),
    ));
    $response = curl_exec($curl);
    $err = curl_error($curl);
    curl_close($curl);
    
    header("Cache-Control: no-cache, must-revalidate");
    header('Access-Control-Allow-Origin: *');
    echo $response;
    die();
}
die();
?>