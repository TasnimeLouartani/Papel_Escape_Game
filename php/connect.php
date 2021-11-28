<?php
$user = 'root';
$password = 'root';
$db = 'papel_escape_game';
$host = 'localhost';
$port = 3306;

$link = mysqli_init();
$success = mysqli_real_connect(
   $link,
   $host,
   $user,
   $password,
   $db,
   $port
);
//$link = mysqli_connect('mysql-louartani.alwaysdata.net', 'louartani','Tasnime2001','louartani_saba');

if (!$link) {
  die('Erreur de connexion');
}
else {
echo 'Succès... ';
 }
?>
