<?php
require_once('../includes/connect.php');
$query = "UPDATE projects SET title = ?,image_url = ?,description=?,objective=?,goals=?,responsabilities=?,process=?,results=? WHERE id = ?";

$stmt = $connection->prepare($query);

$stmt->bindParam(1, $_POST['title'], PDO::PARAM_STR);
$stmt->bindParam(2, $_POST['thumb'], PDO::PARAM_STR);
$stmt->bindParam(3, $_POST['desc'], PDO::PARAM_STR);
$stmt->bindParam(4, $_POST['objective'], PDO::PARAM_STR);
$stmt->bindParam(5, $_POST['goals'], PDO::PARAM_STR);
$stmt->bindParam(6, $_POST['responsabilities'], PDO::PARAM_STR);
$stmt->bindParam(7, $_POST['process'], PDO::PARAM_STR);
$stmt->bindParam(8, $_POST['results'], PDO::PARAM_STR);
$stmt->bindParam(9, $_POST['pk'], PDO::PARAM_INT);

$stmt->execute();
$stmt = null;
header('Location: project_list.php');
?>
