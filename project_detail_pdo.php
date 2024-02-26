<!DOCTYPE html>
<html lang="en">

<?php
require_once('includes/connect_pdo.php');

$query = 'SELECT GROUP_CONCAT(image_filename) AS images, description, title, objective, goals, responsabilities, process, results FROM projects, media WHERE projects.id = project_id AND projects.id = :projectId';

$stmt = $connection->prepare($query);
$projectId = $_GET['id'];
$stmt->bindParam(':projectId', $projectId, PDO::PARAM_INT);
$stmt->execute();
$row = $stmt->fetch(PDO::FETCH_ASSOC);
$images = explode(",", $row['images']);
?>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?php echo $row['title']; ?></title>
    <link rel="stylesheet" href="css/main.css" type="text/css">
    <script defer src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.5.0/ScrollTrigger.js"></script>
    <script defer type="module" src="js/main.js"></script>
</head>

<body data-page="home">

<h1><?php echo $row['title']; ?></h1>

<p class="description"><?php echo $row['description']; ?></p>
<h2>Objective</h2>
<p class="description"><?php echo $row['objective']; ?></p>
<h2>Goals</h2>
<p class="description"><?php echo $row['goals']; ?></p>
<section class="project-gallery grid-con">
<?php 
for($i =0; $i < count($images); $i++) {

echo '<img class="col-span-full portfolio-image" src="images/'.$images[$i].'" alt="Project Image">';

}
?>
</section>
<h2>Responsabilities</h2>
<p class="description"><?php echo $row['responsabilities']; ?></p>
<h2>Process</h2>
<p class="description"><?php echo $row['process']; ?></p>
<h2>Results</h2>
<p class="description"><?php echo $row['results']; ?></p>

<a class="back" href="index.php">Go back to "Works"</a>


</body>
</html>
