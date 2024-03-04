<?php
require_once('../includes/connect.php');

$queryProjects = "INSERT INTO projects (title, description, image_url, objective, goals, responsabilities, process, results) VALUES (?,?,?,?,?,?,?,?)";

$stmtProjects = $connection->prepare($queryProjects);
$stmtProjects->bindParam(1, $_POST['title'], PDO::PARAM_STR);
$stmtProjects->bindParam(2, $_POST['desc'], PDO::PARAM_STR);
$stmtProjects->bindParam(3, $_POST['thumb'], PDO::PARAM_STR);
$stmtProjects->bindParam(4, $_POST['objective'], PDO::PARAM_STR);
$stmtProjects->bindParam(5, $_POST['goals'], PDO::PARAM_STR);
$stmtProjects->bindParam(6, $_POST['responsabilities'], PDO::PARAM_STR);
$stmtProjects->bindParam(7, $_POST['process'], PDO::PARAM_STR);
$stmtProjects->bindParam(8, $_POST['results'], PDO::PARAM_STR);

$stmtProjects->execute();
$last_id = $connection->lastInsertId();


$queryMedia = "INSERT INTO media (project_id, image_filename) VALUES (?, ?)";

$stmtMedia = $connection->prepare($queryMedia);
$stmtMedia->bindParam(1, $last_id, PDO::PARAM_INT);  // Corrected variable name
$stmtMedia->bindParam(2, $_POST['image_filename'], PDO::PARAM_STR);

$stmtMedia->execute();

$stmtProjects = null;
$stmtMedia = null;

$connection = null; 
header('Location: project_list.php');
?>