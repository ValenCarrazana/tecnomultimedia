

class Contador {
  int x, y, tam, s;
  Juego juego;
Contador Puntos;
 
 
 Contador(Juego juego, Contador Puntos, int s, int x, int y, int tam) {
   rectMode (CENTER);
   textAlign (CENTER);
    noStroke();
    this.juego = juego;
    this.Puntos = Puntos;
    this.x = x;
    this.y = y;
    this.s = s;
    this.tam = tam;
  }

  void dibujar() {
      pushStyle();
      fill(255);
      rect(this.x, this.y, this.tam, this.tam);
      
      fill(0);
      text(s, this.x + this.tam/40, this.y + this.tam/20);
      popStyle();
    } 
}
