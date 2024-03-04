<?php
require_once('../includes/connect.php');

$updateProjectsQuery = "UPDATE projects SET title = ?, image_url = ?, description = ?, objective = ?, goals = ?, responsabilities = ?, process = ?, results = ? WHERE id = ?";

$stmtProjects = $connection->prepare($updateProjectsQuery);

$stmtProjects->bindParam(1, $_POST['title'], PDO::PARAM_STR);
$stmtProjects->bindParam(2, $_POST['thumb'], PDO::PARAM_STR);
$stmtProjects->bindParam(3, $_POST['desc'], PDO::PARAM_STR);
$stmtProjects->bindParam(4, $_POST['objective'], PDO::PARAM_STR);
$stmtProjects->bindParam(5, $_POST['goals'], PDO::PARAM_STR);
$stmtProjects->bindParam(6, $_POST['responsabilities'], PDO::PARAM_STR);
$stmtProjects->bindParam(7, $_POST['process'], PDO::PARAM_STR);
$stmtProjects->bindParam(8, $_POST['results'], PDO::PARAM_STR);
$stmtProjects->bindParam(9, $_POST['pk'], PDO::PARAM_INT);

$stmtProjects->execute();

$updateMediaQuery = "UPDATE media SET image_filename = ? WHERE project_id = ?";
$stmtMedia = $connection->prepare($updateMediaQuery);

$stmtMedia->bindParam(1, $_POST['image_filename'], PDO::PARAM_STR); 
$stmtMedia->bindParam(2, $_POST['pk'], PDO::PARAM_INT); 

$stmtMedia->execute();

$stmtProjects = null;
$stmtMedia = null;

header('Location: project_list.php');
?>
