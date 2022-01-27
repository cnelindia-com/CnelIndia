<?php 
include('../../leave_calendar/config.php');


if ($_SERVER["REQUEST_METHOD"] == "POST") 
{
  $username = $_POST['username'];
  $password = $_POST['password'];

  $sql = "SELECT username FROM tickets_admin_login WHERE username = '$username' and passsword = '$password' ";
  $result = mysqli_query($conn ,$sql);
  $count = mysqli_num_rows($result);

  if($count == 1) 
  {
        $_SESSION['Username'] = $username;
        $_SESSION['login_status'] =1;
    
     ?>
       <script>
      window.location = "http://readyforyourreview.com//cnelindia/employee_evaluation/admin/index.php";
    </script>
    <?php
   
  }
  else {

  }

}

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Admin Login</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>

<style>

*{
  margin: 0;
  padding: 0;
}

.full_wrapper{
  width: 100%;   
  height: 100vh;           
  background-color: #C4D3F5;  
  padding: 2rem 1rem;       
}

.first_wrapper label{
  font-weight: 600;
  padding: 3px;
}

.my_container{
  margin-top: 12%;
}

.login{
  color: #fff;
  background-color: #6C79E0;
  font-size: 12px;
  margin-top: 1rem;
}

</style>

<body>

    <div class="full_wrapper">
        <div class="container my_container">
            <div class="row">
                <div class="col-md-6  offset-md-3">
                    <form method="post" action="" id="form_data">
                        <div class="form-group">
                            <label for="exampleInputEmail1">Username</label>
                            <input type="text" class="form-control" name="username" id="username"
                                aria-describedby="Username" placeholder="Username" required>
                        </div>
                        <div class="form-group mt-2">
                            <label for="exampleInputPassword1">Password</label>
                            <input type="password" class="form-control" name="password" id="password"
                                placeholder="Password" required>
                        </div>
                        <button type="submit" name="submit" class="btn login">Login</button>
                    </form>
                </div>
            </div>
        </div>
    </div>

</body>

</html>