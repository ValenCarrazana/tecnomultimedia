//creo la clase obstaculo
class Obstaculo {
  float x, y, tam;
  PImage perrito;

//constructor
Obstaculo () {
    x = 150;
    y = 200;
    tam = 200;
    perrito = loadImage ("perro.png");
  }
  
//metodos

void dibujar() {
    image (perrito, x, y, tam, tam);
  }
  
}
