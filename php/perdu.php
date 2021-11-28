<?php

$user = 'root';
$password = 'root';
$db = 'papel_escape_game';
$host = 'localhost';
$port = 8889;

$link = mysqli_init();
$success = mysqli_real_connect(
   $link,
   $host,
   $user,
   $password,
   $db,
   $port
);
?>

<html>
<head>
<link rel="stylesheet" href = "../css/stylesfin.css">
  <link rel="icon" type="image/jpg" href="../img/icon.jpg" sizes="32x32">
<title>Perdu!</title>

</head>

<body>

  <audio id="audio" controls autoplay="true" loop src="../son/gameover.mp3">
 </audio>

  <div id="en_tete"><h1> Tu as perdu...</h1></div>

  <div id="centre">
<img id="prof" src="../img/gameover.gif" alt="perdu...">
  </div>

  <div id="play">
    <button class="bouton"> <a href="../html/page1.html"> Rejouez!</a> </button>
  </div>

  <div id="tabs">
    <p id="Hall"> Hall of Fame des Perdants</p>
    <?php

    $query = "SELECT * FROM hall_of_fame ORDER BY score DESC";

      $result = mysqli_query($link, $query);

      if($result){

        while ($ligne = mysqli_fetch_assoc($result)) {

          $liste[] =$ligne;

        }

    //echo json_encode($liste);

    } else {

    echo "Erreur de requête de base de données.";

    }
    for ($i=0; $i<count($liste); $i++){
echo $liste[$i]["pseudo"]."  ".$liste[$i]["score"] ;
    echo "<br>";
}


    ?>

</div>

</body>
</html>
