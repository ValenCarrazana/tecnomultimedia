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
