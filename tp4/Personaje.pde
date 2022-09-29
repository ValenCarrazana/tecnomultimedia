//creo la clase personaje

class Personaje {
  float x, y, tam, vel;
  PImage gato;

//constructor
  Personaje () {
    x = 0;
    y = 500;
    tam = 100;
    vel = 5;
    gato = loadImage ("gato.png");
  }

//metodos
void dibujar() {
    image (gato, x, y, tam, tam);
  }
  
  void moverDerecha(){
    x+=vel;
    if (x >= 400 )
    x =  400;
  }
    void moverIzquierda(){
    x-=vel;
      if (x <= 50 )
    x =  50;
  }


}
