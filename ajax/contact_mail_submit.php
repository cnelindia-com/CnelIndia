<?php
	                            $name=$_POST['name'];
			  					$email=$_POST['email'];
								$subject=$_POST['msg_subject'];
							 	$message1=$_POST['message'];
								// Always set content-type when sending HTML email
								$to= "info@cnelindia.com";
							//	$subject="Contact Mail";
								$headers = "MIME-Version: 1.0" . "\r\n";
								$headers .= "Content-type:text/html;charset=UTF-8" . "\r\n";
								// More headers
								$headers .= 'From:'.$email."\r\n";
							//	$headers .= 'Cc: myboss@example.com' . "\r\n";
								$message="<table>
								          <tr>
										  <td>Name</td>
										  <td>:</td>
										  <td>".$name."</td> 
										  </tr>
										   <tr>
										  <td>Email</td>
										  <td>:</td>
										  <td>".$email."</td> 
										  </tr>
										  <tr>
										  <td>Name</td>
										  <td>:</td>
										  <td>".$message1."</td> 
										  </tr>";
								mail($to,$subject,$message,$headers);
								 	
							
					    
					?>