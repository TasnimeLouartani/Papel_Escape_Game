<!DOCTYPE html>
<html lang="fr" dir="ltr">
  <head>
    <meta charset="utf-8">
    <link rel="stylesheet" href = "../css/stylesconnection.css">
    <link rel="icon" type="image/jpg" href="../img/icon.jpg" sizes="32x32">
    <title>Nous avons fait allemand LV2</title>
  </head>
  <body>

    <h1>Choisis ton nom de capitale</h1>

    <form method="post" action="../php/jeu.php">

      <div id="milieu">
      <label id=llamas for="Pseudo">como te llamas ?</label>
      <input id="pseudo" type="text" name="Pseudo" value="" required minlength="1">
      <input id="start" type="submit" name="envoi" value="GO GO GO!">
      echo $truc[2] . "<br />\n";
      echo $truc[2] . "<br />\n";
      echo $truc[2] . "<br />\n";

      </div>

      <div id="fin">

      <label id=llamas for="Pseudo">sinon vous pouvez choisir une de ces capitales :</label>
      <nl2br>

      <input id="start1" type="submit" name="envoi" value="Paris" onclick="document.getElementById('pseudo').value='Paris';">
      <input id="start2" type="submit" name="envoi" value="Bruxelles" onclick="document.getElementById('pseudo').value='Bruxelles';">
      <input id="start3" type="submit" name="envoi" value="Vienne" onclick="document.getElementById('pseudo').value='Vienne'">
      <input id="start4" type="submit" name="envoi" value="Amsterdam" onclick="document.getElementById('pseudo').value='Amsterdam'">
      <input id="start5" type="submit" name="envoi" value="Rome"  onclick="document.getElementById('pseudo').value='Rome'">
      <input id="start6" type="submit" name="envoi" value="Sofia"  onclick="document.getElementById('pseudo').value='Sofia'">
      <input id="start7" type="submit" name="envoi" value="Athènes"  onclick="document.getElementById('pseudo').value='Athènes'">
      <input id="start8" type="submit" name="envoi" value="Riga"  onclick="document.getElementById('pseudo').value='Riga'">
      <input id="start9" type="submit" name="envoi" value="Budapest"  onclick="document.getElementById('pseudo').value='Budapest'">
      <input id="start10" type="submit" name="envoi" value="Monaco"  onclick="document.getElementById('pseudo').value='Monaco'">
      <input id="start11" type="submit" name="envoi" value="Belgrade"  onclick="document.getElementById('pseudo').value='Belgrade'">
      <input id="start12" type="submit" name="envoi" value="Prague"  onclick="document.getElementById('pseudo').value='Prague'">
    </div>


    </form>


  </body>
</html>
