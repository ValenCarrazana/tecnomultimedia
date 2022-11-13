class Caida {
  float x,y,tam;
    PImage pez, PezObstaculo;
    Caida  Pez;
    Caida PezObstaculo;
  
Caida () {
    rectMode (CENTER);
    textAlign (CENTER);
    noStroke();
    x = random (0, 600);
    y = random (-height, 300);
    tam = 50;
        pez = loadImage ("pez.png");
        PezObstaculo = loadImage ("PezObstaculo.png");
  }
  
  
 void dibujar () {
   fill (#503150);
    image (pez, x, y++, tam, tam);
      image (PezObstaculo, x, y++, tam, tam);


}

}
