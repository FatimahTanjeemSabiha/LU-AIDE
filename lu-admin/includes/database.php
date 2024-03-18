<?php


$db['server_name'] = "localhost";
$db['user_name'] = "root";
$db['user_password'] = "";
$db['database_name'] = "luaidproject";

foreach ($db as $key => $value){
    define(strtoupper("$key"), $value);
}
$connection = mysqli_connect(SERVER_NAME,USER_NAME,USER_PASSWORD,DATABASE_NAME);
if(!$connection) {
    die("CONNECT FAILED" . mysqli_error($connection));
}

?>