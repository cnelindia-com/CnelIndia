<?php 
include('../../leave_calendar/config.php');


if (empty($_SESSION['login_status']))
{
    ?>
    <script>
   window.location = "http://readyforyourreview.com/cnelindia/employee_evaluation/admin/login.php";
 </script>

 <?php
 }
 
if(isset($_POST['logout'])){
  
    session_destroy();  
    ?>
    <script>
   window.location = "http://readyforyourreview.com/cnelindia/employee_evaluation/admin/login.php";
 </script>

 <?php
}

$team_user_id = $_REQUEST['id'];
$team_user_id = 1085;
$team_username = 'Rohit';

$tickets_users_id = $_SESSION['tickets_users_id'];
$tickets_username = $_SESSION['sta_username'];
$tickets_users_id = 1084;
$tickets_username = 'Dinesh';

$curl = curl_init();
curl_setopt_array($curl, array(
  CURLOPT_URL => base_url."/api.php?action=get_performance_category&key=s6d5fs5fs5df6s65df&quot;",
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => "",
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 30,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => "GET",
  CURLOPT_HTTPHEADER => array(
      "cache-control: no-cache",
      "postman-token: 21b5017b-db11-0987-6ca4-6a765b49e00f"
  ),
));

$performance_category_list = curl_exec($curl);
$err = curl_error($curl);

curl_close($curl);
$performance_category_list= json_decode($performance_category_list);

//print_r($performance_category_list);


$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => "https://readyforyourreview.com/cnelindia/leave_calendar/api.php?action=get_rating_list&key=s6d5fs5fs5df6s65df&quot;",
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => "",
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 30,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => "GET",
  CURLOPT_HTTPHEADER => array(
      "cache-control: no-cache",
      "postman-token: 21b5017b-db11-0987-6ca4-6a765b49e00f"
  ),
));

$response = curl_exec($curl);
$err = curl_error($curl);

curl_close($curl);

$rating_list= json_decode($response);

?>

<!DOCTYPE html>

<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Employee Evaluation</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="css/style2.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>

<style>

.user{
    font-size: 1rem;
    color: #fff;
}

.Logout{
  color: #fff;
  background-color: #6C79E0;
  font-size: 12px;
  font-size: 1rem;
  padding-top: 0; 
}

.logoutbtn{
    text-align: right;
}

.heading_text{
    padding-top: 10px;
    padding-bottom: 10px;
}

</style>

<body>

<div class="container-fluid">
    <div class="row heading_text">
        <div class="col-md-6 user">
            <?php 
                echo "Username : " . $_SESSION['Username'];
            ?>
        </div>
        <div class="col-md-6 logoutbtn">
            <form action="" method="POST">
                <input type="submit" name="logout" value="Logout">
            </form>
        </div>
    </div>

</div>

<form id="frm_employee_evaluation" enctype="multipart/form-data">
    
    <div class="full_wrapper">

        <h3 class="text-center">Employee Evaluation</h3>

        <div class="container-fluid inner_wrapper first_wrapper">
            <div class="row">
                <div class="col-md-12 heading_text">
                    <h4>I. EMPLOYEE INFORMATION</h4>
                </div>
            </div>
            <div class="row">
                <div class="form-group col-md-6 one">
                    <label>Employee Name : <?php echo $team_username; ?></label>
                    <input type="hidden" class="form-control" name="tickets_users_id" id="tickets_users_id" value="<?php echo $team_user_id; ?>">
                </div>
                <div class="form-group col-md-6 one">
                    <label>Date Reviewed :</label>
                    <input type="date" class="form-control" name="date_reviewed" id="date_reviewed" readonly value="<?php echo date('Y-m-d',time());?>">
                </div>
                <div class="form-group col-md-6 one">
                    <label>Supervisor/Reviewer : <?php echo $tickets_username; ?></label>
                    <input type="hidden" class="form-control" name="team_user_id" id="team_user_id" value="<?php echo $tickets_users_id; ?>">
                </div>
                <div class="form-group col-md-6 one">
                    <label>Review Period : </label>
                    <div style="display: flex;">
                        <input type="date" class="form-control" name="review_period_from" id="review_period_from" readonly value="<?php echo date('Y-m-01',time());?>">
                        <label>To</label>
                        <input type="date" class="form-control" name="review_period_to" id="review_period_to" readonly value="<?php echo date('Y-m-t',time());?>">
                    </div>
                </div>
            </div>
        </div>

        <div class="container-fluid inner_wrapper secound_wrapper">
            <div class="row">
                <div class="col-md-12 heading_text">
                    <h4>II. CORE VALUES AND OBJECTIVES</h4>
                </div>
            </div>
            <div class="row secound_heading">
                <div class="col-md-4">
                    <label>PERFORMANCE CATEGORY</label>
                </div>
                <div class="col-md-4">
                    <label>RATING</label>
                </div>
                <div class="col-md-4">
                    <label>COMMENTS AND EXAMPLES</label>
                </div>
            </div>
            
            <?php 
			foreach($performance_category_list->data as $performance_category_lists)
			{
			?>
            <div class="row secound_heading">
                <div class="col-md-4">
                    <h5><?php echo $performance_category_lists->performance_category_name; ?>:</h5>
                    <p><?php echo $performance_category_lists->performance_category_des; ?></p>
                </div>
                <div class="col-md-4">
                    <?php
						foreach($rating_list->data as $rating_lists)
						{
					?>

                        <span style="color: #6C79E0;"><i class="fa fa-check"></i></span>
                        <!-- <span style="color: #6C79E0;"><i class="fa fa-close"></i></span> -->
                        
                    <?php
						echo $rating_lists->rating_name;
					?>
                    
                    </span> <br>
                    
                    <?php
						}
					?>
                </div>
                <div class="col-md-4">
                    <textarea name="performance_category_comment[<?php echo $performance_category_lists->id; ?>]" class="textarea" readonly></textarea>
                </div>
            </div>
            
            <?php
        	  }
            ?>
        </div>

        <div class="container-fluid inner_wrapper thired_wrapper">
            <div class="row">
                <div class="col-md-12 heading_text">
                    <h4>III. PERFORMANCE GOALS</h4>
                </div>
                <div class="col-md-12">
                    <p>Set objectives and outline steps to improve in problem areas or further employee development.</p>
                </div>
                <div class="col-md-12">
                    <textarea name="performance_goal" class="fullwidthtextarea" readonly></textarea>
                </div>
            </div>
        </div>

        <div class="container-fluid inner_wrapper fourth_wrapper">
            <div class="row">
                <div class="col-md-12 heading_text">
                    <h4>IV. OVERALL RATING</h4>
                </div>
            </div>
            <div class="row four_box">
                <?php
					foreach($rating_list->data as $rating_lists)
					{
					?>
    					<div class="col-md-3 one">
                            <input type="checkbox" class="new2" name="overall_rating[<?php echo $rating_list->id;?>]" 
                                        value="<?php echo $rating_lists->id;?>">
                            <span style="font-weight: 600;"> &nbsp; <?php echo $rating_lists->rating_name;?></span> <br>
                            <div style="height: 120px;float: left;"><?php echo $rating_lists->rating_desc; ?></div>
                        </div>
					<?php 
					}
				?>
                <hr>
                <div class="col-md-12">
                    <p>Comment on the employee's overall performance.</p>
                </div>
                <div class="col-md-12">
                    <textarea name="overall_rating_performance_comment" class="fullwidthtextarea" readonly></textarea>
                </div>
            </div>
        </div>


    </div>
    

</form>
</body>

</html>