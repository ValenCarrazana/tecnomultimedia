class Juego {
  int estadoID;
  Pantalla pantalla;
  Boton botonPrincipal; 
  Caida []  Pez;
  Personaje Gnegro;


  Juego() {
    this.botonPrincipal = new Boton(this, width/2, height/2, width/2, "Principal");
    this.Gnegro = new Personaje ();
    this.Pez = new Caida[30];
    this.construirRects();
    this.pantalla = new Pantalla(this.botonPrincipal, this.Pez, this.Gnegro);
    this.estadoID = 0;
  }


  void dibujar() {
    this.pantalla.dibujar(this.estadoID);
  }


    void construirRects() {
    for (int i = 0; i < 30; i++) {
      this.Pez[i] = new Caida();
    }
    
  }
    void teclado (){
    
  if (key == 'd' || key == 'D' )
    this.Gnegro.moverDerecha();

  if (key == 'a'|| key == 'A' )
    this.Gnegro.moverIzquierda();
}

void clicked (){
  this.botonPrincipal.clicked();
}
  }
