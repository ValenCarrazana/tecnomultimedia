class Personaje {
  float x, y, tam;
  int vel;
  PImage gato;
  Personaje Gnegro;

  Personaje () {
    rectMode (CENTER);
    textAlign (CENTER);
    noStroke();
    x = 300;
    y = 500;
    tam = 100;
    vel = 10;
    gato = loadImage ("gato.png");
  }
 

  void dibujar () {
    fill (#503150);
    image (gato, x, y, tam, tam);
  }

  void moverDerecha() {
    this.x+=vel;
    if ( this.x >= 550 )
      this.x =  550;
  }
  void moverIzquierda() {
    this.x-=vel;
    if ( this.x <= 50 )
      this.x =  50;
  }
}
