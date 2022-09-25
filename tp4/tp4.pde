Personaje gato;
Habitacion hb;
Pecera p1;
Pecera p2;
Pecera p3;
Pecera p4;
Pecera p5;

void setup () {
  size (600, 600);

  hb = new Habitacion();
 gato = new Personaje();
 p1 = new Pecera();
  p2 = new Pecera();
   p3 = new Pecera();
    p4 = new Pecera();
     p5 = new Pecera();
}
 void draw (){
   hb.crear();
   hb.llamarClases();
 }


   // creo las condiciones para que los metodos se ejecuten con cierta tecla
void keyPressed (){
  if (key == 'd' || key == 'D' )
 gato.moverDerecha();
 
 if (key == 'a'|| key == 'A' )
 gato.moverIzquierda();
}
