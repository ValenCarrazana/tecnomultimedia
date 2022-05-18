void Personajes2 () {

  //imagen
  image (imagen4, posX, 2000+posI, 400, 400);

  //sube imagen
  if (posI <= height) {
    posI= posI-vel;
  }

  //texto
  fill (255);
  textSize (30);
  textAlign(CENTER);
  text ("voice of jessie\n\nvoice of mr potatoes head\n\nvoice of rex\n\nvoice of slinky dog", posX-140, 2650+posY);
  text ("joan cusack\n\ndon rickles\n\nwallace shawn\n\njim varney", posX+160, 2650+posY);
  //sube texto
  if (posY <= height) {
    posY= posY-vel;
  }
}
