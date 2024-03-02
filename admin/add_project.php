<?php
require_once('../includes/connect.php');

//move_uploaded_file etc FIRST, as we need the new name
//save the name in $filename variable



$query = "INSERT INTO projects (title,description,image_url,objective,goals,responsabilities,process,results) VALUES (?,?,?,?,?,?,?,?)";

$stmt = $connection->prepare($query);
$stmt->bindParam(1, $_POST['title'], PDO::PARAM_STR);
$stmt->bindParam(2, $_POST['desc'], PDO::PARAM_STR);
$stmt->bindParam(3, $filename, PDO::PARAM_STR);
$stmt->bindParam(4, $_POST['objective'], PDO::PARAM_STR);
$stmt->bindParam(5, $_POST['goals'], PDO::PARAM_STR);
$stmt->bindParam(6, $_POST['responsabilities'], PDO::PARAM_STR);
$stmt->bindParam(7, $_POST['process'], PDO::PARAM_STR);
$stmt->bindParam(8, $_POST['results'], PDO::PARAM_STR);


$stmt->execute();
$last_id = $connection->lastInsertId();
$stmt = null;
header('Location: project_list.php');
?>