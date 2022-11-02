class Juego {
  int estadoID;
  Pantalla pantalla;
  Boton botonPrincipal; 
  Caida []  Pez;
  Personaje Gnegro;
  int suma;
  boolean recolecta;


  Juego() {
    this.botonPrincipal = new Boton(this, width/2, height/2, width/2, "Principal");
    this.Gnegro = new Personaje ();
    this.Pez = new Caida[30];
    this.construirRects();
    this.pantalla = new Pantalla(this.botonPrincipal, this.Pez, this.Gnegro);
    this.estadoID = 0;

  }

void colision (){
      for (int i = 0; i < 30; i++) {
  if ( Gnegro.x <  Pez[i].x &&
  Gnegro.x+Gnegro.tam > Pez[i].x+Pez[i].tam &&
  Gnegro.y - Gnegro.tam < Pez[i].y && Pez[i].y < height)
 // && Gnegro.y >  Pez[i].y && Gnegro.y+Gnegro.tam < Pez[i].y+Pez[i].tam )
  recolecta = true;
  suma++;
 // Pez[i].y = -height;
}
      }

  void dibujar() {
    this.pantalla.dibujar(this.estadoID);
    println(suma);
  }


    void construirRects() {
    for (int i = 0; i < 30; i++) {
      this.Pez[i] = new Caida();
    }
    
  }
    void teclado (){
      
    botonPrincipal.teclado();
    
  if (key == 'd' || key == 'D' )
    this.Gnegro.moverDerecha();

  if (key == 'a'|| key == 'A' )
    this.Gnegro.moverIzquierda();
}
  }
