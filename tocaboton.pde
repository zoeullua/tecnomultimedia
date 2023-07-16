boolean tocabotonA(int x, int y, int ancho, int alto){ // funcion con parametro que retorna valor
 return (mouseX>x && mouseX < ancho && mouseY > y && mouseY < alto);
}

// (mouseX>20 && mouseX < 270 && mouseY > 320 && mouseY < 420)

boolean tocacontinuar(int x, int y, int ancho, int alto){
  return (mouseX>x && mouseX< ancho && mouseY > y && mouseY < alto);
}
