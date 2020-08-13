<?php
// include database and object files
include_once '../config/database.php';
include_once '../objects/user.php';

// get database connection
$database = new Database();
$db = $database->getConnection();

// prepare user object
$user = new User($db);

$params = (array) json_decode(file_get_contents('php://input'), TRUE);


$user->email = isset($params['email']) ? $params['email'] : die();
$user->password = base64_encode(isset($params['password']) ? $params['password'] : die());

$stmt = $user->login();
if($stmt->rowCount() > 0) {
    $row = $stmt->fetch(PDO::FETCH_ASSOC);
    $user_arr=array(
        "status" => true,
        "message" => "Successfully Login!",
        "user_id" => $row['user_id'],
        "name" => $row['name'],
        "email" => $row['email_id']
    );
}
else{
    $user_arr=array(
        "status" => false,
        "message" => "Invalid Username or Password!",
    );
}
print_r(json_encode($user_arr));

?>