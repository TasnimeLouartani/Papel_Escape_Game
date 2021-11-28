<!DOCTYPE html>
<html lang="fr" dir="ltr">
  <head>
    <meta charset="utf-8">
    <link rel="stylesheet" href = "../css/stylesdestination.css">
    <link rel="icon" type="image/jpg" href="../img/icon.jpg" sizes="32x32">
    <title>T'aimes les avocats</title>
  </head>
  <body>
    <h1>Te souviens-tu de la fin de la saison 2 ?</h1>



      <div>
        <img class="fond" src="../img/destination.png">
      </div>
      <div id="milieu">
      <label id=llamas for="Pseudo">Quelle est la destination de rêve des 4 cartes postales que tu as récupéré ?</label>
      <nl2br>
        <form method="post" action="../php/perdu.php">

      <input id="agadir" type="submit" name="envoi" value="Agadir" onclick="document.getElementById('pseudo').value='Agadir';">
      <input id="les_calanques" type="submit" name="envoi" value="Les Calanques"  onclick="document.getElementById('pseudo').value='Les Calanques'">
      <input id="palau" type="submit" name="envoi" value="Palau" onclick="document.getElementById('pseudo').value='Palau';">
      <input id="san_blas" type="submit" name="envoi" value="San Blas" onclick="document.getElementById('pseudo').value='San Blas'">
      <input id="nacula_island" type="submit" name="envoi" value="Nacula Island"  onclick="document.getElementById('pseudo').value='Nacula Island'">
      <input id="nassau" type="submit" name="envoi" value="Nassau"  onclick="document.getElementById('pseudo').value='Nassau'">
      <input id="andros" type="submit" name="envoi" value="Andros"  onclick="document.getElementById('pseudo').value='Andros'">
      <input id="bora-bora" type="submit" name="envoi" value="Bora-Bora"  onclick="document.getElementById('pseudo').value='Bora-Bora'">
      <input id="na_mokulua" type="submit" name="envoi" value="Na Mokulua" onclick="document.getElementById('pseudo').value='Na Mokulua'">

    </form>
      <form method="post" action="../php/pageSuccess.php">

      <input id="puerto_princesa" type="submit" name="envoi" value="Puerto Princesa"  onclick="document.getElementById('pseudo').value='Puerto Princesa'">
    </form>

      </div>

  </body>
</html>
