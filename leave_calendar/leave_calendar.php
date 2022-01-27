<?php
include('config.php');
$_SESSION['sta_type'] = 'Admin88';

if(!$_SESSION['sta_username'])
{
	//die('please login');
}
//echo "asdasd";
$tickets_users_id = $_SESSION['tickets_users_id'];
$tickets_username = $_SESSION['sta_username'];

if($_SESSION['sta_type'] == 'Admin')
{
    $tickets_users_id = 0;
    if(isset($_REQUEST['ticket_user_id']) && ($_REQUEST['ticket_user_id'] != ''))
    {
        $tickets_users_id = $_REQUEST['ticket_user_id'];
    }
}
else
{
    $tickets_users_id = 1084;
}


//get user details

//error_reporting(E_ALL);

//ini_set('display_errors', '1');

$sel_user = $conn->query("select * from tickets_users where tickets_users_id=".$tickets_users_id);

$user_res = mysqli_fetch_array($sel_user);



$leaves_per_month = $user_res['leaves_per_month'];

$join_date = strtotime($user_res['join_date']);



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

$leave_blance = $total_month-$total_leave_count; 


//get all user list
$sel_user = $conn->query("select * from tickets_users WHERE `tickets_users_admin` LIKE 'Mod' AND `tickets_users_status` = 1 ORDER BY tickets_users_name ASC");

?>

<!DOCTYPE html>

<html lang="en">



<head>

  <title>Leave Schedule</title>

  <meta charset="utf-8">

  <meta name="viewport" content="width=device-width, initial-scale=1">

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

  <link href="https://fonts.googleapis.com/css2?family=Arimo&display=swap" rel="stylesheet"> 

</head>



<style>



  *{

    font-family: 'Arimo', sans-serif;

  }



  .no_margin{

    margin-left: 0;

    margin-right: 0;

  }



  .full_wrapper {

    width: 100%;

    height: auto;

    background-color: #dbdbdb;

    padding: 2rem;

  }



  .wrapper {

    background-color: #f1eded;

    padding: 1rem 0.5rem 2rem;

    border-radius: 5px;

    border: 1px double #000;

  }



  select {

    display: block;

    width: 100%;

    height: 34px;

    padding: 6px 12px;

    font-size: 14px;

    line-height: 1.42857143;

    color: #555;

    background-color: #fff;

    background-image: none;

    border: 1px solid #ccc;

    border-radius: 4px;

    -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);

    box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);

    -webkit-transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;

    -o-transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;

    -webkit-transition: border-color ease-in-out .15s, -webkit-box-shadow ease-in-out .15s;

    transition: border-color ease-in-out .15s, -webkit-box-shadow ease-in-out .15s;

    transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;

    transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s, -webkit-box-shadow ease-in-out .15s;

  }



  table {

    font-family: arial, sans-serif;

    border-collapse: collapse;

    width: 100%;

  }



  td,

  th {

    border: 1px solid grey;

    text-align: center;

    padding: 8px;

  }



  tr:nth-child(even) {

    background-color: #dddddd;

  }



  .comman{

    margin-top: 2rem;

  }



  .comman h4{

    font-weight: 700;

    text-shadow: 0px 0px 5px #000;

  }



  .comman h4{

    text-shadow: 0px 0px 0px grey;

  }



  @media only screen and (max-width: 600px) {

    

  }



</style>

<script>

    jQuery(document).ready(function(e) {

        post_leave_list(<?php echo $tickets_users_id; ?>);
        
        var user_id_hwe_onload = <?php echo $tickets_users_id; ?>;

        jQuery('#leave_add_form').submit(function(e) {

             event.preventDefault();

                jQuery('#leave_submit_process').show();

                var userid = $('#ticket_user_id').val();
                
                alert($('#leave_date').val());

				var formData = {

					'ticket_user_id': $('#ticket_user_id').val(),

					'leave_date': $('#leave_date').val(),

					'leave_day_menu': $('#leave_day_menu').val(),

					'leave_reason': $('#leave_reason').val(),

				};

				//console.log(formData);

	

				$.ajax({

					url: "add_leave.php",

					type: "post",

					data: formData,

					success: function(d) {

					    jQuery('#leave_submit_message_show').html(d);

						jQuery('#leave_submit_process').hide();

						$('#leave_date').val('');

						$('#leave_reason').val('');

						post_leave_list(user_id_hwe_onload);
						
						update_leave_count(user_id_hwe_onload);

						setTimeout(function(){ jQuery('#leave_submit_message_show').html(''); }, 3000);

					}

				});

        });

        

        jQuery( "table" ).delegate( "#leave_delete_hwe", "click", function() {

            // escape here if the confirm is false;

            if (!confirm('Are you sure?')) return false;

            jQuery('#post_list_table_boday').html('<img src="submit_process.gif" style="width: 30px;" id="leave_submit_process" />');

            var leave_user_id = $(this).attr("data-id");

            var formData = {

					'ticket_user_id': leave_user_id

				};

            

            $.ajax({

            			url: "delete_leave.php",

            			type: "post",

            			data: formData,

            			success: function(d) {

            			    var ticket_user_id = $('#ticket_user_id').val();

            			    post_leave_list(user_id_hwe_onload);
            			    
            			    update_leave_count(user_id_hwe_onload);

            			}

            		});

        });

        

        

        jQuery( "table" ).delegate( "#leave_approval_hwe", "click", function() {

            jQuery('#post_list_table_boday').html('<img src="submit_process.gif" style="width: 30px;" id="leave_submit_process" />');

            var leave_user_id = $(this).attr("data-id");

            var formData = {

					'ticket_user_id': leave_user_id

				};

            

            $.ajax({

            			url: "leave_approval.php",

            			type: "post",

            			data: formData,

            			success: function(d) {

            			    var ticket_user_id = $('#ticket_user_id').val();

            			    post_leave_list(user_id_hwe_onload);
            			    
            			    update_leave_count(user_id_hwe_onload);

            			}

            		});

        });

        

    });

    

    function post_leave_list(userid)

    {

        jQuery('#post_list_table_boday').html('<img src="submit_process.gif" style="width: 30px;" id="leave_submit_process" />');

        

        var formData = {

					'ticket_user_id': userid

				};

	

		$.ajax({

			url: "leave_list.php",

			type: "post",

			data: formData,

			success: function(d) {

			    jQuery('#post_list_table_boday').html(d);

			}

		});

        

    }
    
    
    function update_leave_count(userid)
    {

        jQuery('#show_user_leave_count').html('<img src="submit_process.gif" style="width: 30px;" id="leave_submit_process" />');

        var formData = {
					'ticket_user_id': userid
				};

	

		$.ajax({

			url: "update_leave_count.php",

			type: "post",

			data: formData,

			success: function(d) {

			    jQuery('#show_user_leave_count').html(d);

			}

		});

        

    }

</script>



<body>



  <div class="full_wrapper">



    <div class="container wrapper">

<?php
if($_SESSION['sta_type'] == 'Admin')
{
}
else
{
?>

      <div class="row no_margin">

        <div class="col-md-12 comman">

          <h4>Dear <?php echo $tickets_username; ?></h4>

          <p>Leave Data Since : <?php echo date('M Y', $join_date); ?></p>

          <p>Leave Balance : <span id="show_user_leave_count"><?php echo $leave_blance; ?></span></p>

        </div>

      </div>
<?php }?>


      <div class="row no_margin">

        <div class="col-md-12 comman">



          <h4 style="margin: 0 0 0;">Add Leave</h4>

          <small>( Please add one leave at a time )</small>



          <form style="margin-top: 1rem;" id="leave_add_form" method="post">
            <?php
            if($_SESSION['sta_type'] == 'Admin')
            {
            ?>
            <label for="exampleInputEmail1">Select User :</label>

            <select class="form-group form-select" required id="ticket_user_id">

              <option value="" selected>Select User</option>
              <?php 
              while($user_list_hwe = mysqli_fetch_array($sel_user))
              {
                  ?>
                  <option value="<?php echo $user_list_hwe['tickets_users_id']; ?>"><?php echo $user_list_hwe['tickets_users_name']; ?></option>
                  <?php 
              }?>

            </select>
            <?php } 
            else
            {?>
             <input type="hidden" id="ticket_user_id" value="<?php echo $tickets_users_id; ?>" />
            <?php } ?>

            <div class="form-group">

              <label for="exampleInputEmail1">Date :</label>

              <input type="date" id="leave_date" class="form-control" required>

            </div>



            <label for="exampleInputEmail1">Full Day/ Half day before lunch / Half day after lunch :</label>

            <select class="form-group form-select" required id="leave_day_menu">

              <option value="1" selected>Full Day</option>

              <option value="2">Half day before lunch </option>

              <option value="3">Half day after lunch</option>

            </select>



            <div class="form-group">

              <label for="exampleFormControlTextarea1">Reason :</label>

              <textarea class="form-control"  rows="3" id="leave_reason"></textarea>

            </div>



            <button type="submit" class="btn btn-primary">Submit</button> 

            <img src="submit_process.gif" style="width: 30px; display:none;" id="leave_submit_process" />

            <span style="color:green;" id="leave_submit_message_show"></span>



          </form>

        </div>

      </div>



      <div class="row no_margin">

        <div class="col-md-12 comman" style="overflow-x:auto;">



          <h4>Past Leaves</small> </h4>



          <table class="table_data">

            <thead>

                <tr>

                  <th>#</th>

                  <th>Date</th>

                  <th>Full/Half</th>

                  <th>Reason</th>

                  <th>Balance</th>

                  <th>Status</th>

                  <th>Comments</th>

                  <th></th>

                </tr>

            </thead>

            <tbody id="post_list_table_boday">

            </tbody>

          </table>



        </div>

      </div>



    </div>



  </div>



  </div>



</body>



</html>