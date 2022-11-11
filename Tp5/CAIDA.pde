class Caida {
  float x,y,tam;
    PImage pez;
    Caida  Pez;
  
Caida () {
    rectMode (CENTER);
    textAlign (CENTER);
    noStroke();
    x = random (0, 600);
    y = random (-height, 300);
    tam = 50;
        pez = loadImage ("pez.png");
  }
  
  
 void dibujar () {
   fill (#503150);
    image (pez, x, y++, tam, tam);


}

}
