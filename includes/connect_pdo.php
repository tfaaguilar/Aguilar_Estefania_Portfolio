<?php
$dsn = "mysql:host=localhost;dbname=lvswzl36_e_a_portfolio2;charset=utf8mb4";
try {
$connection = new PDO($dsn, 'lvswzl36_tfaaguilar', '1AOt42W&@SuC');
} catch (Exception $e) {
  error_log($e->getMessage());
  exit('unable to connect');
}
?>

