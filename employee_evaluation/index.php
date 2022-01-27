<?php 
include('../leave_calendar/config.php');

if(!isset($_SESSION['tickets_users_id']) && $_SESSION['tickets_users_id'] == '')
{
    die('Please login first.');
}

$tickets_users_id = $_SESSION['tickets_users_id'];
$tickets_username = $_SESSION['sta_username'];

////from date calculation
$review_period_from = date('Y-m-01',time());
if(isset($_REQUEST['review_period_from']) && $_REQUEST['review_period_from']!='')
{
    $review_period_from = $_REQUEST['review_period_from'];
}
$review_period_to = date('Y-m-t',strtotime($review_period_from));

//get user count
$curl = curl_init();
curl_setopt_array($curl, array(
  CURLOPT_URL => base_url."/api.php?action=get_evaluation_review_user_count&key=".$api_token,
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

$reviewed_user_count = curl_exec($curl);
$err = curl_error($curl);

curl_close($curl);
$reviewed_user_count_data = json_decode($reviewed_user_count);

$reviewed_user_count_hwe = $reviewed_user_count_data->data;

/////
//get user reviewed user list count
$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => base_url.'/api.php?action=get_user_evaluation_supervisor_submit_count&key='.$api_token,
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => '',
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 0,
  CURLOPT_FOLLOWLOCATION => true,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => 'POST',
  CURLOPT_POSTFIELDS => array('id' => $tickets_users_id,'review_period_start_date' => $review_period_from),
  CURLOPT_HTTPHEADER => array(
    'Cookie: PHPSESSID=05694b4cb480ea5c72d523645e468f92'
  ),
));

$team_user_reviewed_umit_count = curl_exec($curl);
$err = curl_error($curl);

curl_close($curl);
$team_user_reviewed_data= json_decode($team_user_reviewed_umit_count);

$team_user_count_hwe = $team_user_reviewed_data->data;

//get next user feedback in list
$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => base_url.'/api.php?action=get_evaluation_review_user_id_by_supervisor_id&key='.$api_token,
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => '',
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 0,
  CURLOPT_FOLLOWLOCATION => true,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => 'POST',
  CURLOPT_POSTFIELDS => array('id' => $tickets_users_id,'review_period_start_date' => $review_period_from),
  CURLOPT_HTTPHEADER => array(
    'Cookie: PHPSESSID=05694b4cb480ea5c72d523645e468f92'
  ),
));

$team_user_reviewed = curl_exec($curl);
$err = curl_error($curl);

curl_close($curl);
$team_user_reviewed_data= json_decode($team_user_reviewed);
$team_user_id = $team_user_reviewed_data->data;


////////////////////


$curl = curl_init();
curl_setopt_array($curl, array(
  CURLOPT_URL => base_url."/api.php?action=get_performance_category&key=".$api_token,
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



///get user details
$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => base_url.'/api.php?action=get_user_details&key='.$api_token,
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => '',
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 0,
  CURLOPT_FOLLOWLOCATION => true,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => 'POST',
  CURLOPT_POSTFIELDS => array('user_id' => $team_user_id),
  CURLOPT_HTTPHEADER => array(
    'Cookie: PHPSESSID=05694b4cb480ea5c72d523645e468f92'
  ),
));

$team_user_details = curl_exec($curl);
$err = curl_error($curl);

curl_close($curl);
$team_user_details_data= json_decode($team_user_details);
$team_username = $team_user_details_data->data->tickets_users_name;


$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => base_url."/api.php?action=get_rating_list&key=".$api_token,
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
//print_r($rating_list);





////////////////check review allow user
///get user details
$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => base_url.'/api.php?action=get_user_details&key='.$api_token,
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => '',
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 0,
  CURLOPT_FOLLOWLOCATION => true,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => 'POST',
  CURLOPT_POSTFIELDS => array('user_id' => $tickets_users_id),
  CURLOPT_HTTPHEADER => array(
    'Cookie: PHPSESSID=05694b4cb480ea5c72d523645e468f92'
  ),
));

$team_user_details = curl_exec($curl);
$err = curl_error($curl);

curl_close($curl);
$team_user_details_data= json_decode($team_user_details);

if($team_user_details_data->data->can_review == 0)
{
    die('Not allowed Review');
}
?>

<!DOCTYPE html>

<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Employee Evaluation</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="css/style.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

</head>

<body>

<form id="frm_employee_evaluation" enctype="multipart/form-data">
    <div class="full_wrapper">

        <h3 class="text-center">Employee Evaluation</h3>
        
        <?php 
        if($team_user_id=='')
        { ?>
            <div style="text-align: center;font-size: 25px;height: 100vh;">
                <?php 
                    die('Complete');
                ?>
            </div>
        <?php 
        }
        ?>
        
        <div style="text-align: right;font-size: 20px;font-weight: bold;"><?php echo $team_user_count_hwe; ?>/<?php echo $reviewed_user_count_hwe; ?></div>
        
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
                    <input type="date" class="form-control" name="date_reviewed" id="date_reviewed" value="<?php echo date('Y-m-d',time());?>">
                </div>
                <div class="form-group col-md-6 one">
                    <label>Supervisor/Reviewer : <?php echo $tickets_username; ?></label>
                    <input type="hidden" class="form-control" name="team_user_id" id="team_user_id" value="<?php echo $tickets_users_id; ?>">
                </div>
                <div class="form-group col-md-6 one">
                    <label>Review Period : </label>
                    <div style="display: flex;">
                        <input type="date" class="form-control" name="review_period_from" id="review_period_from" value="<?php echo $review_period_from;?>">
                        <label>To</label>
                        <input type="date" class="form-control" name="review_period_to" id="review_period_to" value="<?php echo $review_period_to;?>">
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
                  		<input type="radio" name="performance_category_list[<?php echo $performance_category_lists->id; ?>]" 
                        value="<?php echo $rating_lists->id; ?>">					                                    
                        <span> &nbsp;
                        
                    <?php
						echo $rating_lists->rating_name;
					?>
                    
                    </span> <br>
                    
                    <?php
						}
					?>
                </div>
                <div class="col-md-4">
                    <textarea name="performance_category_comment[<?php echo $performance_category_lists->id; ?>]" class="textarea"></textarea>
                </div>
            </div>
            
            <?php
        	  }
            ?>
        </div>

        <div class="container-fluid inner_wrapper thired_wrapper" id="performance_goal_main">
            <div class="row">
                <div class="col-md-12 heading_text">
                    <h4>III. PERFORMANCE GOALS <span id="performance_goal_main_error" style="font-size: 13px;margin-left: 10px;color: red; display:none;">This field is required.</span></h4>
                </div>
                <div class="col-md-12">
                    <p>Set objectives and outline steps to improve in problem areas or further employee development.</p>
                </div>
                <div class="col-md-12">
                    <textarea name="performance_goal" class="fullwidthtextarea" id="performance_goal"></textarea>
                </div>
            </div>
        </div>

        <div class="container-fluid inner_wrapper fourth_wrapper" id="overall_rating_main">
            <div class="row">
                <div class="col-md-12 heading_text">
                    <h4>IV. OVERALL RATING <span id="overall_rating_main_error" style="font-size: 13px;margin-left: 10px;color: red; display:none;">This field is required.</span></h4>
                </div>
            </div>
            <div class="row four_box">
                <?php
					foreach($rating_list->data as $rating_lists)
					{
					?>
    					<div class="col-md-3 one">
                            <input type="radio" class="new2 overall_rating" name="overall_rating" 
                                        value="<?php echo $rating_lists->id;?>">
                            <span style="font-weight: 600;"> &nbsp; <?php echo $rating_lists->rating_name;?></span> <br>
                            <div style="height: 120px;float: left;"><?php echo $rating_lists->rating_desc; ?></div>
                        </div>
					<?php 
					}
				?>
                <hr>
                <div class="col-md-12" id="overall_rating_performance_comment_main">
                    <p>Comment on the employee's overall performance. <span id="overall_rating_performance_comment_main_error" style="font-size: 13px;margin-left: 10px;color: red; display:none;">This field is required.</span></p>
                </div>
                <div class="col-md-12">
                    <textarea name="overall_rating_performance_comment" class="fullwidthtextarea" id="overall_rating_performance_comment"></textarea>
                </div>
            </div>
        </div>


        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <button type="submit" id="submit_employee_evaluation" class="btn submit">Submit</button> 
                    <a id="user_review_skip_hwe" class="btn submit">Skip</a> 
                    <span id="processing_images_submit"></span>
                </div>
            </div>
        </div>

    </div>
    

</form>
<script type="text/javascript">
$(document).ready(function() {
    $('#submit_employee_evaluation').on('click', function(e){
		e.preventDefault();
		jQuery('#processing_images_submit').html('<img style="width: 40px;" src="process.gif" />');
		var emp_evaluation_data= $('#frm_employee_evaluation').serialize();
		
		if($('textarea#performance_goal').val()=='')
		{
		    jQuery('html, body').animate({ scrollTop: $("#performance_goal_main").offset().top  }, 'slow');
		    jQuery('#performance_goal_main_error').show();
		    jQuery('#processing_images_submit').html('');
		    return false;
		}
		else
		{
		    jQuery('#performance_goal_main_error').hide();
		}
		
		if(!jQuery('.overall_rating').is(':checked'))
		{
		    jQuery('html, body').animate({ scrollTop: $("#overall_rating_main").offset().top  }, 'slow');
		    jQuery('#overall_rating_main_error').show();
		    jQuery('#processing_images_submit').html('');
		    return false;
		}
		else
		{
		    jQuery('#overall_rating_main_error').hide();
		}
		
		if($('textarea#overall_rating_performance_comment').val()=='')
		{
		    jQuery('html, body').animate({ scrollTop: $("#overall_rating_performance_comment_main").offset().top  }, 'slow');
		    jQuery('#overall_rating_performance_comment_main_error').show();
		    jQuery('#processing_images_submit').html('');
		    return false;
		}
		else
		{
		    jQuery('#overall_rating_performance_comment_main_error').hide();
		}
		
		$.ajax({
			type: 'POST',
			url: '<?php echo base_url_ee; ?>/save_data.php',
			data: emp_evaluation_data,
			success: function(){
					jQuery('#processing_images_submit').html('<span style="color:green;margin-left: 10px;">Save successful.</span>');
					$('html,body').animate({ scrollTop: 0 }, 'slow');
					$('#frm_employee_evaluation').trigger("reset");
					setTimeout(location.reload(), 2000);
				}
		});
	});
	
	$('#user_review_skip_hwe').on('click', function(e){
		e.preventDefault();
		jQuery('#processing_images_submit').html('<img style="width: 40px;" src="process.gif" />');
		var tickets_users_id = jQuery('#tickets_users_id').val();
		var team_user_id = jQuery('#team_user_id').val();
		var review_period_from = jQuery('#review_period_from').val();
		var review_period_to = jQuery('#review_period_to').val();
		
		$.ajax({
			type: 'POST',
			url: '<?php echo base_url_ee; ?>/save_data.php',
			data: "skip=1&tickets_users_id="+tickets_users_id+"&team_user_id="+team_user_id+"&review_period_from="+review_period_from+"&review_period_to="+review_period_to,
			success: function(){
					jQuery('#processing_images_submit').html('<span style="color:green;margin-left: 10px;">Save successful.</span>');
					$('html,body').animate({ scrollTop: 0 }, 'slow');
					$('#frm_employee_evaluation').trigger("reset");
					setTimeout(location.reload(), 2000);
				}
		});
	});
	
	$('#review_period_from').on('change', function(e){
	    var review_period_from = $('#review_period_from').val();
	    window.location.replace("<?php echo base_url_ee; ?>?review_period_from="+review_period_from);
	});
});
</script> 
</body>

</html>