void Cuadradito () {

  //txt "para reiniciar"

  fill (26, 72, 160);
  rect (500, 140, 280, 100, 28);

  fill (255);
  text ("Para reiniciar", 500, 150);

  //boton no pulsable

  fill (255, 238, 21);
  rect (500, 360, 280, 150, 28);

  fill (random (255), random (0), random (255));
  text ("Pulse la tecla R o I", 500, 370);

  //dibujar boton pulsable

  fill (241, 6, 11);
  rect (500, 560, 280, 150, 28);

  fill (random(120, 255));
  text ("HAGA CLICK AQUI", 500, 570);
}
