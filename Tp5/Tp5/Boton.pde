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




  void teclado () {
    if (juego.estadoID == 0 && key == 'e' || key == 'E' ) {
      juego.estadoID = 1;
    }

    if (juego.estadoID == 1 && key == 'h' || key == 'h') {
      juego.estadoID = 2;
    }

    if (juego.estadoID == 3 && key == 'p' || key == 'p') {
      juego.reiniciar();
    }
    
      if (juego.estadoID == 4 && key == 'p' || key == 'p') {
      juego.reiniciar();
    }
  }
}
