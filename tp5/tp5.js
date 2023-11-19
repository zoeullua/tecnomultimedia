// TP5 Tecno1. Zoe Ullua, legajo 94705/3. Comision 3
// Minijuego adaptado a la Bella y la Bestia.
// Link del video explicativo: https://youtu.be/jLcwP4wMRYA?si=DE_1wNwKycV-3z6A

let juego;

function setup() {
 createCanvas(800,600);
  juego = new Juego();
}


function draw() {
 juego.actualizar(); 
}

function keyPressed(){
 juego.keyPressed(); 
}

function mousePressed(){
  juego.mousePressed();
}

function preload(){
  fotobella = loadImage("assets/fotobella.png");
  fotoenemigos = loadImage("assets/fotoenemigos.png");
  fotochip = loadImage("assets/fotochip.png");
  fotobestia = loadImage("assets/fotobestia.png");
  fotogaston = loadImage("assets/fotogaston.png");
  fondo = loadImage("assets/fondo1.jpg");
}
