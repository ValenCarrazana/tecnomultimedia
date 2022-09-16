
//creo la clase objetivos
class Objetivo {
  float x, y, tam;
  PImage wiskas;
  
 
//constructor
Objetivo () {
    x = 380;
    y = -20;
    tam = 200;
    wiskas = loadImage ("wiskas.png");
  }

//metodos
void dibujar() {
    image (wiskas, x, y, tam, tam);
  }
  
}
