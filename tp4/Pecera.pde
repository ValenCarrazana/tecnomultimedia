class Pecera {
  float x, y, tam, vel, EstadoInicial;
  PImage pez;
  Boolean P_FueraDePantalla;

  //constructor
  Pecera () {
    x = random (50, 100);
    y = random (120, 350);
    EstadoInicial = random (50, 180);
    tam = 50;
    pez = loadImage ("pez.png");
    vel = 100;
   
    if (x == 450)
    P_FueraDePantalla = true;
    
      if ( P_FueraDePantalla = true){
        x = EstadoInicial;
    }
  }

  //metodos
  void dibujar() {
    image (pez, x++, y, tam, tam);


    if (x >= 450) {
      x = EstadoInicial;
      
    }
  }
}
