
void Titulo () {

  //RECT ROJO
  rectMode(CENTER);
  fill (255, 0, 0);
  noStroke();
  rect (posX+1, posY+1, 500, 40);

  //texto
  textFont(Mifuente);
  textSize (100);
  fill (255, 255, 0);
  text ("TOY STORY", posX, posY);


  //sube texto y rect
  if (posY <= height) {
    posY= posY-vel;
  }

  //imagen
  image (imagen1, posX, posI, 1000, 610);

  //sube imagen
  if (posI <= height) {
    posI= posI-vel;
  }
}
