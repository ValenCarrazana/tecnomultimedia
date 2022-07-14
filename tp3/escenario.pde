void escenario () {
  background (100, 100, 100);


  //puesto de feria
  println(mouseX, mouseY);
  noStroke ();
  fill (359, 98, 99);
  rect (0, 450, 600, 200);
  rect (0, 0, 600, 50);
  rect (0, 0, 50, 600);
  rect (550, 0, 50, 600);

  //estante

  fill (26, 85, 30);
  rect (50, 150, 500, 20);
  rect (50, 290, 500, 20);
  rect (50, 420, 500, 20);


  //lineas del techo
  for (int i = 0; i < width; i += 35) {
    stroke(359, 0, 100);
    strokeWeight(20);
    line(i, 0, i, 50);
   

  }
}

//---------------FUNCIONES CON PARAMETROS---------------------------

void MiTexto(String Escribirtexto, float tam, float x, float y, float a, float b, float c) {
    pushStyle();
    textSize(tam);
    fill (a,b,c);
    text (Escribirtexto, x, y);
    popStyle();
  
}
void MiTextoFondo(String Escribirtexto, float tam, float x, float y, float a, float b, float c,float c1, float c2, float c3 ) {
    pushStyle();
    background (c1,c2,c3);
    textSize(tam);
    fill (a,b,c);
    text (Escribirtexto, x, y);
    popStyle();
}
