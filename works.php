<!DOCTYPE html>
<html lang="en">
<?php
    require_once('includes/connect.php');
    $stmt = $connection->prepare('SELECT * FROM projects ORDER BY title ASC');
    $stmt->execute();
?>

<head>
    <title>Estefania Aguilar Portfolio</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="apple-touch-icon" sizes="180x180" href="/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="/favicon-16x16.png">
    <link rel="manifest" href="/site.webmanifest">
    <link rel="mask-icon" href="/safari-pinned-tab.svg" color="#5bbad5">
    <meta name="msapplication-TileColor" content="#da532c">
    <meta name="theme-color" content="#ffffff">
    <link rel="stylesheet" href="https://cdn.plyr.io/3.7.8/plyr.css" />
    <link href="css/grid.css" rel="stylesheet" />
    <link href="css/main.css" rel="stylesheet"/>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Alata&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/c65e6bc5cc.js" crossorigin="anonymous"></script>
    <script defer src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.12.3/gsap.min.js"></script>
    <script defer src="js/SplitText.js"></script>
    <script defer src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.5.0/ScrollTrigger.js"></script>
    <script defer type="module" src="https://ajax.googleapis.com/ajax/libs/model-viewer/3.0.1/model-viewer.min.js"></script>
    <script defer src="https://cdn.plyr.io/3.7.8/plyr.js"></script>
    <script defer type="module" src="js/main.js"></script>
  </head>

  <body data-page="home">

  <h1 class="hidden">EA. projects</h1>
    <div id="sticky-nav-con">
    <header class="grid-con" id="main-header">
    <nav id="main-nav" class="col-start-1 col-end-2 m-col-start-7 m-col-end-12">
    <h2 class="hidden">Main Navigation</h2>
      <button id="button"></button>
        <div id="burger-con">
            <ul id="burger-menu">
                <li><a href="index.html">About</a></li>
                <li><a href="works.php">Works</a></li>
                <li><a href="contact.html">Contact</a></li>
            </ul>
        </div>  
    </nav>
    <div class="col-span-full m-col-start-1 m-col-end-4" id="logo">
        <a href="index.html">
        <img src="images/logo-EA..svg" alt="Logo">
        </a>
    </div>
</header>
</div>

  <?php

        while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {

        echo  '<section class="project-con"><h3>'.
                $row['title'].
        '</h3><a href="project_detail_pdo.php?id='.
        $row['id'].
        '"><img class="thumbnail imagenAnimada" src="images/'.    
                $row['image_url'].   
                '" alt="Project Thumbnail"></a></section>';

        }

        $stmt = null;

    ?> 


<footer id="footer-hero"> 
        <div class="grid-con">
            <section id="footer-contact-info" class="col-span-full m-col-start-4 m-col-end-10">
                <a href="index.html">
                <img src="images/logo-EA..svg" alt="Logo">
                </a>
                    <div id="footer-nav">
                        <ul>
                            <li><a href="#caracteristics">About</a></li>
                            <li><a href="works.php">Works</a></li>
                            <li><a href="contact.html">Contact</a></li>
                        </ul>
                    </div>
            </section>

            <section class="col-span-full m-col-start-4 m-col-end-10 book-now">
                <div id="social-media">
                    <i class="fa-brands fa-linkedin" onclick="window.open('https://www.linkedin.com/in/estefaniaaguilar01/', '_blank')"></i>
                    <i class="fa-brands fa-github" onclick="window.open('https://github.com/tfaaguilar', '_blank')"></i>
                    <i class="fa-brands fa-square-behance" onclick="window.open('https://www.behance.net/estefanaguilar9', '_blank')"></i>
                    <i class="fa-brands fa-facebook" onclick="window.open('https://www.facebook.com/', '_blank')"></i>
                    <i class="fa-brands fa-instagram" onclick="window.open('https://www.instagram.com/', '_blank')"></i>
                </div>
            </section>

            <div id="footer-privacy" class="col-span-full m-col-start-2 m-col-end-12 line-seperator">
                <p id="price-policy">©2023 Estefania Aguilar. All Rights Reserved. Privacy Policy</p>
            </div>
        </div>
    </footer>
  </body>
</html>