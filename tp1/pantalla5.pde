void Musica () {

  //imagen
  image (imagen5, posX, 2800+posI, 400, 400);

  //sube imagen
  if (posI <= height) {
    posI= posI-vel;
  }

  //texto
  fill (255);
  textSize (30);
  textAlign(CENTER);
  text ("WOODY'S ROUNDUP   theme song", posX, 3470+posY);
  text ("\n\nmusic and lyrics by\nperformed by", posX-140, 3450+posY);
  text ("\n\nrandy newman\nriders in the sky", posX+160, 3450+posY);

  text ("WHEN SHE LOVED ME    theme song", posX, 3680+posY);
  text ("\n\nmusic and lyrics by\nperformed by", posX-140, 3660+posY);
  text ("\n\nrandy newman\nsarah mclachlan", posX+160, 3660+posY);

  text ("YOU'VE GOT A FRIEND IN ME   theme song", posX, 3890+posY);
  text ("\n\nmusic and lyrics by\nwheezy's version performed by\n instrumental version performed by", posX-150, 3870+posY);
  text ("\n\nrandy newman\nrobert goulet\ntom scott", posX+180, 3870+posY);

  text ("\n\n\nmusic recorded and mixed by\n\nsupervising music editor\n\nmusic editor\n\nassistant music editor\n\ndirector music production", posX-150, 4020+posY);
  text ("\n\n\nfrank wolf\n\nbruno coon\n\nlisa jaime\n\nbrenda heins\n\nandrew page", posX+180, 4020+posY);

  //sube texto
  if (posY <= height) {
    posY= posY-vel;
  }
}
