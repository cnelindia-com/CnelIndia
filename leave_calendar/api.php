<?php
include('config.php');

$apiclasscall = new quickappdataapihwe();

$task = $_GET['action'];
if(isset($_GET['action']))
{
	$api_function_run = $apiclasscall->$task($conn,$api_token);
}
else
{
	echo "Please enter API name.";
}

class quickappdataapihwe
    {
        //add leave

        function user_add_leave($conn,$api_token)
        {
            $data_para = $_REQUEST;
            
            $key = $data_para['key'];
            
            if($api_token != $key)
            {
                $output = array('status' => false, 'error_code' => '1', 'message' => 'Please enter correct API key.');
                header("Cache-Control: no-cache, must-revalidate");
                header('Content-type: application/json');
                header('Access-Control-Allow-Origin: *');
                print json_encode($output);
                die();
            }
            
            $ticket_user_id = $data_para['ticket_user_id'];
            $leave_date = strtotime($data_para['leave_date']);
            $leave_day_menu = $data_para['leave_day_menu'];
            $leave_reason = $data_para['leave_reason'];
            $leave_count = 0;
            if($leave_day_menu == 1){ $leave_count = 1; }
            if($leave_day_menu == 2){ $leave_count = 0.5; }
            if($leave_day_menu == 3){ $leave_count = 0.5; }

            if(($ticket_user_id == "") || ($leave_date == "") ||($leave_day_menu == ""))
            {

                $output = array('status' => false, 'error_code' => '1', 'message' => 'All Filds Required.');
                header("Cache-Control: no-cache, must-revalidate");
                header('Content-type: application/json');
                header('Access-Control-Allow-Origin: *');
                print json_encode($output);
                die();
            }
            else
            {
                $insert_leave = $conn->query("INSERT INTO tickets_users_leaves SET tickets_users_id='".$ticket_user_id."', 
                                                                   date_timestamp='".$leave_date."', 
                                                                   leave_type='".$leave_day_menu."',
                                                                   leave_count='".$leave_count."',
                                                                   reason='".$leave_reason."'");
                if($insert_leave)
                {
                    $output = array('status' => true, 'error_code' => '0', 'message' => 'Leave add successful.');
                }
                else
                {
                    $output = array('status' => false, 'error_code' => '1', 'message' => 'Leave not add successful.');
                }
                
                header("Cache-Control: no-cache, must-revalidate");
                header('Content-type: application/json');
                header('Access-Control-Allow-Origin: *');
                print json_encode($output);
                die();
            }

        }
        
        
        function past_leave_list($conn,$api_token)
        {
            $data_para = $_REQUEST;
            $ticket_user_id = $data_para['ticket_user_id'];
            $key = $data_para['key'];
            
            if($api_token != $key)
            {
                $output = array('status' => false, 'error_code' => '1', 'message' => 'Please enter correct API key.');
                header("Cache-Control: no-cache, must-revalidate");
                header('Content-type: application/json');
                header('Access-Control-Allow-Origin: *');
                print json_encode($output);
                die();
            }

            if($ticket_user_id == "")
            {

                $output = array('status' => false, 'error_code' => '2', 'message' => 'Ticket User ID Required.');
                header("Cache-Control: no-cache, must-revalidate");
                header('Content-type: application/json');
                header('Access-Control-Allow-Origin: *');
                print json_encode($output);
                die();
            }
            else
            {
                //get leave count 
                if($ticket_user_id)
                {
                    $sel_user_leave = $conn->query("select * from tickets_users_leaves where tickets_users_id=".$ticket_user_id." ORDER BY tickets_users_leaves_id DESC");
                }
                else
                {
                    $sel_user_leave = $conn->query("select * from tickets_users_leaves ORDER BY tickets_users_leaves_id DESC");
                }
                
                $total_leave_data = array();
                while($user_res_leave = mysqli_fetch_array($sel_user_leave))
                {
                    $total_leave_data[] = $user_res_leave;
                }
                if(mysqli_num_rows($sel_user_leave))
                {
                    $output = array('status' => true, 'error_code' => '0', 'message' => 'Leave list', 'data' => $total_leave_data);
                }
                else
                {
                    $output = array('status' => false, 'error_code' => '1', 'message' => 'Leave list not found');
                }
                
                header("Cache-Control: no-cache, must-revalidate");
                header('Content-type: application/json');
                header('Access-Control-Allow-Origin: *');
                print json_encode($output);
                die();
            }

        }
        
        function leave_delete($conn,$api_token)
        {
            $data_para = $_REQUEST;
            $ticket_user_id = $data_para['ticket_user_id'];
            
            $key = $data_para['key'];
            
            if($api_token != $key)
            {
                $output = array('status' => false, 'error_code' => '1', 'message' => 'Please enter correct API key.');
                header("Cache-Control: no-cache, must-revalidate");
                header('Content-type: application/json');
                header('Access-Control-Allow-Origin: *');
                print json_encode($output);
                die();
            }

            if($ticket_user_id == "")
            {
                $output = array('status' => false, 'error_code' => '1', 'message' => 'Ticket User ID Required.');
                header("Cache-Control: no-cache, must-revalidate");
                header('Content-type: application/json');
                header('Access-Control-Allow-Origin: *');
                print json_encode($output);
                die();
            }
            else
            {
                //get leave count 
                $sel_user_leave = $conn->query("DELETE FROM tickets_users_leaves where tickets_users_leaves_id=".$ticket_user_id);
                if($sel_user_leave)
                {
                    $output = array('status' => true, 'error_code' => '0', 'message' => 'Leave delete successful.');
                }
                else
                {
                    $output = array('status' => false, 'error_code' => '1', 'message' => 'Leave not delete successful.');
                }
                
                header("Cache-Control: no-cache, must-revalidate");
                header('Content-type: application/json');
                header('Access-Control-Allow-Origin: *');
                print json_encode($output);
                die();
            }

        }
        
        
        function leave_approval($conn,$api_token)
        {
            $data_para = $_REQUEST;
            $ticket_user_id = $data_para['ticket_user_id'];
            
            $key = $data_para['key'];
            
            if($api_token != $key)
            {
                $output = array('status' => false, 'error_code' => '1', 'message' => 'Please enter correct API key.');
                header("Cache-Control: no-cache, must-revalidate");
                header('Content-type: application/json');
                header('Access-Control-Allow-Origin: *');
                print json_encode($output);
                die();
            }

            if($ticket_user_id == "")
            {
                $output = array('status' => false, 'error_code' => '1', 'message' => 'Ticket User ID Required.');
                header("Cache-Control: no-cache, must-revalidate");
                header('Content-type: application/json');
                header('Access-Control-Allow-Origin: *');
                print json_encode($output);
                die();
            }
            else
            {
                //get leave count 
                $sel_user_leave = $conn->query("UPDATE tickets_users_leaves SET status='1' where tickets_users_leaves_id=".$ticket_user_id);
                if($sel_user_leave)
                {
                    $output = array('status' => true, 'error_code' => '0', 'message' => 'Leave delete successful.');
                }
                else
                {
                    $output = array('status' => false, 'error_code' => '1', 'message' => 'Leave not delete successful.');
                }
                
                header("Cache-Control: no-cache, must-revalidate");
                header('Content-type: application/json');
                header('Access-Control-Allow-Origin: *');
                print json_encode($output);
                die();
            }

        }
        
        
        
        function get_performance_category($conn,$api_token)
        {
            $data_para = $_REQUEST;
            $key = $data_para['key'];
            
            if($api_token != $key)
            {
                $output = array('status' => false, 'error_code' => '1', 'message' => 'Please enter correct API key.');
                header("Cache-Control: no-cache, must-revalidate");
                header('Content-type: application/json');
                header('Access-Control-Allow-Origin: *');
                print json_encode($output);
                die();
            }
            else
            {
                //get performance category
                $sel_performance_category = $conn->query("select * from tickets_performance_category ORDER BY id ASC");
                
                $total_performance_category = array();
                while($performance_category_row = mysqli_fetch_array($sel_performance_category))
                {
                    $total_performance_category[] = $performance_category_row;
                }
                if(mysqli_num_rows($sel_performance_category))
                {
                    $output = array('status' => true, 'error_code' => '0', 'message' => 'Performance Category list', 'data' => $total_performance_category);
                }
                else
                {
                    $output = array('status' => false, 'error_code' => '1', 'message' => 'Performance Category list not found');
                }
                
                header("Cache-Control: no-cache, must-revalidate");
                header('Content-type: application/json');
                header('Access-Control-Allow-Origin: *');
                print json_encode($output);
                die();
            }

        }
        
        
        
        
        function get_rating_list($conn,$api_token)
        {
            $data_para = $_REQUEST;
            $key = $data_para['key'];
            
            if($api_token != $key)
            {
                $output = array('status' => false, 'error_code' => '1', 'message' => 'Please enter correct API key.');
                header("Cache-Control: no-cache, must-revalidate");
                header('Content-type: application/json');
                header('Access-Control-Allow-Origin: *');
                print json_encode($output);
                die();
            }
            else
            {
                //get performance category
                $sel_rating = $conn->query("select * from tickets_rating ORDER BY id ASC");
                
                $total_rating_list = array();
                while($rating_row = mysqli_fetch_array($sel_rating))
                {
                    $total_rating_list[] = $rating_row;
                }
                if(mysqli_num_rows($sel_rating))
                {
                    $output = array('status' => true, 'error_code' => '0', 'message' => 'Rating list', 'data' => $total_rating_list);
                }
                else
                {
                    $output = array('status' => false, 'error_code' => '1', 'message' => 'Rating list not found');
                }
                
                header("Cache-Control: no-cache, must-revalidate");
                header('Content-type: application/json');
                header('Access-Control-Allow-Origin: *');
                print json_encode($output);
                die();
            }

        }
        
        
        
        function get_user_details($conn,$api_token)
        {
            $data_para = $_REQUEST;
            $key = $data_para['key'];
            $user_id = $data_para['user_id'];
            
            if($api_token != $key)
            {
                $output = array('status' => false, 'error_code' => '1', 'message' => 'Please enter correct API key.');
                header("Cache-Control: no-cache, must-revalidate");
                header('Content-type: application/json');
                header('Access-Control-Allow-Origin: *');
                print json_encode($output);
                die();
            }
            else if($user_id =='')
            {
                $output = array('status' => false, 'error_code' => '2', 'message' => 'Please enter user id.');
                header("Cache-Control: no-cache, must-revalidate");
                header('Content-type: application/json');
                header('Access-Control-Allow-Origin: *');
                print json_encode($output);
                die();
            }
            else
            {
                //get performance category
                $sel_user = $conn->query("select * from tickets_users where tickets_users_id=".$user_id);
                
                $user_details = array();
                while($user_row = mysqli_fetch_array($sel_user))
                {
                    $user_details = $user_row;
                }
                if(mysqli_num_rows($sel_user))
                {
                    $output = array('status' => true, 'error_code' => '0', 'message' => 'User details.', 'data' => $user_details);
                }
                else
                {
                    $output = array('status' => false, 'error_code' => '1', 'message' => 'User details not found');
                }
                
                header("Cache-Control: no-cache, must-revalidate");
                header('Content-type: application/json');
                header('Access-Control-Allow-Origin: *');
                print json_encode($output);
                die();
            }

        }
        
        
        
        function add_employee_evaluation($conn,$api_token)
        {
            $data_para = $_REQUEST;
            $key = $data_para['key'];
            
            if($api_token != $key)
            {
                $output = array('status' => false, 'error_code' => '1', 'message' => 'Please enter correct API key.');
                header("Cache-Control: no-cache, must-revalidate");
                header('Content-type: application/json');
                header('Access-Control-Allow-Origin: *');
                print json_encode($output);
                die();
            }
            
            $tickets_users_id = $data_para['employee_id'];
            $supervisor_id = $data_para['supervisor_id'];
            $date_reviewed = $data_para['date_reviewed'];
            $review_from = $data_para['review_from'];
            $review_to = $data_para['review_to'];
            $performance_goals = $data_para['performance_goals'];
            $overall_rating = $data_para['overall_rating'];
            $overall_comment = $data_para['overall_comment'];
            
            if(isset($data_para['skip']))
            {
                $date_reviewed = time();
                //add a entery in tickets_user_evaluation_data
                $insert_evaluation = $conn->query("INSERT INTO tickets_employee_evaluation SET tickets_users_id='".$tickets_users_id."', 
                                                                   supervisor_id='".$supervisor_id."', 
                                                                   date_reviewed='".$date_reviewed."',
                                                                   review_from='".$review_from."',
                                                                   review_to='".$review_to."',
                                                                   performance_goals='',
                                                                   overall_rating='',
                                                                   overall_comment='',
                                                                   skip=1");
                
                $output = array('status' => true, 'error_code' => '0', 'message' => 'Skip successful.');
                header("Cache-Control: no-cache, must-revalidate");
                header('Content-type: application/json');
                header('Access-Control-Allow-Origin: *');
                print json_encode($output);
                die();
            }
            
            if(($tickets_users_id == "") || ($supervisor_id == "") || ($date_reviewed == "") || ($review_from == "") || 
            ($review_to == ""))
            {

                $output = array('status' => false, 'error_code' => '1', 'message' => 'All Filds Required.');
                header("Cache-Control: no-cache, must-revalidate");
                header('Content-type: application/json');
                header('Access-Control-Allow-Origin: *');
                print json_encode($output);
                die();
            }
            else
            {
                $insert_evaluation = $conn->query("INSERT INTO tickets_employee_evaluation SET tickets_users_id='".$tickets_users_id."', 
                                                                   supervisor_id='".$supervisor_id."', 
                                                                   date_reviewed='".$date_reviewed."',
                                                                   review_from='".$review_from."',
                                                                   review_to='".$review_to."',
                                                                   performance_goals='".$performance_goals."',
                                                                   overall_rating='".$overall_rating."',
                                                                   overall_comment='".$overall_comment."',
                                                                   skip=0");
                
                $data_id_hwe = $conn->insert_id;
                
                if($insert_evaluation)
                {
                    $output = array('status' => true, 'error_code' => '0', 'message' => 'Evaluation add successful.', 'data_id' => $data_id_hwe);
                    $output = array();
                    $output['data_id'] = $data_id_hwe;
                }
                else
                {
                    $output = array('status' => false, 'error_code' => '1', 'message' => 'Evaluation not add successful.');
                }
                
                header("Cache-Control: no-cache, must-revalidate");
                header('Content-type: application/json');
                header('Access-Control-Allow-Origin: *');
                print json_encode($output);
                die();
            }

        }
        
        
        
        
        function add_evaluation_performance_rating($conn,$api_token)
        {
            $data_para = $_REQUEST;
            $key = $data_para['key'];
            
            if($api_token != $key)
            {
                $output = array('status' => false, 'error_code' => '1', 'message' => 'Please enter correct API key.');
                header("Cache-Control: no-cache, must-revalidate");
                header('Content-type: application/json');
                header('Access-Control-Allow-Origin: *');
                print json_encode($output);
                die();
            }
            
            $tickets_users_evaluation_id = $data_para['employee_evaluation_id'];
            $performance_id = $data_para['performance_id'];
            $rating_id = $data_para['rating_id'];
            $employee_comments = $data_para['employee_comments'];
            
            if(($tickets_users_evaluation_id == "") || ($performance_id == "") || ($rating_id == ""))
            {

                $output = array('status' => false, 'error_code' => '1', 'message' => 'All Filds Required.');
                header("Cache-Control: no-cache, must-revalidate");
                header('Content-type: application/json');
                header('Access-Control-Allow-Origin: *');
                print json_encode($output);
                die();
            }
            else
            {
                $insert_evaluation_rating = $conn->query("INSERT INTO tickets_employee_evaluation_performance_rating SET 
                                                                   tickets_users_evaluation_id='".$tickets_users_evaluation_id."', 
                                                                   performance_id='".$performance_id."', 
                                                                   rating_id='".$rating_id."',
                                                                   employee_comments='".$employee_comments."'");
                
                $data_id_hwe = $conn->insert_id;
                
                if($insert_evaluation_rating)
                {
                    $output = array('status' => true, 'error_code' => '0', 'message' => 'Performance rating add successful.', 'data_id' => $data_id_hwe);
                }
                else
                {
                    $output = array('status' => false, 'error_code' => '1', 'message' => 'Performance rating not add successful.');
                }
                
                header("Cache-Control: no-cache, must-revalidate");
                header('Content-type: application/json');
                header('Access-Control-Allow-Origin: *');
                print json_encode($output);
                die();
            }

        }
        
        
        
        //////////////////
        function get_all_evaluation_data($conn,$api_token)
        {
            $data_para = $_REQUEST;
            $key = $data_para['key'];
            
            if($api_token != $key)
            {
                $output = array('status' => false, 'error_code' => '1', 'message' => 'Please enter correct API key.');
                header("Cache-Control: no-cache, must-revalidate");
                header('Content-type: application/json');
                header('Access-Control-Allow-Origin: *');
                print json_encode($output);
                die();
            }
            else
            {
                //get performance category
                $sel_evaluation = $conn->query("select * from tickets_employee_evaluation ORDER BY id ASC");
                
                $total_evaluation_list = array();
                while($evaluation_row = mysqli_fetch_array($sel_evaluation))
                {
                    $total_evaluation_list[] = $evaluation_row;
                }
                if(mysqli_num_rows($sel_evaluation))
                {
                    $output = array('status' => true, 'error_code' => '0', 'message' => 'Evaluation list', 'data' => $total_evaluation_list);
                }
                else
                {
                    $output = array('status' => false, 'error_code' => '1', 'message' => 'Evaluation list not found');
                }
                
                header("Cache-Control: no-cache, must-revalidate");
                header('Content-type: application/json');
                header('Access-Control-Allow-Origin: *');
                print json_encode($output);
                die();
            }

        }
        
        
        
        ///get data by ID
        //////////////////
        function get_evaluation_data_by_id($conn,$api_token)
        {
            $data_para = $_REQUEST;
            $key = $data_para['key'];
            $id = $data_para['id'];
            
            if($api_token != $key)
            {
                $output = array('status' => false, 'error_code' => '1', 'message' => 'Please enter correct API key.');
                header("Cache-Control: no-cache, must-revalidate");
                header('Content-type: application/json');
                header('Access-Control-Allow-Origin: *');
                print json_encode($output);
                die();
            }
            else if($id == '')
            {
                $output = array('status' => false, 'error_code' => '1', 'message' => 'Please enter ID.');
                header("Cache-Control: no-cache, must-revalidate");
                header('Content-type: application/json');
                header('Access-Control-Allow-Origin: *');
                print json_encode($output);
                die();
            }
            else
            {
                //get performance category
                $sel_evaluation = $conn->query("select * from tickets_employee_evaluation where id=".$id);
                
                $total_evaluation_list = array();
                while($evaluation_row = mysqli_fetch_array($sel_evaluation))
                {
                    $total_evaluation_list[] = $evaluation_row;
                }
                if(mysqli_num_rows($sel_evaluation))
                {
                    $output = array('status' => true, 'error_code' => '0', 'message' => 'Evaluation list', 'data' => $total_evaluation_list);
                }
                else
                {
                    $output = array('status' => false, 'error_code' => '1', 'message' => 'Evaluation list not found');
                }
                
                header("Cache-Control: no-cache, must-revalidate");
                header('Content-type: application/json');
                header('Access-Control-Allow-Origin: *');
                print json_encode($output);
                die();
            }

        }
        
        
        
        ///get reviews user count
        //////////////////
        function get_evaluation_review_user_count($conn,$api_token)
        {
            $data_para = $_REQUEST;
            $key = $data_para['key'];
            
            if($api_token != $key)
            {
                $output = array('status' => false, 'error_code' => '1', 'message' => 'Please enter correct API key.');
                header("Cache-Control: no-cache, must-revalidate");
                header('Content-type: application/json');
                header('Access-Control-Allow-Origin: *');
                print json_encode($output);
                die();
            }
            else
            {
                //get performance category
                $sel_tickets_users = $conn->query("select * from tickets_users where tickets_users_status=1 and can_review=0 and tickets_users_admin='Mod'");
                
                $total_user_re = array();
                while($evaluation_row = mysqli_fetch_array($sel_tickets_users))
                {
                    $total_user_re[] = $evaluation_row;
                }
                if(mysqli_num_rows($sel_tickets_users))
                {
                    $output = array('status' => true, 'error_code' => '0', 'message' => 'Evaluation user count.', 'data' => count($total_user_re));
                }
                else
                {
                    $output = array('status' => false, 'error_code' => '1', 'message' => 'Evaluation user count not found');
                }
                
                header("Cache-Control: no-cache, must-revalidate");
                header('Content-type: application/json');
                header('Access-Control-Allow-Origin: *');
                print json_encode($output);
                die();
            }

        }
        
        
        
        ///get reviews user list by supervisor id
        //////////////////
        function get_evaluation_review_user_id_by_supervisor_id($conn,$api_token)
        {
            $data_para = $_REQUEST;
            $key = $data_para['key'];
            $id = $data_para['id'];
            
            if($api_token != $key)
            {
                $output = array('status' => false, 'error_code' => '1', 'message' => 'Please enter correct API key.');
                header("Cache-Control: no-cache, must-revalidate");
                header('Content-type: application/json');
                header('Access-Control-Allow-Origin: *');
                print json_encode($output);
                die();
            }
            else if($id == '')
            {
                $output = array('status' => false, 'error_code' => '1', 'message' => 'Please enter ID.');
                header("Cache-Control: no-cache, must-revalidate");
                header('Content-type: application/json');
                header('Access-Control-Allow-Origin: *');
                print json_encode($output);
                die();
            }
            else
            {
                //get performance category
                $sel_tickets_users = $conn->query("select * from tickets_users where tickets_users_status=1 and can_review=0 and tickets_users_admin='Mod'");
                
                $total_user_re = array();
                while($evaluation_row = mysqli_fetch_array($sel_tickets_users))
                {
                    $team_user_id_hwe_n = $evaluation_row['tickets_users_id'];
                    
                    if(isset($data_para['review_period_start_date']) && $data_para['review_period_start_date']!= '')
                    {
                        $review_period_start_date = $data_para['review_period_start_date'];
                        $first_day_this_month = strtotime(date('Y-m-01',strtotime($review_period_start_date)));
                        $last_day_this_month  = strtotime(date('Y-m-t',strtotime($review_period_start_date)));
                    }
                    else
                    {
                        $first_day_this_month = strtotime(date('Y-m-01'));
                        $last_day_this_month  = strtotime(date('Y-m-t'));
                    }
                    
                    $sel_tickets_users_data = $conn->query("select * from tickets_employee_evaluation where tickets_users_id='".$team_user_id_hwe_n."' and review_from between '".$first_day_this_month."' and '".$last_day_this_month."'");
                    $count_user_review_or_not = 1;
                    while($evaluation_row_data = mysqli_fetch_array($sel_tickets_users_data))
                    {
                        $count_user_review_or_not = 0;
                    }
                    
                    if($count_user_review_or_not)
                    {
                        $total_user_re[] = $evaluation_row;
                    }
                }
                
                $tickets_users_id_first = isset($total_user_re[0]['tickets_users_id'])?$total_user_re[0]['tickets_users_id']:'';
                if($tickets_users_id_first)
                {
                    $output = array('status' => true, 'error_code' => '0', 'message' => 'User ID.', 'data' => $tickets_users_id_first);
                }
                else
                {
                    $output = array('status' => false, 'error_code' => '1', 'message' => 'User ID not found');
                }
                
                header("Cache-Control: no-cache, must-revalidate");
                header('Content-type: application/json');
                header('Access-Control-Allow-Origin: *');
                print json_encode($output);
                die();
            }

        }
        
        
        ///get data by ID
        //////////////////
        function get_user_evaluation_supervisor_submit_count($conn,$api_token)
        {
            $data_para = $_REQUEST;
            $key = $data_para['key'];
            $id = $data_para['id'];
            
            if($api_token != $key)
            {
                $output = array('status' => false, 'error_code' => '1', 'message' => 'Please enter correct API key.');
                header("Cache-Control: no-cache, must-revalidate");
                header('Content-type: application/json');
                header('Access-Control-Allow-Origin: *');
                print json_encode($output);
                die();
            }
            else if($id == '')
            {
                $output = array('status' => false, 'error_code' => '1', 'message' => 'Please enter ID.');
                header("Cache-Control: no-cache, must-revalidate");
                header('Content-type: application/json');
                header('Access-Control-Allow-Origin: *');
                print json_encode($output);
                die();
            }
            else
            {
                //get performance category
                if(isset($data_para['review_period_start_date']) && $data_para['review_period_start_date']!= '')
                {
                    $review_period_start_date = $data_para['review_period_start_date'];
                    $first_day_this_month = strtotime(date('Y-m-01',strtotime($review_period_start_date)));
                    $last_day_this_month  = strtotime(date('Y-m-t',strtotime($review_period_start_date)).' +1 day');
                }
                else
                {
                    $first_day_this_month = strtotime(date('Y-m-01'));
                    $last_day_this_month  = strtotime(date('Y-m-t').' +1 day');
                }
                $last_day_this_month = $last_day_this_month-3600;
                
                $sel_evaluation_submit = $conn->query("select * from tickets_employee_evaluation where supervisor_id=".$id." AND (review_from BETWEEN '".$first_day_this_month."' and '".$last_day_this_month."')");
                
                $total_evaluation_submit = array();
                while($evaluation_row = mysqli_fetch_array($sel_evaluation_submit))
                {
                    $total_evaluation_submit[] = $evaluation_row;
                }
                
                if(count($total_evaluation_submit))
                {
                    $output = array('status' => true, 'error_code' => '0', 'message' => 'Evaluation list Count', 'data' => count($total_evaluation_submit));
                }
                else
                {
                    $output = array('status' => true, 'error_code' => '0', 'message' => 'Evaluation list Count', 'data' => 0);
                }
                
                header("Cache-Control: no-cache, must-revalidate");
                header('Content-type: application/json');
                header('Access-Control-Allow-Origin: *');
                print json_encode($output);
                die();
            }

        }
        
        
}