void pantallabase (PImage fotodefondo, String mitexto){ 
  image(fotodefondo, 0, 0);
  fill (255);
  rect(0, 430, width, 300);
  fill(0);
  textSize(25);
  textLeading(40);
  textAlign(CENTER, CENTER);
  text(mitexto, 0, height/3*2, width, height/3);
}
