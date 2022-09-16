//declaro mis objetos
Personaje gato;
Obstaculo perrito ;
Objetivo wiskas ;

// creo mis clases
void setup () {
  size (600, 600);
  gato = new Personaje();
  perrito = new Obstaculo();
  wiskas = new Objetivo();
}

//inicio a mis objetos
void draw (){
     background(200,12,100);
  gato.dibujar ();
  perrito.dibujar();
  wiskas.dibujar();

}

// creo las condiciones para que los metodos se ejecuten con cierta tecla
void keyPressed (){
  if (key == 'd' || key == 'D' )
 gato.moverDerecha();
 
 if (key == 'a'|| key == 'A' )
 gato.moverIzquierda();
 
 if (key == 'w'|| key == 'W' );
 gato.moverArriba();
 
 if (key == 's'|| key == 'S' );
 gato.moverAbajo();

}
