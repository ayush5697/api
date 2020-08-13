<?php

// get database connection
include_once '../config/database.php';

// instantiate user object
include_once '../objects/user.php';

$database = new Database();
$db = $database->getConnection();

$user = new User($db);

$params = (array) json_decode(file_get_contents('php://input'), TRUE);

// set user property values
$user->user_id = uniqid();
$user->name = $params['name'];
$user->email = $params['email'];
$user->phone = $params['phone'];
$user->password = base64_encode($params['password']);
$user->created = date('Y-m-d H:i:s');
$user->ip_address = $_SERVER['REMOTE_ADDR'];

print_r($user->ip_address);

// create the user
if($user->signup()){
    $user_arr=array(
        "status" => true,
        "message" => "Successfully Signup!",
        "user_id" => $user->user_id,
        "name" => $user->name,
        "email" => $user->email
    );
}
else{
    $user_arr=array(
        "status" => false,
        "message" => "Username already exists!"
    );
}
print_r(json_encode($user_arr));

?>