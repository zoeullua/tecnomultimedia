// tp recuperatorio del tp2. Zoe Ullua legajo 94705/3. Comision 3 tecno
// link al video explicativo:


//  instrucciones: presione la tecla espacio y/o click en el centro de la obra para cambios.

float colorlineas = 255;
int grosorlineas = 13;
int estadokey = 0;
int estadomouse = 0;
PImage foto;

void setup(){
foto = loadImage("data/fototp2.jpg");
size(800, 400);
background(255);
}


void draw(){
 // agrego foto
image(foto, 0,0, 400, 400);

funcionfondo(grosorlineas);  // dibujo los cuadrados del fondo
funcionlineasmedio(colorlineas);  // dibujo las lineas verticales y horizontales en cruz

// interactividad o eventos
// estados de tecla
if (estadokey == 0){ 
  println("PRESIONE EL ESPACIO PARA VER CAMBIOS");
  grosorlineas = 13;}
else if (estadokey == 1){
  println("PRESIONE ESPACIO PARA DETENER");
  grosorlineas= grosorlineas + 1;
  grosorlineas = grosorlineas % 20;
}

// estados de mouse
if (estadomouse == 0){
  println("CLICK EN EL CENTRO PARA VER CAMBIOS");
  colorlineas = 255;}
else if (estadomouse == 1){
  println("CLICK EN EL CENTRO PARA DETENER");
  colorlineas = random(255);}  // uso de random

}


void keyPressed(){
  // logica de estados. interactividad o eventos
   if (key == ' '){
    if (estadokey == 0){ 
      estadokey = 1;}
    else if (estadokey == 1) {  // reinicio
      estadokey = 0;}}}
      
void mousePressed(){
  if (estadomouse == 0){
    if (funcionretorna(600,200,25)){  // compruebo que este haciendo click en el centro
      estadomouse = 1;}}
  else if (estadomouse == 1){  // reinicio
    if (funcionretorna(600, 200, 30)){  // compruebo que este haciendo click en el centro
       estadomouse =0;}}
}
