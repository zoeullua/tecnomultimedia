// tp de Zoe Ullua, comision 3
// legajo 94705/3
// tp 2

// NOTA: Hola profe, no pude terminar el tp, por atrasarme con otras materias y por una muy mala organización de mi
// parte. Se que obviamente no cumplo con los requisitos del tp, pero lo subo ya que desconozco los criterios para
// poder acceder al recuperatorio. Y al desconocerlos, prefiero entregar al menos esto a nada, en caso de que influya
// el no entregar.


PImage foto;
float valor= 1;

void setup(){
foto = loadImage("data/fototp2.jpg");
size(800, 400);
background(255);
}

void draw(){
 // agrego foto
image(foto, 0,0, 400, 400);

funcionfondo();

funcionlineasmedio();
}
