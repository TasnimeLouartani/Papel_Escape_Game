<?php

    //$link = mysqli_connect('mysql-louartani.alwaysdata.net', 'louartani','Tasnime2001','louartani_saba');

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

    if(isset($_POST["id"])){
    	$query = "SELECT * FROM objets WHERE id=".$_POST["id"];
    	$result = mysqli_query($link, $query);
    	if($result){
        while ($ligne = mysqli_fetch_assoc($result)) {
          $liste[] =$ligne;
        }
    	}
    }
    echo json_encode($liste);
?>
