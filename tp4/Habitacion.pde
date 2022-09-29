
class Habitacion {
  float y, a, x;
  Personaje gato;
  Pecera p1;
  Pecera p2;
  Pecera p3;
  Pecera p4;
  Pecera p5;
  Pecera p6;
  Pecera p7;
  Pecera p8;
  Pecera p9;
  Pecera p10;

  Habitacion () {
    y = 100;
    a = 420;
    x = 80;
    gato = new Personaje();
    p1 = new Pecera();
    p2 = new Pecera();
    p3 = new Pecera();
    p4 = new Pecera();
    p5 = new Pecera();
    p6 = new Pecera();
    p7 = new Pecera();
    p8 = new Pecera();
    p9 = new Pecera();
    p10 = new Pecera();
  }

  void crear() {

    background(#FFF8D6);

    pushStyle();
    strokeWeight(5);
    stroke (#39290A);
    fill (191, 249, 255, 180);
    rect ( x, y, a, 330);
    popStyle();
    
    pushStyle();
    fill (0);
    textSize(20);
   text( "Presione A o D para mover al gatito", 120, 70);
    popStyle();
    
 
    //pescera base
    pushStyle();
    noStroke();
    fill (#39290A);
    rect ( x, 400, a, 30);
    rect ( x, y, a, 30);
    popStyle();
  }

  void llamarClases() {
    gato.dibujar();
    p1.dibujar();
    p2.dibujar();
    p3.dibujar();
    p4.dibujar();
    p5.dibujar();
    p6.dibujar();
    p7.dibujar();
    p8.dibujar();
    p9.dibujar();
    p10.dibujar();
  }
  
  void teclado (){
    
  if (key == 'd' || key == 'D' )
    gato.moverDerecha();

  if (key == 'a'|| key == 'A' )
    gato.moverIzquierda();
}
  }
