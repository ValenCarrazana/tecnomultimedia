class Pantalla {

  Pantalla pantalla;
  Boton botonPrincipal;
  Personaje Gnegro;
  Caida []  Pez ;
  Caida []  PezObstaculo ;
  Contador Puntos; 
  Contador Tiempo;
  PImage fondo, Gnaste, cartelito, Prdiste;



  Pantalla(Boton botonPrincipal, Caida []  Pez, Caida []  PezObstaculo, Personaje Gnegro, Contador Puntos, Contador Tiempo) {
    this.botonPrincipal = botonPrincipal;
    this.Pez = Pez;
    this.PezObstaculo = PezObstaculo;
    this.Gnegro = Gnegro;
    this.Puntos = Puntos;
    this.Tiempo = Tiempo;

    fondo = loadImage ("fondo.jpg");
    cartelito = loadImage ("cartel.png");
    Gnaste = loadImage ("youwin.png");
    Prdiste = loadImage ("youlost.png");
  }

  void dibujar() {

    //pantallas  
    if (juego.estadoID == 0) {
      this.dibujarPantallaPrincipal();
    }

    if (juego.estadoID == 1) {
      this. dibujarPantallaIntroduccion();
    }

    if (juego.estadoID == 2) {
      this.dibujarPantallaPlay();
    }
    //condiciones

    if (juego.estadoID == 2 && juego.suma+juego.resta == 5 && juego.timer/60 <20) {
      juego.estadoID = 3;
      // juego.reiniciar();
    }


    if (juego.estadoID == 2 && juego.suma+juego.resta <5 && juego.timer/60 >20 ) {
      juego.estadoID = 4;
      //   juego.reiniciar();
    }


    if (juego.estadoID == 3) {
      this.dibujarPantallaGanaste();
    }

    if (juego.estadoID == 4) {
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
    image (Gnaste, 120, 20, 400, 500);
    fill(255);
    this.volverajugar();
  }


  void dibujarPantallaPerdiste() {
    image (Prdiste, 120, 20, 400, 500);
    fill(255);
    this.volverajugar();
  }


  void dibujarPantallaIntroduccion() {
    background(fondo);

    fill(#FFC9C9);
    rect( 310, 200, 450, 200, 50);

    fill(0);
    text ("¿Como Jugar?", width/2, height/4, 500);
    text ("¿Como Jugar?", width/2, height/4, 500);

    push();
    textSize(12);
    text ("Este gatito se encuentra muy hambriendo, debe comer 5 pescados antes  \n  de que pasen 20 segundos, pero necesita de tu ayuda para poder\n reconocer los peces ricos de los peces podridos porque estos no lo \nllenan e incluso lo dejan mas hambriento aun", 310, 200, 500);
    pop();

    fill(255);
    image (cartelito, 178, 300, 250, 250);
    push();
    textSize(15);
    text ("Comenzar", width/2, 440);
    pop();

    push();
    textSize(13);
    text ("presione la tecla h para empezar a jugar", 300, 490);
    pop();
  }

  void volverajugar() {
    image (cartelito, 178, 350, 250, 250);

    push();
    textSize(15);
    text ("Volver a jugar", width/2, 490);
    pop();

    text ("presione la tecla p para volver a jugar", 300, 545);
  }




  void dibujarArregloDePeces() {
    for (int i = 0; i < 30; i++) {
      this.Pez[i].dibujar();
    }
  }

  void dibujarArregloDePecesPodridos() {
    for (int i = 0; i < 20; i++) {
      this.PezObstaculo[i].dibujar();
    }
  }
}
