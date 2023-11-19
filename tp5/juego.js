class Juego {
  constructor(){
  this.estado = 1;
  this.iniciodeljuego;
  this.bella = new Bella(); //
  this.enemigos = new Enemigos();
  this.fotos = new Fotos();
 }

//metodos

actualizar(){ // logica de estados
  // estado 1 ____________________________________________________
  if ( this.estado == 1) {
    background(0);
    // mouse = 1;
    textAlign(CENTER, CENTER);
    // print(mouse);
    textSize(30);
    fill(255);
    this.fotos.fondos();
    text("INSTRUCCIONES", width/2, 100);
    text("¡HAZ CLICK PARA JUGAR!", width/2, 400);
    textSize(18);
    text("Eres Bella. Gastón y el pueblo han llegado al castillo para rescatarte y asesinar a Bestia.", width/2, 200);
    text("Evitalos y llega al otro lado para ayudarlo. ", width/2, 220);
    this.enemigos.configurar();
  
  //estado 2 _____________________________________________________
  } else if (this.estado == 2) {
    background(227, 196, 147);
    fill(134, 105, 41);
    rect(0, 0, 800, 50);
    rect(0,550 , 800, 50);
    this.bella.dibujar();
    this.enemigos.dibujar();
    this.fotos.estado2();
    
     //colision
    for ( let i = 0; i < 7; i++ ) {
      if ( dist( this.bella.posx, this.bella.posy, this.enemigos.xe[i], this.enemigos.ye[i] ) < 50 ) { 
      this.estado = 4;}} 
      
      // compruebo si llego al otro lado = si si = ganaste = estado 3
      if (this.bella.posy <= 50){
        this.estado = 3;
  }
      
     // rect de tiempo
    fill(0, 255, 0);
    print(millis()-this.iniciodeljuego);
    if((millis()-this.iniciodeljuego)>8000){
      this.estado = 4;}  // si se pasa del tiempo limite = estado 4 = perdiste
      rect(0,0, map(millis()-this.iniciodeljuego, 0, 8000, width, 0),5);
  
  // estado 3 ______________________________________________________________
  } else if (this.estado == 3){ // pantalla ganaste
    background(0);
    fill (255);
    textSize(20);
    this.fotos.fondos();
    textAlign(CENTER, CENTER);
    text("¡GANASTE, ESQUIVASTE EL RESCATE! CLICK PARA REINICIAR ", width/2, height/2);
    text("Presiona espacio para ver los creditos ", width/2, 400);
 
 // estado 4 ____________________________________________________________
  } else if (this.estado == 4){ // pantalla perdiste
    background(0);
    fill(255);
    textSize(20);
    textAlign(CENTER, CENTER);
    this.fotos.fondos();
    text("PERDISTE :(. CLICK PARA REINICIAR", width/2, height/2);
    text("Presiona espacio para ver los creditos ", width/2, 400);
  
  // estado 5 __________________________________________________________
  } else if (this.estado == 5){  // pantalla de creditos
    background(0);
    fill(255);
    textSize(20);
    textAlign(CENTER, CENTER);
    text("CREDITOS", width/2, 100);
    text("Juego basado en el íconico Frogger, adaptado a la Bella y la Bestia", width/2, 200);
    text("creado por Zoe Ullua, alumna de Tecno1, comisión 3", width/2, 250);
    text("CLICK PARA REINICIAR", width/2, 400);
  }
}
  
keyPressed(){
  if (this.estado == 2){
    this.bella.keyPressed();
  } else if (this.estado == 3){
     if (key == ' '){
       this.estado = 5;
     }}
   else if (this.estado == 4){
     if (key == ' '){
       this.estado = 5;
     }}
}

mousePressed(){
  if(this.estado == 1){
    this.iniciodeljuego = millis();
    this.bella.posx = 400;
    this.bella.posy = 570;
    this.estado = 2;}

  else if (this.estado == 3){
    this.estado = 1;}
  
  else if (this.estado == 4){
    this.estado = 1;}
  
  else if (this.estado == 5){
    this.estado = 1;}
}}
