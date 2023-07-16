// TP3. Comisión 3. Alumna Zoe Ullua. Legajo 94705/3
// Cuento elegido: La Bella y la Bestia
// Link del video explicativo: 

// dec de variables
int CantFotos = 13;
PImage [] fondos = new PImage [CantFotos];
String[] textos = new String [13];
String[] textos_b = new String [13];
int estado = 0;
int haybotones = 0;
int numbotonA = 0;
int numbotonB = 1;
int avanzo = 1;


void setup(){
  size(600,600);
  
  // cargo las fotos
  for (int i = 0; i < CantFotos; i++) {
    fondos[i] = loadImage("foto" + nf(i,2) + ".jpg");
     fondos[i].resize(600,600);
}

 // cargo los textos del cuento
 textos[0]= "Cuento La Bella y la Bestia";
 textos[1]= "Eres Bella, una joven de un pequeño pueblo que vive una vida tranquila leyendo y pasando tiempo con tu padre, un inventor.";
 textos[2]= "Te enteras que tu padre se perdió en el bosque y llegó a un castillo encantando, donde fue capturado por una temida bestia.";
 textos[3]= "FINAL MALO: La policia no logra rescatar a tu padre, por lo que no vuelves a verlo. Al menos aprendes a vivir sola.";
 textos[4]="Llegas al castillo y la bestia te ofrece un trato: la libertad de tu padre a cambio de que ocupes su lugar.";
 textos[5]= "FINAL MALO: La Bestia te atrapa antes de que logres escapar. Enfurecido, los encierra a ambos por siempre en el calabozo.";
 textos[6]= "Decides quedarte. Avanza el tiempo y conforme transcurren los meses conoces la verdadera personalidad de la bestia y su bondad oculta.";
 textos[7]= "Mientras tanto, en el pueblo Gastón, un cazador, organiza un plan para rescatarte y derrotar a la bestia.";
 textos[8]= "El rescate del pueblo llego, sin embargo el centro de su conversación es asesinar a la bestia. El tiempo se agota, van a entrar.";
 textos[9]= "FINAL MALO: No quisieron escucharte y entraron al castillo. La bestia, desprevenida, fue derrotada. Y en agradecimiento por el rescate, debes casarte con Gastón.";
 textos[10]= "Logras ganar algo de tiempo, pero entran de todos modos. La batalla es brutal, y concluye con un último enfrentamiento entre Gastón y la bestia. Está claro que la bestia va a ganar.";
 textos[11]= "FINAL BUENO: La bestia vence y gracias a tu cariño y apoyo revela su forma real, un principe. Te invita a vivir en su castillo y son felices.";
 textos[12]= "FINAL ¿BUENO?: Traicionas a la bestia por la espalda. Te rescataste a ti misma, y al quedar el castillo sin propietario, ahora es tuyo. Pasa a ser tu nuevo y solitario hogar.";
 // cargo los textos de los botones
 
 textos_b[0]= "Ir a rescatarlo";
 textos_b[1]= "Esperar a que \n la policia se encargue";
 textos_b[2]= "Intentar escapar \n junto a tu padre";
 textos_b[3]= "Quedarte y aceptar \n  el trato";
 textos_b[4]= "Salir del castillo \n e intentar explicarles \n la situación";
 textos_b[5]= "Trabar las puertas";
 textos_b[6]= "Observar la victoria \n de la bestia";
 textos_b[7]= "Traicionar a la bestia";
}

void draw(){
   background(255);
   textSize(100);
   pantallabase(fondos[estado], textos[estado]); // funcion de fondo y texto
   if (haybotones == 1) {
     botones(textos_b[numbotonA], textos_b[numbotonB]);
   }
   
   if (estado == 0){
     botoncontinuar("EMPEZAR");
   numbotonA=0;
 numbotonB=1;}
   if (estado == 1){
     botoncontinuar("CONTINUAR");}
   if (estado == 3){
   botoncontinuar("REINICIAR");}
   if (estado == 5){
     botoncontinuar("REINICIAR");}
   if (estado == 6){
     botoncontinuar("CONTINUAR");}
   if (estado == 7){
     botoncontinuar("CONTINUAR");}
   if(estado == 9){
     botoncontinuar("REINICIAR");}
   if(estado == 11){
     botoncontinuar("REINICIAR");}
   if(estado == 12){
     botoncontinuar("REINICIAR");}
  
  
}
void mousePressed(){
  // pantalla 0
  if (estado == 0){
    if (mouseX> 230 && mouseX< 380 && mouseY > 10 && mouseY< 60){ // boton EMPEZAR
      haybotones = 0;
      println("cambia a 1");
      estado = 1;
    avanzo = 0;}}
  
  // pantalla 1
  if (estado == 1){
    if (mouseX> 230 && mouseX< 380 && mouseY > 10 && mouseY< 60){ // boton CONTINUAR
      if (avanzo == 1){
      println("cambia a 2");
      estado = 2;
    haybotones= 1;}
    avanzo = 1;}}
    
  // pantalla2
  if (estado == 2) {  
    if (tocabotonA(20, 270, 320, 420)){ // boton A
        haybotones = 1;
        println("cambia a 4");
        estado = 4;
        avanzo = 0;
      }
   if(mouseX> 330 && mouseX< 580 && mouseY > 320 && mouseY< 420){ // boton B
     haybotones = 0;
     println("cambio a 3");
     estado = 3;
   }}
  
  // pantalla 3
  if (estado == 3){
    if (mouseX> 230 && mouseX< 380 && mouseY > 10 && mouseY< 60){ // boton REINICIAR
      haybotones = 0;
      println("cambia a 0");
      estado = 0;
    }}
  
  // pantalla 4
  if (estado == 4) {  
    if(tocabotonA(20, 270, 320, 420)) { // boton 
        numbotonA = numbotonA + 2;
        numbotonB = numbotonB +2;
        haybotones = 1;
        if (avanzo == 1){
        println("cambia a 5");
        estado = 5; 
        haybotones= 0;
    }
  avanzo = 1;}
    if (mouseX> 330 && mouseX< 580 && mouseY > 320 && mouseY< 420){ // boton B
     haybotones = 0;
     println("cambia a 6");
     estado = 6;
     }}
     
  //pantalla 5
  if (estado == 5){
    if (mouseX> 230 && mouseX< 380 && mouseY > 10 && mouseY< 60){ // boton REINICIAR
    avanzo= 0;
      haybotones = 0;
      println("cambia a 0");
      estado = 0;
    }}
 
  // pantalla 6
  if (estado == 6){
    if (mouseX> 230 && mouseX< 380 && mouseY > 10 && mouseY< 60){ // boton CONTINUAR
    println("cambia a 7");
    avanzo = 0;
    estado = 7;}}
   
  // pantalla 7
  if (estado == 7){
   if (mouseX> 230 && mouseX< 380 && mouseY > 10 && mouseY< 60){ // boton CONTINUAR
    println("cambia a 8");
    numbotonA++; 
    numbotonB++; 
    if (avanzo == 1){
    estado = 8;
    }
    avanzo = 1;
}}


  // pantalla 8
  if(estado ==8){
    haybotones = 1;
    avanzo =0;
    if (tocabotonA(20, 270, 320, 420)){ // boton A
        println("cambia a 9");
        estado = 9;
      }
   if(mouseX> 330 && mouseX< 580 && mouseY > 320 && mouseY< 420){ // boton B
     println("cambio a 10");
     estado = 10;
  }}
  
  // pantalla 9
  if(estado == 9){
    avanzo =0;
    haybotones=0;
    if (mouseX> 230 && mouseX< 380 && mouseY > 10 && mouseY< 60){ // boton REINICIAR
      println("cambia a 0");
      estado = 0;
    }}
    
  // pantalla 10
  if (estado == 10){
    haybotones=1;
    numbotonA = numbotonA +2;
    numbotonB = numbotonB +2;
  if (tocabotonA(20, 270, 320, 420)){ // boton A
        println("cambia a 11");
        haybotones=0;
       estado = 11;
      }
   if(mouseX> 330 && mouseX< 580 && mouseY > 320 && mouseY< 420){
     if (avanzo==1){// boton B
     haybotones=0;
     println("cambio a 12");
    estado = 12;}
    avanzo =1;
   }}
   
   // pantalla 11
   if (estado == 11){
     haybotones =0;
    if (mouseX> 230 && mouseX< 380 && mouseY > 10 && mouseY< 60){ // boton REINICIAR
      println("cambia a 0");
      estado = 0;
     
  }}
  // pantalla 12
  if (estado == 12){
     haybotones =0;
    if (mouseX> 230 && mouseX< 380 && mouseY > 10 && mouseY< 60){ // boton REINICIAR
      println("cambia a 0");
      estado = 0;
    }}
    
}
     
