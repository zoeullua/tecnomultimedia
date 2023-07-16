void botones (String textb_A, String textb_B){ // funcion con parametro que no retorna valor
  fill(255);
  textSize(20);
  rectMode(CORNER);
  rect(20, 320, 250, 100); // boton a
  rect(330, 320, 250, 100); // boton b
  fill(0);
  text(textb_A, 120, 360);
  text(textb_B, 450, 360);
}

void botoncontinuar(String texto){
  fill(255);
  rect (230, 10, 150, 50);
  fill(0);
  text(texto, 305, 30);
}
