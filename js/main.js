//////////////////// VARIABLES ////////////////////

var list_objets=[];
var list_box_obj=[];
var list_objets_non_recup = [];
var obj_clicked=[];
var list_obj_m=[];
var list_obj_i=[] ;

//////////////////// MAP ////////////////////

var mymap = L.map('map').setView([40.422588450289176,-3.6691803084381176], 20);
L.tileLayer('https://api.mapbox.com/styles/v1/{id}/tiles/{z}/{x}/{y}?access_token={accessToken}', {
attribution: 'Map data &copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors, Imagery © <a href="https://www.mapbox.com/">Mapbox</a>',
maxZoom: 18,
id: 'mapbox/streets-v11',
tileSize: 512,
zoomOffset: -1,
accessToken: 'pk.eyJ1IjoiYXhlbGxzYyIsImEiOiJja3V5MHJsOHMwemhsMnByZnJraHo3Y3NxIn0.-RSeYnibv28gdgJtmyLbMw'
}).addTo(mymap);

var zoom = mymap.getZoom();
//////////////////// CHRONO ////////////////////

var chrono = document.getElementById('chrono');
var sec =0;
var min=0;
var hrs=0;
var t;

//fonction tick permet de changer secondes en min et heures
function tick(){
    sec++;
    if (sec >= 60) { //60 secondes égal 1 min
        sec = 0;
        min++;
        if (min >= 60) { //60min donne 1h
            min = 0;
            hrs++;
        }
    }
}

function add() {
    tick();//incremente temps +1sec
    chrono.textContent = (hrs > 9 ? hrs : "0" + hrs)
        + ":" + (min > 9 ? min : "0" + min)
        + ":" + (sec > 9 ? sec : "0" + sec);
     var lastChar = chrono.innerText.slice(1,2);
    if(lastChar == 1){
               chrono.style.color = 'red';
               //alert("temps dépassé  !")
               window.open(
           "../php/perdu.php"
       );
       chrono.stop();
     }
    timer();
}

//function chrono_stop(){}

function timer() {
    t = setTimeout(add, 1000);
}

timer();

//////////////////// AFFICHE UN OBJET ////////////////////

function set(type, id){
    var zoom = mymap.getZoom();
    var condition = type + "=" + id;
    fetch('../php/database.php', {
      method: 'post',
      body: condition,
      headers: {
        'Content-Type': 'application/x-www-form-urlencoded'}
     })
      .then(result => result.json())
      .then(result => {
        for (var i = 0; i < result.length; i++){
          var objet = result[i];
          var icon = L.icon({
                                  iconUrl: result[i].Image,
                                  iconSize:     [50, 100], // size of the icon
                                  iconAnchor:   [22, 94], // point of the icon which will correspond to marker's location
                                  popupAnchor:  [-3, -76] // point from which the popup should open relative to the iconAnchor
                                  });
            var marqueur = L.marker([result[i].coord_x,result[i].coord_y], {icon: icon})
            marqueur.on("click",click);
            marqueur.addTo(mymap);

            marqueur.bindPopup(result[i].Message);

            list_obj_m.push(marqueur);
            list_objets.push(objet);

            var max_indice=list_obj_m.length - 1;
            list_obj_i[max_indice]=marqueur._leaflet_id;

          }
            selon_zoom();
        })}

function click(e){
          indice_marker = e.target._leaflet_id;
          indice = list_obj_i.indexOf(indice_marker) ;
          obj_clicked= list_objets[indice];
          marker_actuel=list_obj_m[indice];
          var indice_calcul = parseInt(obj_clicked.id);
          //si on a encore des objets à récupérer
          if (obj_clicked.id_obj_suivant!=null){

          if (obj_clicked.id != 6 && obj_clicked.id != 2 && obj_clicked.id != 4 && obj_clicked.id !=7 && obj_clicked.id != 9 && obj_clicked.id != 10 && obj_clicked.id != 12 && obj_clicked.id != 13 && obj_clicked.id != 14){
            //les objets récupérables
            list_box_obj[obj_clicked.id]= obj_clicked;
            set("id",indice_calcul+1);
          }
            else if (obj_clicked.id ==4){
              //click sur le bateau : voyage direct vers tangier
              mymap.flyTo([35.77380612534269, -5.769762097272521], 14);
              set("id",indice_calcul+1);
            }
            else if (obj_clicked.id ==7){
              //click sur l'avion : voyage direct vers l'ile
              mymap.flyTo([36.24208385304166, 30.4709], 14);
              set("id",indice_calcul+1);
            }
            else if (obj_clicked.id ==9){
              //click sur le jet ski : voyage direct vers le bout de l'ile
              mymap.flyTo([36.231162964546414, 30.479613581461766], 18);
              set("id",indice_calcul+1);
            }
            else if (obj_clicked.id ==12){
              //click sur l'helico : voyage direct vers la turquie
              mymap.flyTo([36.32996314971381, 30.430369115911965], 18);
              set("id",indice_calcul+1);
            }
            else if (obj_clicked.id == 6){
              //click sur le passeport : énigme
              var rep = prompt("Qui est mort en premier dans la casa de papel ? Indice : c'est une capitale :)");
                if (rep=="Oslo"){
                list_box_obj[obj_clicked.id]= obj_clicked;
                set("id",indice_calcul+1);
              }
                else{
                alert("C'était Oslo !");
                //plus de temps
                list_box_obj[obj_clicked.id]= obj_clicked;
                set("id",indice_calcul+1);
              }
            }
            else{
              //objet non récuperable
              list_objets_non_recup[obj_clicked.id]=obj_clicked;
              console.log("objet non récuperable");
              set("id",indice_calcul+1);
            }
            put_in_list();
            selon_zoom();
            }
            else{
              //tous les objets sont recuperes donc fin de la partie map
              alert("fin du jeu !!!!!");
              fin();
            }
  }

  function interact_zoom(e) {
    zoom = (e.sourceTarget._zoom);
    selon_zoom();
  }

//////////////////// REGLAGE DU ZOOM ////////////////////

function selon_zoom(){

  for (var i=0;i<list_objets.length;i++) {
    if (zoom>list_objets[i].zoom){
      //si l'image a un zoom inférieur à celui de la carte alors on l'affiche
      all.addLayer(list_obj_m[i]);}
    else{
      //sinon on affiche pas ces objets
      all.removeLayer(list_obj_m[i]);}
    }
}

/////////////////// MET LES OBJETS DANS LA LISTE /////////////

function put_in_list(){

  var div = document.getElementById('box') ;
  div.innerHTML='';
  for (var i=0;i<list_box_obj.length;i++) {
    if (list_box_obj[i] != null ){
      var obj_recup = document.createElement("img");
      obj_recup.src = list_box_obj[i].Image;
      obj_recup.setAttribute("style", "text-align:left");
      obj_recup.style.height = '100px';
      obj_recup.style.width = '50px';
      div.appendChild(obj_recup);
    }
  }
}


///////////////// FIN DU JEU /////////////////

function fin(){
  var pseudo = document.getElementById("pseudo").innerHTML;
  var time = document.getElementById("chrono").innerHTML;
  let score = {'pseudo': pseudo, 'time':time};
  alert(pseudo+ " tu as mis : " + time);
  window.open("../php/destination.php");
    fetch("../php/score.php",{
      method : "POST",
      body : JSON.stringify(score),
      headers: {
         'Content-Type': 'application/text'
      },
  }).then(function(response){
      return response.text();
      console.log(response);
  }).then(function(text){
     console.log(text);
  }).catch(function(error){
     console.log(error);
   })
}


//////////////////// MAIN ////////////////////

set("id",1);
var all = L.featureGroup([]);
all.addTo(mymap);
mymap.on('zoomend', interact_zoom);
