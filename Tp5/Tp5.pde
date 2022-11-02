
Juego juego;

void setup() {
  size(600, 600);
  juego = new Juego();
}
void draw() {
  juego.dibujar();
  juego.colision();
}

void keyPressed () {
    juego.teclado();
}
