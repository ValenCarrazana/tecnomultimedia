class Juego {
  int estadoID;
  Pantalla pantalla;
  Boton botonPrincipal; 
  Rectangulo []  rectangulo;
  Personaje Gnegro;


  Juego() {
    this.botonPrincipal = new Boton(this, width/2, height/2, width/5, "Principal");
    this.Gnegro = new Personaje ();
    this.rectangulo = new Rectangulo[30];
    this.construirRects();
    this.pantalla = new Pantalla(this.botonPrincipal, this.rectangulo, this.Gnegro);
    this.estadoID = 1;
  }


  void dibujar() {
    this.pantalla.dibujar(this.estadoID);
  }


    void construirRects() {
    for (int i = 0; i < 30; i++) {
      this.rectangulo[i] = new Rectangulo();
    }
    
    
  }
    void teclado (){
    
  if (key == 'd' || key == 'D' )
    this.Gnegro.moverDerecha();

  if (key == 'a'|| key == 'A' )
    this.Gnegro.moverIzquierda();
}
  }
