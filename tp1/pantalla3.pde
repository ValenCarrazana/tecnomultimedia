void Personajes1 () {

  //imagen
  image (imagen3, posX, 1290+posI, 400, 400);

  //sube imagen
  if (posI <= height) {
    posI= posI-vel;
  }

  //texto
  fill (255);
  textSize (30);
  textAlign(CENTER);
  text ("voice of buzz lightyear\ntim allen\n\nvoice of woody\ntom hanks", posX, 1930+posY);

  //sube texto
  if (posY <= height) {
    posY= posY-vel;
  }
}
