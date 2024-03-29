<?php

if(isset($_GET['email'])){
   $email_address =  $_GET['email'];
}

session_start();
require_once "../../lu-admin/includes/functions.php";
require_once "../../lu-admin/includes/database.php";



if(isset($_POST['verify_registration'])){
    global $connection;

    $student_email = $_POST['student_email'];
    $verification_code = $_POST['verification_code'];

    $query = "SELECT * FROM `users` WHERE `email`='$student_email'";
    $query_fetch_users = mysqli_query($connection,$query);

    while($row = mysqli_fetch_assoc($query_fetch_users)){

        $db_user_id  = $row['id'];
        $db_name  = $row['name'];
        $db_email  = $row['email'];
        $db_phone = $row['phone'];
        $db_st_id  = $row['st_id'];
        $db_verification_code = $row['verification_code'];
        $is_verify  = $row['is_verify'];
    }
    if($is_verify == 1){
        echo "<script>
            alert('Your account has already been verified! Please log in.');
            location.href = '../../login.php?st_id=$db_st_id';
            </script>";
    }

    if(($verification_code === $db_verification_code) && ($student_email === $db_email)){

        //update user
        $update_users_verify = "UPDATE `users` SET `is_verify`='1' WHERE `verification_code` ='$db_verification_code'";
        $query_run_once = mysqli_query($connection,$update_users_verify);
        if($query_run_once){
            echo "<script>
            alert('Verification Successful! You can login now');
            location.href = '../../login.php?st_id=$db_st_id';
            </script>";
        }else{
            echo "<script>alert('Verification Failed')</script>";
        }

    }else{
        echo "<script>alert('Verification Failed')</script>";
    }
}


?>
<!doctype html>
    <html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" />

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css" />

        <title> LU - AID</title>

        <link rel="stylesheet" href="../../assets/css/register.css">
        <link href="../../assets/img/favicon.png" rel="icon">

    </head>
<body id="register-page" onload="myFunction()">

<div class="container-fluid">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="container registration-form rounded">
                <div class="row align-items-start">

                    <div class="col-md-12 text-center p-3">
                        <h4>Create A Student Account</h4>
                    </div>

                    <div class="col-lg-8 p-3 m-auto">

                        <?php if(isset($_SESSION['st_id'])){ ?>
                        <h4 class="text-primary text-center">You are Logged In</h4>
                        <p>Home ?? <a href='index.php'>Home </a></p>
                        <?php }else{ ?>
                            <div class="register-left-content">

                                <form action="" method="post" enctype="multipart/form-data">
                                    <div class="register-form">
                                        <div class="form-group">

                                            <input type="text" class='form-control' name='student_email' placeholder='Email Address' required value="<?php echo $email_address ?>">

                                        </div>
                                        <div class="form-group">

                                            <input type="text" class='form-control' name='verification_code' placeholder='Verification Code' required>
                                        </div>
                                        <div class="submit-regiter text-center">
                                            <button type='submit' name='verify_registration' id='register-btn'>Verify Now</button>
                                        </div>
                                    </div>
                                </form>
                            </div>

                            <div class="info p-3">

                                <p class="text-center">Don't Have Account? <a href='../../register.php'>Sign Up</a></p>

                            </div>
                        <?php }
                        ?>
                    </div>


                </div>
            </div>
        </div>
    </div>

</div>




<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js"</script>

</body>
</html>