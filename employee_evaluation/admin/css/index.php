<?php 
echo "Hello";

include('../config.php');

session_start();

date_default_timezone_set("Asia/Kolkata");

//database connection
$actual_link = "http://$_SERVER[HTTP_HOST]/$_SERVER[REQUEST_URI]";

if(strpos($actual_link, 'readyforyourreview') !== false) 
{
      $host = "localhost";
      $user = "ccrdskmy_leave";
      $pass = "?eMWUHkZ_sE@";
      $data = "ccrdskmy_leave_schedule";
      
      define("base_url","https://readyforyourreview.com/leave_calendar/&quot;");
      
      $api_token = "s6d5fs5fs5df6s65df"; 
}
else
{
  include('../config.php');
      
      define("base_url","https://cnelindia.com/support/admin/leave_calendar/&quot;");
}



$conn = mysqli_connect($host, $user, $pass, $data);
// Check connection
if (!$conn) {
  die("Connection failed: " . mysqli_connect_error());
}

$sel_user = $conn->query("select * from tickets_users where tickets_users_id=".$tickets_users_id);

$user_res = mysqli_fetch_array($sel_user);

print_r($user_res);
?>



<!DOCTYPE html>

<html lang="en">



<head>

    <meta charset="utf-8">

    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Table</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>

    <link rel="stylesheet" href="css/style.css">

</head>



<body>



    <div class="full_wrapper">



        <div class="container">

            

            <h3 class="text-center">Employee Evaluation</h3>



            <div class="scroll sqrl">

                <table class="table">

                    <h4>I. EMPLOYEE INFORMATION</h4>

                    <thead>

                        <tr>

                            <th>

                                Employee Name :

                            </th>

                            <th>

                                <input type="text" name="" id="">

                            </th>

                            <th>

                                Date Reviewed :

                            </th>

                            <th>

                                <input type="date" name="" id="">

                            </th>

                        </tr>

                        <tr>

                            <th>

                                Supervisor/Reviewer :

                            </th>

                            <th>

                                <input type="text" name="" id="">

                            </th>

                            <th>

                                Review Period :

                            </th>

                            <th>

                                <input type="date" name="" id="">

                                &nbsp; To : &nbsp;

                                <input type="date" name="" id="">

                            </th>

                        </tr>

                    </thead>

                </table>

            </div>



        </div>





        <div class="container">



            <div class="scroll sqrl">

                <table class="table new" style="margin-bottom: 0px;">

                    <h4>II. CORE VALUES AND OBJECTIVES</h4>

                    <thead>

                        <tr class="new3">

                            <th>PERFORMANCE CATEGORY</th>

                            <th>RATING</th>

                            <th>COMMENTS AND EXAMPLES</th>

                        </tr>

                    </thead>

                    <tbody>

                        <tr>

                            <td>

                                <h5>Quality of Work:</h5>

                                <p>Work is completed accurately (few <br> or no errors), efficiently and within

                                    <br>

                                    deadlines with minimal supervision

                                </p>

                            </td>

                            <td>

                                <input type="checkbox"><span> &nbsp; Exceeds expectations</span> <br>

                                <input type="checkbox"><span> &nbsp; Meets expectations</span> <br>

                                <input type="checkbox"><span> &nbsp; Needs improvement</span> <br>

                                <input type="checkbox"><span> &nbsp; Unacceptable</span>

                            </td>

                            <td>

                                <textarea name="" class="textarea"></textarea>

                            </td>

                        </tr>



                        <tr>

                            <td>

                                <h5>Attendance & Punctuality:</h5>

                                <p>Reports for work on time, provides <br> advance notice of need for absence

                                </p>

                            </td>

                            <td>

                                <input type="checkbox"><span> &nbsp; Exceeds expectations</span> <br>

                                <input type="checkbox"><span> &nbsp; Meets expectations</span> <br>

                                <input type="checkbox"><span> &nbsp; Needs improvement</span> <br>

                                <input type="checkbox"><span> &nbsp; Unacceptable</span>

                            </td>

                            <td>

                                <textarea name="" class="textarea"></textarea>

                            </td>

                        </tr>



                        <tr>

                            <td>

                                <h5>Reliability/Dependability:</h5>

                                <p>Consistently performs at a high <br> level; manages time and workload <br>

                                    effectively to meet responsibilities</p>

                            </td>

                            <td>

                                <input type="checkbox"><span> &nbsp; Exceeds expectations</span> <br>

                                <input type="checkbox"><span> &nbsp; Meets expectations</span> <br>

                                <input type="checkbox"><span> &nbsp; Needs improvement</span> <br>

                                <input type="checkbox"><span> &nbsp; Unacceptable</span>

                            </td>

                            <td>

                                <textarea name="" class="textarea"></textarea>

                            </td>

                        </tr>



                        <tr>

                            <td>

                                <h5>Communication Skills:</h5>

                                <p>Written and oral communications <br> are clear, organized and effective; <br>

                                    listens

                                    and comprehends well</p>

                            </td>

                            <td>

                                <input type="checkbox"><span> &nbsp; Exceeds expectations</span> <br>

                                <input type="checkbox"><span> &nbsp; Meets expectations</span> <br>

                                <input type="checkbox"><span> &nbsp; Needs improvement</span> <br>

                                <input type="checkbox"><span> &nbsp; Unacceptable</span>

                            </td>

                            <td>

                                <textarea name="" class="textarea"></textarea>

                            </td>

                        </tr>



                        <tr>

                            <td>

                                <h5>Judgment & Decision-Making:</h5>

                                <p>Makes thoughtful, well-reasoned <br> decisions; exercises good <br> judgment,

                                    resourcefulness and <br> creativity in problem-solving </p>

                            </td>

                            <td>

                                <input type="checkbox"><span> &nbsp; Exceeds expectations</span> <br>

                                <input type="checkbox"><span> &nbsp; Meets expectations</span> <br>

                                <input type="checkbox"><span> &nbsp; Needs improvement</span> <br>

                                <input type="checkbox"><span> &nbsp; Unacceptable</span>

                            </td>

                            <td>

                                <textarea name="" class="textarea"></textarea>

                            </td>

                        </tr>



                        <tr>

                            <td>

                                <h5>Initiative & Flexibility:</h5>

                                <p>Demonstrates initiative, often <br> seeking out additional responsibility;

                                    <br>

                                    identifies problems and solutions; <br> thrives on new challenges and <br>

                                    adjusts

                                    to unexpected changes

                                </p>

                            </td>

                            <td>

                                <input type="checkbox"><span> &nbsp; Exceeds expectations</span> <br>

                                <input type="checkbox"><span> &nbsp; Meets expectations</span> <br>

                                <input type="checkbox"><span> &nbsp; Needs improvement</span> <br>

                                <input type="checkbox"><span> &nbsp; Unacceptable</span>

                            </td>

                            <td>

                                <textarea name="" class="textarea"></textarea>

                            </td>

                        </tr>



                        <tr>

                            <td>

                                <h5>Cooperation & Teamwork:</h5>

                                <p>Respectful of colleagues when <br> working with others and makes <br>

                                    valuable

                                    contributions to help the <br> group achieve its goals </p>

                            </td>

                            <td>

                                <input type="checkbox"><span> &nbsp; Exceeds expectations</span> <br>

                                <input type="checkbox"><span> &nbsp; Meets expectations</span> <br>

                                <input type="checkbox"><span> &nbsp; Needs improvement</span> <br>

                                <input type="checkbox"><span> &nbsp; Unacceptable</span>

                            </td>

                            <td>

                                <textarea name="" class="textarea"></textarea>

                            </td>

                        </tr>

						<tr>

                            <td>

                                <h5>Knowledge of Position:</h5>

                                <p>Possesses required skills, <br> knowledge, and abilities to <br>

                                    competently perform the job </p>

                            </td>

                            <td>

                                <input type="checkbox"><span> &nbsp; Exceeds expectations</span> <br>

                                <input type="checkbox"><span> &nbsp; Meets expectations</span> <br>

                                <input type="checkbox"><span> &nbsp; Needs improvement</span> <br>

                                <input type="checkbox"><span> &nbsp; Unacceptable</span>

                            </td>

                            <td>

                                <textarea name="" class="textarea"></textarea>

                            </td>

                        </tr>



                        <tr>

                            <td>

                                <h5>Training & Development:</h5>

                                <p>Continually seeks ways to <br> strengthen performance and <br>

                                    regularly monitors new <br> developments in field of work </p>

                            </td>

                            <td>

                                <input type="checkbox"><span> &nbsp; Exceeds expectations</span> <br>

                                <input type="checkbox"><span> &nbsp; Meets expectations</span> <br>

                                <input type="checkbox"><span> &nbsp; Needs improvement</span> <br>

                                <input type="checkbox"><span> &nbsp; Unacceptable</span>

                            </td>

                            <td>

                                <textarea name="" class="textarea"></textarea>

                            </td>

                        </tr>

                    </tbody>

                </table>

                

            </div>

        </div>







        <div class="container">



            <div class="scroll sqrl">

                <table class="table">

                    <h4>IV. PERFORMANCE GOALS</h4>

                    <thead>

                        <tr>

                            <th>Set objectives and outline steps to improve in problem areas or further employee

                                development.</th>

                        </tr>

                        <tr>

                            <td><textarea name="" class="fullwidthtextarea"></textarea></td>

                        </tr>

                    </thead>

                </table>

            </div>



        </div>



        <div class="container">



            <div class="scroll sqrl">

                <table class="table">

                    <h4>V. OVERALL RATING</h4>

                    <thead>

                        <tr>

                            <td>

                                <input type="checkbox" class="new2"><span style="font-weight: 600;"> &nbsp; EXCEEDS EXPECTATIONS</span> <br>

                                <span>Employee consistently </span> <br>

                                <span>performs at a high level </span> <br>

                                <span>that exceeds expectations </span> <br>

                                <span></span> <br>

                                <span></span> <br>

                                <span></span> <br>

                            </td>

                            <td>

                                <input type="checkbox" class="new2"><span style="font-weight: 600;"> &nbsp; MEETS EXPECTATIONS</span> <br>

                                <span>Employee satisfies all </span> <br>

                                <span>essential job requirements; </span> <br>

                                <span>may exceed expectations </span> <br>

                                <span>periodically; demonstrates </span> <br>

                                <span>likelihood of eventually </span> <br>

                                <span>exceeding expectations</span>

                            </td>

                            <td>

                                <input type="checkbox" class="new2"><span style="font-weight: 600;"> &nbsp; NEEDS IMPROVEMENT</span> <br>

                                <span>Employee consistently </span> <br>

                                <span>performs below required </span> <br>

                                <span>standards/expectations for </span> <br>

                                <span>the position; training or </span> <br>

                                <span>other action is necessary to </span> <br>

                                <span>correct performance </span>

                            </td>

                            <td>

                                <input type="checkbox" class="new2"><span style="font-weight: 600;"> &nbsp; UNACCEPTABLE</span> <br>

                                <span>Employee is unable or </span> <br>

                                <span>unwilling to perform </span> <br>

                                <span>required duties according </span> <br>

                                <span>to company standards; </span> <br>

                                <span>immediate improvement </span> <br>

                                <span>must be demonstrated </span>

                            </td>

                        </tr>

                    </thead>

                </table>

                <table class="table" style="margin-top: -17px !important; width: 100% !important;">

                    <thead>

                        <tr>

                            <td>Comment on the employee's overall performance.</td>

                        </tr>

                        <tr>

                            <td><textarea name="" class="fullwidthtextarea"></textarea></td>

                        </tr>

                    </thead>

                </table>

            </div>



        </div>



        <div class="container">



            <div class="scroll sqrl">

                <table class="table">

                    <h4>VI. EMPLOYEE COMMENTS (OPTIONAL)</h4>

                    <thead>

                        <tr>

                            <td><textarea name="" class="fullwidthtextarea"></textarea></td>

                        </tr>

                    </thead>

                </table>

            </div>



        </div>



        <div class="container">



            <div class="scroll sqrl">

                <table class="table">

                    <h4>VII. ACKNOWLEDGEMENT</h4>

                    <tbody>

                        <tr>

                            <td>I acknowledge that I have had the opportunity to discuss this performance evaluation

                                with my manager/ supervisor and I have received a copy of this evaluation.</td>

                        </tr>

                    </tbody>

                </table>



                <table class="table" style="margin-top: -17px;">

                    <tbody>

                        <tr>

                            <td>

                                Employee Signature:

                            </td>

                            <td>

                                <input type="text" name="" id="">

                            </td>

                            <td>

                                Date Reviewed:

                            </td>

                            <td>

                                <input type="date" name="" id="">

                            </td>

                        </tr>

                        <tr>

                            <td>

                                Reviewer Signature:

                            </td>

                            <td>

                                <input type="text" name="" id="">

                            </td>

                            <td>

                                Review Period :

                            </td>

                            <td>

                                <input type="date" name="" id="">

                            </td>

                        </tr>

                    </tbody>

                </table>

            </div>

            

            <button type="submit" class="btn_submit">Submit</button>



        </div>





</body>



</html>