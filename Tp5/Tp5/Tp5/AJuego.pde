class Juego {


  Pantalla pantalla;
  Boton botonPrincipal; 
  Caida []  PezObstaculo;
  Caida []  Pez;
  Personaje Gnegro;
  Contador Puntos;
  Contador Tiempo;


  int suma, resta, estadoID, timer;
  boolean recolecta;



  Juego() {
    this.botonPrincipal = new Boton( estadoID, 310, 400, 300);
    this.Gnegro = new Personaje ();
    this.Puntos = new Contador( suma, width/2, height/8, width/8);
    this.Tiempo = new Contador( timer, width/8, height/8, width/8);
    ///////////////////////////////
    this.Pez = new Caida[30];
    this.construirPeces();
    this.PezObstaculo= new Caida[20];
    this.construirPecesPodridos();
    //////////////
    this.pantalla = new Pantalla(this.botonPrincipal, this.Pez, this.PezObstaculo, this.Gnegro, this.Puntos, this.Tiempo);
    this.estadoID = 0;
    this.suma = 0;
    this.resta = 0;
    this.timer =0;
  }

  void colision () {
    for (int i = 0; i < 30; i++) {
      if (Pez[i].x + Pez[i].tam /2 < Gnegro.x+Gnegro.tam /2 &&
        Pez[i].x - Pez[i].tam /2 > Gnegro.x-Gnegro.tam /2 &&
        Pez[i].y - Pez[i].tam /2 > Gnegro.y-Gnegro.tam /2 && 
        Pez[i].y - Pez[i].tam /2 < height) {
        recolecta = true;
        suma++;
        Pez[i].y = -height;
      }
    }

    for (int i = 0; i < 20; i++) {
      if (PezObstaculo[i].x + PezObstaculo[i].tam /2 < Gnegro.x+Gnegro.tam /2 &&
        PezObstaculo[i].x - PezObstaculo[i].tam /2 > Gnegro.x-Gnegro.tam /2 &&
        PezObstaculo[i].y - PezObstaculo[i].tam /2 > Gnegro.y-Gnegro.tam /2 && 
        PezObstaculo[i].y - PezObstaculo[i].tam /2 < height) {
        recolecta = true;
        resta--;
        PezObstaculo[i].y = -height;
        println("Colisionando");
      }
    }
  }


  void dibujar() {
    this.pantalla.dibujar(this.estadoID);
    if (estadoID == 2){
      timer++;
    }
    println(suma);
  }


  void construirPeces() {
    for (int i = 0; i < 30; i++) {
      this.Pez[i] = new Caida("normal");
    }
  }
  void construirPecesPodridos() {
    for (int i = 0; i < 20; i++) {
      this.PezObstaculo[i] = new Caida("obstaculo");
    }
  }

  void teclado () {
    botonPrincipal.teclado();

    if (estadoID==2 && key == 'd' || key == 'D' ) {
      this.Gnegro.moverDerecha();
    }

    if (estadoID==2 && key == 'a'|| key == 'A' ) {
      this.Gnegro.moverIzquierda();
    }
  }

  void reiniciar () {
    this.estadoID = 0;
    this.suma = 0;
    this.resta = 0;
    this.timer =0;
  }
}
