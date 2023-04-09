PImage foto;
void setup(){
  size(800,400);
  foto = loadImage("fotomia.jpeg");
}
void draw(){
  background(78,90,77); // fondo
  image(foto, 0, 0, 400,400); // inserto foto
  strokeWeight(4);
  fill(0); //color negro
  ellipse(635, 120, 300, 340); // pelo
  fill(255);
 ellipse(480, 170, 86, 120);
 fill(255, 214, 239);
 ellipse(500, 170, 86, 120);

   fill(234,204,185); // color piel
   rect(410,330, 440, 200, 200); // hombros
   rect(570, 200, 160, 190, 100); // cuello
    line(505, 330, 485, 400); // remera izq
 line(509, 330, 489, 400); //remera izq x2
 line(790, 330, 770,400); // remera izq
 line(795, 330, 775, 400); // remera derechax2
   rect(500,240, 60, 300); // mano
 
  ellipse(620, 150, 280, 340); // cara

  
  ellipse(520, 119, 50, 35); // parpado izq
  ellipse(670, 119, 50, 35); // parpado derecho
 fill(255); // blanco
  ellipse(520, 125, 50, 25); // ojo izq
  ellipse (670, 125, 50, 25); // ojo der
  fill(0); // negro 
 ellipse(525, 125, 27, 25); // pupila izq
 ellipse(673, 125, 27, 25); // pupila der
 line(488, 89, 503, 80); // ceja izq arriba
 line(491, 92, 507, 84); // ceja izq arriba2
 line(641, 89, 687, 78); // ceja der arriba
 line(645, 91, 691,81); // ceja der arriba2
 line(503,80, 543, 84); // ceja izq abajo
 line(507,84, 547, 88); // ceja izq abajo2
 line(688,78, 718, 83); // ceja der abajo
 line(691,82, 722, 87); // ceja der abajo2
 line(550, 210, 576, 210); // nariz linea abajo
 stroke(170); // gris
 line(550, 210, 550, 215);
 line(565, 210, 565, 215); // arito nariz x2
 line(518,360, 534, 360); // anillo
 stroke(0); // negro
 line(688, 0, 752, 227); // pelo mechon
 line(692,0, 756, 229); // pelo mechon
 triangle(680,0, 755,110, 750, 20); // pelo
 line(510,30, 480,227); // pelo mechon
 line(507, 26, 477, 223);
 fill(255,214,239); // rosa
 ellipse(765, 170, 86, 120); // auris
 fill(255); // blanco
 ellipse(785, 170, 86, 120); // auris
line(518, 270, 518, 370); // dedo
line(534, 284, 534, 375); // dedo2
fill(245,143,155);
ellipse(578, 250, 60, 30);
line(538,242, 610, 256); // boca

 

 
noFill();
 bezier(565,120, 569,140, 530,210 ,550,210); // nariz linea larga
}
