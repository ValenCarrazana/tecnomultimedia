class Rectangulo {
  float x,y,tam;
    PImage pez;
    Rectangulo  rectangulo;
  
Rectangulo () {
    rectMode (CENTER);
    textAlign (CENTER);
    noStroke();
    x = random (0, 600);
    y = random (0, 300);
    tam = 50;
        pez = loadImage ("pez.png");
  }
  
  
 void dibujar () {
   fill (#503150);
    image (pez, x, y++, tam, tam);


}
}
