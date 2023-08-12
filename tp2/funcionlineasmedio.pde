// hago las lineas verticales y horizontales del medio de la obra
void funcionlineasmedio(float colores){  // funcion con parametros que no retorna valor

  rectMode(CENTER);
  strokeWeight(0);
  fill(colores);
  
  // delimito con un rectangulo donde iran las lineas
  rect (600, 0, 80, 800); // horizontales, arriba
  rect (600, 200, 400, 80);  // verticales, medio

  strokeWeight(13);
     strokeCap(SQUARE); // hago los bordes no redondeados
          // hago el for de las lineas paralelas horizontales
  for (int i  = 18; i<144; i+= 25){
    line(560, i, 640, i);
    line(560, i+240, 640, i+240);}
    
    // hago el for de las lineas paralelas verticales
 for (int e = 417; e<567; e+= 25){
    line(e,  160, e, 240);
    line(e+240, 160, e+240, 240);

    
 }}
