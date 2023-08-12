//hago el fondo, cuadrados

void funcionfondo(int grosor){ // funcion con parametro que no retorna valor
  rectMode(CENTER);
  strokeWeight(grosor);
  fill(255);
  // ciclo for ( iniciacion; condicion de corte; modificacion);
  for (int x = 388; x > 0; x-= 49){
    rect(599, 200, x, x);
}
}
