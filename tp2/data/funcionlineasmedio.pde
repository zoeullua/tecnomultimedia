// hago las lineas verticales y horizontales del medio de la obra
void funcionlineasmedio(float colores){  // funcion con parametros que no retorna valor

  rectMode(CENTER);
  strokeWeight(0);
  fill(colores);
  translate(600,200);
  
  // delimito con un rectangulo donde iran las lineas
  rect (0, 0, 80, 600); // horizontales, arriba
  rect (0, 0, 400, 80);  // verticales, medio

  strokeWeight(13);
     strokeCap(SQUARE); // hago los bordes no redondeados
          // hago el for de las lineas paralelas horizontales y verticales
  for (int i=-185; i<-10; i+= 25){
    for (int b= 33; b<208; b+= 25){
    line(i, -40, i, 40);
    line(b, -40, b, 40);
    line(-40, i, 40, i);
    line(-40, b, 40, b);
  }}

 rect(0, 0, 10, 10);
 }
