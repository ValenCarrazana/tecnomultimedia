class Pecera {
  float x, y, tam, vel;
  PImage pez;

  //constructor
  Pecera () {
    x = random (50, 300);
    y = random (110, 350);
    tam = 50;
    pez = loadImage ("pez.png");
    vel = 100;
  }

  //metodos
  void dibujar() {
    image (pez, x++, y++, tam, tam);

   
    if (y >= 400 && x >= 300 && y <= 100 && x >= 50) {
   x--;
     
}
}

  }
