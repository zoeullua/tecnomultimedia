PImage foto1;
PImage foto2;
PImage foto3;
PFont fuente1;
PFont fuente2;
PFont fuente3;
String estado= "pantalla1";
int contador = 0;
float TamLetra = 15;
float CoordX = 0;
float Opacidad =200;
float CoordY= 500;

void setup(){
  background(0);
  size(640, 480);
  frameRate(30);
  foto1 = loadImage("fotoo4.jpg");
  foto2 = loadImage("fotoo2.jpg");
  foto3 = loadImage("fotoo3.jpg");
  fuente1= loadFont("Segoe.vlw");
  fuente2= loadFont("ComicSans.vlw");
  fuente3= loadFont("Impact.vlw");
}

void draw(){
  
  
  
  // PANTALLA 1;
  
  if(estado == "pantalla1"){
    image(foto1, 0,0);
    TamLetra = TamLetra+0.2;
    textSize(TamLetra);
    text("Obra 1: \n Lugar: Medialab Matadero, Madrid \n Muestra Infectos", 50, 100);
    contador++;
    if(contador >= 200){
      estado = "pantalla2";
      contador = 0;
    }
  }
  
  //PANTALLA 2;
  else if(estado == "pantalla2"){
    contador++;
    textSize(30);
    textFont(fuente2);
    image(foto2, 0, 0);
    CoordX= CoordX+2;
    text("Obra 2: \n Lugar: Centro Cultural Recoleta, BsAs \n Muestra La serpiente y el Jaguar", CoordX, 100);
    if(contador >= 200){
      estado = "pantalla3" ;
      contador = 0;
    }
  }
  
 
  //PANTALLA 3;
  else if(estado == "pantalla3"){
    contador++;
    CoordX= CoordX-2.5;
    CoordY=CoordY-2.5;
    image(foto3, 0, 0);
    textFont(fuente3);
    text("Obra 3: \n Lugar: Museo de Arte Digital, París \n Muestra en honor a Gustav Klimt ", CoordX, CoordY);
    if(contador>= 200){
      estado = "pantallareinicio";
    }
  }
  
  //PANTALLA DE BOTON;
  else if(estado == "pantallareinicio"){
    fill(0);
    rect(0, 0, 640, 480);
    
    fill(255, 0, 0);
    rect(550, 380,100,100);
    textFont(fuente1);
    textSize(30);
      text("TOQUE EL BOTON \n PARA REINICIAR", 300, 100);
  }
}


void mousePressed(){
  if (estado == "pantallareinicio"){
    if(mouseX>550 && mouseX<640 &&   mouseY>380 && mouseY<480){
      estado = "pantalla1";
      contador= 0;
      fill(255);
      TamLetra=0;
      CoordX=0;
      CoordY=15;
    }}
  }
