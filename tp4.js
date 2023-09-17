// TP4, COMISION 3. ALUMNA ZOE ULLUA, LEGAJO 94705/3
// Link al video explicativo:


let estado = 1;
let iniciodeljuego;
let foto1;
let foto2;

let posx = 400;
let posy = 570;
let pasos = 50;

let xe = [];
let ye = [];
let vel_e = 6;

function setup() {
  createCanvas(800, 600);
  for ( let i = 0; i < 7; i++ ) {
    
      xe[i] = int( random(11) ) * 50;  // 11x50= 550; ubicacion random hasta ese num
      ye[i] = int( random(11) ) * 50;
    }
}

function draw(){
// estado 1 ____________________________________________________
  if (estado == 1){  // pantalla inicial. instrucciones
    background(0);
    mouse = 1;
    textAlign(CENTER, CENTER);
    print(mouse);
    textSize(30);
    fill(255);
    text("INSTRUCCIONES", width/2, 100);
    text("¡HAZ CLICK PARA JUGAR!", width/2, 400);
    textSize(20);
    text("Eres una rana y debes llegar al otro lado de la calle", width/2, 200);
    text("antes de que se acabe el tiempo sin ser atropellado por los autos que pasan", width/2, 220);
  }
  
  //estado  2 _____________________________________________________________________________
  if (estado == 2){ // pantalla de juego.
    background(200);
    imageMode(CENTER);
    fill(196, 255, 204);
    rect(0, 0, 800, 50);
    rect(0,550 , 800, 50);
    // dibujo rana
    fill(0, 255, 0);
    ellipse (posx, posy, 50,50);
    image(foto2, posx, posy, 50,50);
    
   
   // dibujo enemigos
   fill( 255, 0, 0);
   for ( let i = 0; i < 7; i++ ) {
    ellipse (xe[i], ye[i], 50, 50 );
    image (foto1, xe[i], ye[i], 50, 50); // agrego foto de autos
    xe[i] += vel_e;  // agrego velocidad
    if (xe[i] > width){
      xe[i] = 0;}
  }
   
  // verifico colision
   for ( let i = 0; i < 7; i++ ) {
    if ( dist( posx, posy, xe[i], ye[i] ) < 50 ) { 
      estado = 4;}}
   
    // dibujo rectangulo de tiempo
    fill(0, 255, 0);
    print(millis()-iniciodeljuego);
   if((millis()-iniciodeljuego)>8000){
      estado = 4;}  // si se pasa del tiempo limite = estado 4 = perdiste
    rect(0,0, map(millis()-iniciodeljuego, 0, 8000, width, 0),5);
  
  
    // compruebo si llego al otro lado = si si = ganaste = estado 3
  if (posy <= 50){
    estado = 3;
  }}
  
  // estado 3 ______________________________________________________________
  if (estado == 3){ // pantalla ganaste
    background(0);
    text("¡GANASTE, LLEGASTE A SALVO! CLICK PARA REINICIAR ", width/2, height/2);
    text("Presiona espacio para ver los creditos ", width/2, 400);
}
 
 // estado 4 ____________________________________________________________
  if (estado == 4){ // pantalla perdiste
    background(0);
    fill(255, 0, 0);
    text("PERDISTE :(. CLICK PARA REINICIAR", width/2, height/2);
    text("Presiona espacio para ver los creditos ", width/2, 400);
  }
  
  // estado 5 __________________________________________________________
  if (estado == 5){  // pantalla de creditos
    background(0);
    fill(255);
    text("CREDITOS", width/2, 100);
    text("Juego basado en el íconico Frogger", width/2, 200);
    text("creado por Zoe Ullua, alumna de Tecno1, comisión 3", width/2, 250);
    text("CLICK PARA REINICIAR", width/2, 400);
  }
}

function keyPressed(){
  if (estado == 2){
    if (keyCode == UP_ARROW) {
      posy -= pasos;
    } else if (keyCode == DOWN_ARROW) {
      posy += pasos;
    } else if (keyCode == LEFT_ARROW) {
      posx -= pasos;
    } else if (keyCode == RIGHT_ARROW) {
      posx += pasos;
    }}
   
   if (estado == 3){
     if (key == ' '){
       estado = 5;
     }}
   
   if (estado == 4){
     if (key == ' '){
       estado = 5;
     }}
}
    
function mousePressed(){
  if(estado == 1){
    iniciodeljuego = millis();
    posx = 400;
    posy = 570;
    estado = 2;}

  else if (estado == 3){
    estado = 1;}
  
  else if (estado == 4){
    estado = 1;}
  
  else if (estado == 5){
    estado = 1;}
}

function preload(){
  foto1 = loadImage("autito.png");
  foto2 = loadImage("ranita.png");
}
