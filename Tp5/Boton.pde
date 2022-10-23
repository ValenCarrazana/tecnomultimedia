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
          
    if (this.tipo.equals("Principal")) {
      push();
      
      fill(#FFC9C9);
      rect(this.x, this.y, this.tam, this.tam);
      
      fill(0);
      text("Iniciar", this.x + this.tam/40, this.y + this.tam/20);
      pop();
    } 

  }

  void deteccion() {
    if (mouseX > this.x && mouseX < this.x + this.tam && mouseY > this.y && mouseY <  this.y + this.tam) {
      this.deteccion = true;
    } else {
      this.deteccion = false;
    }
  }

  void clicked () {
    if (mousePressed && this.deteccion && this.juego.estadoID == 0 && this.tipo.equals("Principal")) {
      this.juego.estadoID = 1;


  }
  }
  
  }
