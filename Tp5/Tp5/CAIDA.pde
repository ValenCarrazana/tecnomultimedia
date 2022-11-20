class Caida {
  float x, y, tam;
  String TipoDePez;
  PImage pez, Pezmuerto;


  Caida ( String TipoDePez) {
  
    this.TipoDePez = TipoDePez;
    rectMode (CENTER);
    textAlign (CENTER);
    noStroke();
    x = random (0, 600);
    y = random (-height, 300);
    tam = 50;



    if (TipoDePez.equals("obstaculo")) {
      Pezmuerto = loadImage ("PezObstaculo.png");
    } else {
      pez = loadImage ("pez.png");
    }
  }


    void dibujar () {
      if (this.TipoDePez.equals("obstaculo")) {
        image (Pezmuerto, x, y++, tam, tam);
      } else if (this.TipoDePez.equals("normal")) {
        image (pez, x, y++, tam, tam);
      }
    }
  }
