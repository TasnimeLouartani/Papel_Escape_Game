<?php
$content = trim(file_get_contents("php://input"));
$data = json_decode($content, true);
$link=mysqli_connect('localhost','root','root','papel_escape_game',8889);
if ($link->connect_error) {
  die("Connection failed: " . $link->connect_error);
}
  if (isset($data["time"])){
    $A = $data["pseudo"];
    $temps=$data["time"];
    $insertion1 = "INSERT INTO hall_of_fame (pseudo,score) values ('$A','$temps') " ;
    $result=mysqli_query($link,$insertion1);

    if ($result){
      echo "works";
    }
    else {
      echo "....";
    }
  }
?>
