

class Contador {
  int x, y, tam, s;



  Contador(  int s, int x, int y, int tam) {
    rectMode (CENTER);
    textAlign (CENTER);
    noStroke();
    this.x = x;
    this.y = y;
    this.s = s;
    this.tam = tam;
  }

  void dibujarContadorPuntos() {
    pushStyle();

    fill (255);
    text( "Peces recolectados", 300, 40);

    fill(#9DB8FF);
    rect(this.x, this.y, 100, 50);

    fill(0);
    text(str(juego.suma+juego.resta), this.x + this.tam/40, this.y + this.tam/20);
    popStyle();
  } 

  void dibujarContadorTiempo() {
    pushStyle();
    fill (255);
    text( "tiempo", 70, 40);

    fill(#9DB8FF);
    rect(this.x, this.y, 100, 50);

    fill(0);
    text(str(juego.timer/60), this.x + this.tam/40, this.y + this.tam/20);
    popStyle();
  }
}
