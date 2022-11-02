class Pantalla {
  Boton botonPrincipal;
  Personaje Gnegro;
  Caida []  Pez ;
  


  Pantalla(Boton botonPrincipal, Caida []  Pez, Personaje Gnegro) {
    this.botonPrincipal = botonPrincipal;
    this.Pez = Pez;
    this.Gnegro = Gnegro;
 
  }

  void dibujar(int estadoID) {
    if (estadoID == 0) {
      this.dibujarPantallaPrincipal();
    } else  if (estadoID == 1) {
      this.dibujarPantallaPlay();
          } else  if (estadoID == 2) {
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
    this.dibujarArregloDePeces();
    this.Gnegro.dibujar();
    this.Gnegro.moverDerecha();
    this.Gnegro.moverIzquierda();
  }
  
 // sumar velocidad random tipo int arreglo de velocidades ???
  
  void dibujarPantallaFinal() {
    background(#FFF0F0);

  }



    void dibujarArregloDePeces() {
    for (int i = 0; i < 30; i++) {
      this.Pez[i].dibujar();
    }
}
}
