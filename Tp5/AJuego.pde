class Juego {
  
  Pantalla pantalla;
  Boton botonPrincipal; 
  Caida []  Pez;
  Personaje Gnegro;
  Contador Puntos;
 
   int estadoID;
  int suma;
  boolean recolecta;
  


  Juego() {
    this.botonPrincipal = new Boton(this, width/2, height/2, width/2, "Principal");
    this.Gnegro = new Personaje ();
    this.Puntos = new Contador(juego, this.Puntos, suma , width/2, height/2, width/2);
    this.Pez = new Caida[30];
    this.construirPeces();
    this.pantalla = new Pantalla(this.botonPrincipal, this.Pez, this.Gnegro, this.Puntos);
    this.estadoID = 0;

  }

void colision () {
    for (int i = 0; i < 30; i++) {
      if ( Pez[i].x + Pez[i].tam /2 < Gnegro.x+Gnegro.tam /2 &&
        Pez[i].x - Pez[i].tam /2 > Gnegro.x-Gnegro.tam /2 &&
        Pez[i].y - Pez[i].tam /2 > Gnegro.y-Gnegro.tam /2 && 
        Pez[i].y - Pez[i].tam /2 < height) {
        recolecta = true;
        suma++;
         Pez[i].y = -height;
        println("Colisionando");
 
      }
    }
}
  

  void dibujar() {
    this.pantalla.dibujar(this.estadoID);
    println(suma);
  }


    void construirPeces() {
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
