<html lang=fr dir="ltr">
  <head>
    <meta charset="utf-8">
    <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="../css/stylesmap.css">
    <link rel="stylesheet" href="https://unpkg.com/leaflet@1.7.1/dist/leaflet.css"
   integrity="sha512-xodZBNTC5n17Xt2atTPuE1HxjVMSvLVW9ocqUKLsCC5CXdbqCmblAshOMAS6/keqq/sMZMZ19scR4PsZChSR7A=="
   crossorigin=""/>
   <script src="https://unpkg.com/leaflet@1.7.1/dist/leaflet.js"
   integrity="sha512-XQoYMqMTK8LvdxXYG3nZ448hOEQiglfqkJs1NOQV44cWnUrBc8PkAOcXy20w0vlaXaVUearIOBhiXZ5V3ynxwA=="
   crossorigin=""></script>
   <link rel="icon" type="image/jpg" href="../img/icon.jpg" sizes="32x32">
    <title> L'Escape de Papel </title>
  </head>

  <body>

    <audio id="audio" controls autoplay="true" loop src="../son/game.mp3">
   </audio>

    <p id="chrono">00:00:00</p>

    <div id="en_tete"> <h1>A toi de jouer <?php echo $_POST['Pseudo'] ?>...</h1></div>
    <?php
    $A = $_POST['Pseudo'];
    //$link = mysqli_connect('mysql-louartani.alwaysdata.net', 'louartani','Tasnime2001','louartani_saba');

    $user = 'root';
    $password = 'root';
    $db = 'papel_escape_game';
    $host = 'localhost';
    $port = 8889;

    $link = mysqli_init();

    if (!$link) {
      die('Erreur de connexion');
    }
    else {
    echo 'Succès... ';
     }
    $success = mysqli_real_connect(
       $link,
       $host,
       $user,
       $password,
       $db,
       $port
    );

    $insert = "INSERT INTO hall_of_fame (pseudo,score) values ('$A','00:00:00') " ;
    $result=mysqli_query($link,$insert);

    echo json_encode($result);
?>
    <div id="map"></div>
    <p id="pseudo"> <?php
    echo $_POST['Pseudo'] ?> </p>
    <div id="box"><p id="liste_obj">LISTE D'OBJETS</p></div>

    <script src="../js/main.js">
    </script>



  </body>
</html>
