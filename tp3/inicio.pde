
void inicio () {
  background (359, 98, 99);

  //cartel
  fill (26, 85, 30);
  strokeWeight(5);
  rect (50, 80, 500, 450);
  MiTexto ("¿Cómo Jugar?\n Clickea un pato \nhasta que desaparezca\n\nGanas si logras hacerlo \nantes de que se termine el tiempo \n(5 segundos)", 25 ,300, 220, 0, 0, 99);

  //boton estilo
  fill (359, 98, 99);
  noStroke();
  rect (150, 390, 300, 100);
  MiTexto ("Comenzar",35, 300, 430, 0, 0, 99);
}
