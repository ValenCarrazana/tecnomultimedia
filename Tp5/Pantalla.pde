class Pantalla {
  Boton botonPrincipal;
  Personaje Gnegro;
  Rectangulo []  rectangulo ;


  Pantalla(Boton botonPrincipal, Rectangulo []  rectangulo, Personaje Gnegro) {
    this.botonPrincipal = botonPrincipal;
    this.rectangulo = rectangulo;
    this.Gnegro = Gnegro;
 
  }

  void dibujar(int estadoID) {
    if (estadoID == 0) {
      this.dibujarPantallaPrincipal();
    } else  if (estadoID == 1) {
      this.dibujarPantallaPlay();
    }
  }

  void dibujarPantallaPrincipal() {
    push();
    background(#FFF0F0);
    this.botonPrincipal.dibujar();
    pop();
  }

  void dibujarPantallaPlay() {
    background(#FFF0F0);
    this.dibujarArregloDeRects();
    this.Gnegro.dibujar();
    this.Gnegro.moverDerecha();
    this.Gnegro.moverIzquierda();
  }


    void dibujarArregloDeRects() {
    for (int i = 0; i < 30; i++) {
      this.rectangulo[i].dibujar();
    }
}
}
