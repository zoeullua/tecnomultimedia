//hago el fondo, cuadrados

void funcionfondo(){
  rectMode(CENTER);
  strokeWeight(12);
  fill(255);
  for (int t = 388; t > 0; t-=39){
    rect(599, 200, t, t);
}
}
