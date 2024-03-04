
<?php
require_once('../includes/connect.php');

    $projectId = intval($_GET['id']);

    // Delete from media table first
    $deleteMediaQuery = 'DELETE FROM media WHERE media.project_id = :projectId';
    $stmtMedia = $connection->prepare($deleteMediaQuery);
    $stmtMedia->bindParam(':projectId', $projectId, PDO::PARAM_INT);
    $stmtMedia->execute();

    // Delete from projects table
    $deleteProjectsQuery = 'DELETE FROM projects WHERE projects.id = :projectId';
    $stmtProjects = $connection->prepare($deleteProjectsQuery);
    $stmtProjects->bindParam(':projectId', $projectId, PDO::PARAM_INT);
    $stmtProjects->execute();

    $stmtMedia = null;
    $stmtProjects = null;

    header('Location: project_list.php');
?>