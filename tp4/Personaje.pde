//creo la clase personaje

class Personaje {
  float x, y, tam, vel;
  PImage gato;

//constructor
  Personaje () {
    x = 0;
    y = 500;
    tam = 100;
    vel = 10;
    gato = loadImage ("gato.png");
  }

//metodos
void dibujar() {
    image (gato, x, y, tam, tam);
  }
  
  void moverDerecha(){
    x+=vel;
  }
    void moverIzquierda(){
    x-=vel;
  }


}
