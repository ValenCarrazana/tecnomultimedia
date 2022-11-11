class Boton {
  int x, y, tam;
  String tipo;
  boolean deteccion;
  Juego juego;
  Boton(Juego juego, int x, int y, int tam, String tipo) {

    rectMode (CENTER);
    textAlign (CENTER);
    noStroke();
    this.juego = juego;
    this.tipo = tipo;
    this.x = x;
    this.y = y;
    this.tam = tam;
  }

  void dibujar() {
          println(deteccion);
    if (this.tipo.equals("Principal")) {
      push();
      
      fill(#FFC9C9);
      rect(this.x, this.y, this.tam, this.tam);
      
      fill(0);
      text("Presiona la tecla e para empezar", this.x + this.tam/40, this.y + this.tam/20);
      pop();
    } 

  }

  void deteccion() {
      if (mouseX > x && mouseX < x+ tam && mouseY > y && mouseY < y + tam ) {
      this.deteccion = true;
    } else {
      this.deteccion = false;
    }
  }

  void teclado () {
    if (key == 'e' && this.juego.estadoID == 0 && this.tipo.equals("Principal")) {
      this.juego.estadoID = 1;


  }
  }
  
  }
