
void Directores () {

  //imagen
  image (imagen2, posX, 550+posI, 400, 400);

  //sube imagen
  if (posI <= height) {
    posI= posI-vel;
  }

  //texto
  fill (255);
  textSize (30);
  textAlign(CENTER);
  text ("directed by\njohn lasseter", posX, 1170+posY);
  text ("co-directed by\nlee unkrich\nash brannon", posX, 1300+posY);

  //sube texto
  if (posY <= height) {
    posY= posY-vel;
  }
}
