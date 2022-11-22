class Boton {
  int x, y, tam, s;
  String tipo;
  PImage logo;

  Boton( int s, int x, int y, int tam) {

    rectMode (CENTER);
    textAlign (CENTER);
    noStroke();

    this.x = x;
    this.y = y;
    this.tam = tam;
    this.s = s;
    logo = loadImage ("marca.png");
  }

  void dibujar() {

    pushStyle();

    fill(#FFC9C9);
    rect(this.x, this.y, this.tam, 50, 100);

    fill(0);
    text("Presiona la tecla e para empezar", this.x + this.tam/40, 390 + this.tam/20);
    popStyle();

    image(logo, 100, 100, 400, 300);
  } 
}
