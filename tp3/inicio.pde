
void inicio () {
  background (359, 98, 99);

  //cartel
  fill (26, 85, 30);
  strokeWeight(5);
  rect (50, 80, 500, 450);
  fill (0, 0, 99);
  text ("¿Cómo Jugar?\n Clickea un pato \nhasta que desaparezca\n\nGanas si logras hacerlo \nantes de que se termine el tiempo \n(5 segundos)", 300, 220);

  //boton estilo
  pushStyle();
  fill (359, 98, 99);
  noStroke();
  rect (150, 390, 300, 100);
  fill (0, 0, 99);
  textSize (35);
  text ("Comenzar", 300, 430);
  popStyle();
}
