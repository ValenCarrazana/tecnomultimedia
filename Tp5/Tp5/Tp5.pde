//link a VIDEO DE YOUTUBE https://youtu.be/Q40qbm-gXsQ


import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;
AudioPlayer player;
AudioPlayer player1;
AudioPlayer player2;
AudioPlayer player3;


Juego juego;

void setup() {
  size(600, 600);
  juego = new Juego();

  minim = new Minim (this);
  player = minim.loadFile ("lofi1.wav", 500);
  player1 = minim.loadFile ("coin.mp3", 500);
  player2 = minim.loadFile ("triste.mp3", 500);
  player3 = minim.loadFile ("catbars.mp3", 500);
}
void draw() {
  juego.dibujar();
  juego.colision();
  juego.sound();
}

void keyPressed () {
  juego.teclado();
  println(juego.estadoID);
}