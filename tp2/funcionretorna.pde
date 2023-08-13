boolean funcionretorna(float x2, float y2, float r){  // funcion con parametros que retorna valor
  float distancia;
  
  rectMode(CENTER);
  distancia = dist( mouseX, mouseY,  x2, y2);  //uso de dist
  r = r / 2;
  return (distancia < r);}
