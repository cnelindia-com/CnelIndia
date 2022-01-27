<?php 
include('../../leave_calendar/config.php');

if (empty($_SESSION['login_status']))
{
    ?>
    <script>
   window.location = "http://readyforyourreview.com//cnelindia/employee_evaluation/admin/login.php";
 </script>

 <?php
 }
 
if(isset($_POST['logout'])){
  
    session_destroy();  
    ?>
    <script>
   window.location = "http://readyforyourreview.com//cnelindia/employee_evaluation/admin/login.php";
 </script>

 <?php
}
$curl = curl_init();
curl_setopt_array($curl, array(
  CURLOPT_URL => base_url."/api.php?action=get_all_evaluation_data&key=s6d5fs5fs5df6s65df&quot;",
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

$evaluation_data_list = curl_exec($curl);
$err = curl_error($curl);

curl_close($curl);
$evaluation_data_list_array = json_decode($evaluation_data_list);

//print_r($evaluation_data_list_array);

?>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Evaluation Data</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="css/style.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
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

    <div class="full_wrapper" style="padding-top: 0.5rem;">
        
        <h3 class="text-center mt-3">Evaluation Data</h3>

        <div class="container-fluid inner_wrapper first_wrapper">
            <div class="row heading_text text-center">
                <div class="col-md-2">
                    <label>#</label>
                </div>
                <div class="col-md-2">
                    <label>Supervisor Name</label>
                </div>
                <div class="col-md-2">
                    <label>Employee Name</label>
                </div>
                <div class="col-md-3">
                    <label>Date Reviewed</label>
                </div>
                <div class="col-md-3">
                    <label>Action</label>
                </div>
            </div>
            <?php
            function get_user_details($team_user_id)
            {
                ///get user details
                $curl = curl_init();
                
                curl_setopt_array($curl, array(
                  CURLOPT_URL => base_url.'api.php?action=get_user_details&key=s6d5fs5fs5df6s65df&quot',
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
                
                return $team_username = $team_user_details_data->data->tickets_users_name;
            }
            
            $count_hwe = 1;
            foreach($evaluation_data_list_array->data as $evaluation_data_list_arrays)
            {
                $supervisor_name = get_user_details($evaluation_data_list_arrays->supervisor_id);
                $tickets_users_name = get_user_details($evaluation_data_list_arrays->tickets_users_id);
                
                ?>
                <div class="row text-center">
                    <div class="col-md-2">
                        <label> <?php echo $count_hwe; ?> </label>
                    </div>
                    <div class="col-md-2">
                        <label> <?php echo $supervisor_name; ?> </label>
                    </div>
                    <div class="col-md-2">
                        <label><?php echo $tickets_users_name; ?></label>
                    </div>
                    <div class="col-md-3">
                        <label><?php echo date('d/m/Y',$evaluation_data_list_arrays->date_reviewed); ?></label>
                    </div>
                    <div class="col-md-3">
                        <label><a href="http://readyforyourreview.com/cnelindia/employee_evaluation/admin/evaluation_data_view.php?id=<?php echo $evaluation_data_list_arrays->id; ?>" class="btn submit">View</a></label>
                    </div>
                </div>
                <?php 
                $count_hwe++;
            }
            ?>
            
        </div>
    </div>

</body>

</html>