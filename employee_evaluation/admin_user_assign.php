<?php 
include('../leave_calendar/config.php');

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
//print_r($rating_list);
?>

<!DOCTYPE html>

<html lang="en">

<head>

    <meta charset="utf-8">

    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Table</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" 
    rel="stylesheet">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js">  
    </script>

    <link rel="stylesheet" href="css/style.css">

</head>

<body>

<form id="frm_employee_evaluation" enctype="multipart/form-data">

    <div class="full_wrapper">

        <div class="container">

            <h3 class="text-center">Employee Evaluation</h3>

            <div class="scroll sqrl">
            
            	<table class="table">
                
                	<thead>
                    
                    <tr>
                    	
                        <th>

                        	Name :

                        </th>
                            
                        <th>

                        	Assign Tickets User :

                   		</th>
                        
                    </tr>
                    
                    </thead>
                    
                    <tbody>
                    
                    <tr>
                    	
                        <td>
                        	
                        </td>
                        
                        <td>
                        	<select class="multipleSelect" multiple name="language">
                            <option value="Bangladesh">Bangladesh</option>
                            <option selected value="Barbados">Barbados</option>
                            <option selected value="Belarus">Belarus</option>
                            <option value="Belgium">Belgium</option>
                            ...
                       		</select>
                        </td>
                        
                    </tr>
                    
                    </tbody>
                    
                </table>

            </div>

        </div>

</form>
<script type="text/javascript">
/*$(document).ready(function() {
    $('#submit_employee_evaluation').on('click', function(e){
		e.preventDefault();
		
		var emp_evaluation_data= $('#frm_employee_evaluation').serialize();
		
		$.ajax({
			type: 'POST',
			url: '../employee_evaluation/save_data.php',
			data: emp_evaluation_data,
			success: function(){
					alert('Form was submitted');
				}
		});
	});
});*/

/*$(document).ready(function(e) {
    
$('#browsers').click(function(){

	var user_tickets_value=[];
	
	$.each($('.user_tickets_value:selected'), function(){
		var user_tickets_value= $(this).val();
	});
	
	var users= user_tickets_value.join(", ");
	$('.user_tickets').val(users);
	
	$('.user_tickets_value').val()
	
});
});*/

$('.multipleSelect').fastselect();
</script> 
</body>

</html>