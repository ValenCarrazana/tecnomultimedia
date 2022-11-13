class Pantalla {

  Pantalla pantalla;
  Boton botonPrincipal;
  Personaje Gnegro;
  Caida []  Pez ;
  Caida []  PezObstaculo ;
  Contador Puntos; 
  Contador Tiempo;
  PImage fondo;


  Pantalla(Boton botonPrincipal, Caida []  Pez, Caida []  PezObstaculo, Personaje Gnegro, Contador Puntos, Contador Tiempo) {
    this.botonPrincipal = botonPrincipal;
    this.Pez = Pez;
    this.PezObstaculo = PezObstaculo;
    this.Gnegro = Gnegro;
    this.Puntos = Puntos;
    this.Tiempo = Tiempo;

    fondo = loadImage ("fondo.jpg");
  }

  void dibujar(int estadoID) {
    if (estadoID == 0) {
      this.dibujarPantallaPrincipal();
    } else  if (estadoID == 1) {
      this.dibujarPantallaPlay();
    }
    if (estadoID == 1 && juego.suma == 10) {
      this.dibujarPantallaGanaste();
    }
    if (estadoID == 1 && juego.suma <10 && juego.timer/60 >15 ) {
      this.dibujarPantallaPerdiste();
    }
  }

  void dibujarPantallaPrincipal() {
    push();
    background(fondo);
    this.botonPrincipal.dibujar();
    pop();
  }

  void dibujarPantallaPlay() {
    background(fondo);
    this.Puntos.dibujarContadorPuntos();
    this.Tiempo.dibujarContadorTiempo();
    this.dibujarArregloDePeces();
    this.dibujarArregloDePecesPodridos();
    this.Gnegro.dibujar();
    this.Gnegro.moverDerecha();
    this.Gnegro.moverIzquierda();
  }

  void dibujarPantallaGanaste() {
    background(fondo);
    push();
    background(fondo);
    this.botonPrincipal.dibujar();
    pop();
  }


  void dibujarPantallaPerdiste() {
    background(#FFF0F0);
    text ("perdiste", 100, 100, 300);
  }



  void dibujarArregloDePeces() {
    for (int i = 0; i < 30; i++) {
      this.Pez[i].dibujar();
    }

    void dibujarArregloDePecesPodridos() {
      for (int i = 0; i < 20; i++) {
        this.PezObstaculo[i].dibujar();
      }
    }
  }
}
