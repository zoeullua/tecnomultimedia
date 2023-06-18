float ancho1= 558;
float ancho2= 638;

void funcionlineasmedio(){
  rectMode(CORNER);
  strokeWeight(1);
  
  rect (ancho1, 0, 80, ancho2);
  
  
  
  strokeCap(SQUARE);
  for (int i  = 14; i<140; i+= 20){
    strokeWeight(12);
    line(ancho1, i, ancho2, i);
    line(ancho1, i+252, ancho2, i+252);
    
  }
}
