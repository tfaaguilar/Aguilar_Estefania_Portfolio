<!DOCTYPE html>
<html lang="en">
<?php
require_once('../includes/connect.php');
$query = 'SELECT * FROM projects WHERE projects.id = :projectId';
$stmt = $connection->prepare($query);
$projectId = $_GET['id'];
$stmt->bindParam(':projectId', $projectId, PDO::PARAM_INT);
$stmt->execute();
$row = $stmt->fetch(PDO::FETCH_ASSOC);
?>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Project Page</title>
    <link rel="stylesheet" href="../css/main.css" type="text/css">

</head>
<body>

 
<form action="edit_project.php" method="POST">
<input name="pk" type="hidden" value="<?php echo $row['id']; ?>">

    <label for="title">project title: </label>
    <input name="title" type="text" value="<?php echo $row['title']; ?>" required><br><br>

    <label for="thumb">project thumbnail: </label>
    <input name="thumb" type="file" required value="<?php echo $row['image_url']; ?>"><br><br>

    <label for="desc">project description: </label>
    <textarea name="desc" type="text" required><?php echo $row['description']; ?></textarea><br><br>

    <label for="objective">Project Objective: </label>
    <textarea name="objective" type="text" required><?php echo $row['objective']; ?></textarea><br><br>

    <label for="goals">Project Goals: </label>
    <textarea name="goals" type="text" required><?php echo $row['goals']; ?></textarea><br><br>

    <label for="responsabilities">Project Responsabilities: </label>
    <textarea name="responsabilities" type="text" required><?php echo $row['responsabilities']; ?></textarea><br><br>

    <label for="process">Project Process: </label>
    <textarea name="process" type="text" required><?php echo $row['process']; ?></textarea><br><br>

    <label for="results">Project Results: </label>
    <textarea name="results" type="text" required><?php echo $row['results']; ?></textarea><br><br>

    <label for="image_filename">Project Image: </label>
    <input name="image_filename" type="file" required><br><br>

    <input name="submit" type="submit" value="Edit">
</form>
<?php
$stmt = null;
?>
</body>
</html>
