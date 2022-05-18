//declaracion de variables
float posX, posY, vel, posI;
PImage imagen1, imagen2, imagen3, imagen4, imagen5;
PFont Mifuente;
boolean reinicio, cuadrado, click;

void setup () {

  //parametros
  size (1000, 720);
  textSize (50);
  textAlign(CENTER, CENTER);
  imageMode(CENTER);

  //carga de fuente
  Mifuente= createFont("ToyStory.ttf", 100);

  //carga de imagenes
  imagen1 = loadImage ("imagen1.png");
  imagen2 = loadImage ("imagen2.png");
  imagen3 = loadImage ("imagen3.png");
  imagen4 = loadImage ("imagen4.jpg");
  imagen5 = loadImage ("imagen5.png");
  Iniciar ();
}
void draw () {
  background (0); //fondo rect (500, 560, 280, 150, 28);
  click = (mouseX>365 && mouseY>500 && mouseX<640 && mouseY<627);
  println(mouseX, mouseY);
  
  //dibujo
  if ( reinicio ) { // inicio y reinicio del code
    Titulo();
    Directores();
    Personajes1 ();
    Personajes2 ();
    Musica();
    if (posY<= -4400) {

      Cuadradito(); //cuadrado que contiene el texto para indicar el reinicio
    }
  }
}

void keyPressed() { //anuncio para reinicio con teclas
  if ( key == 'R' || key =='I' ) {
    reinicio = !reinicio;
    Iniciar ();
  }
 
}

void mouseClicked(){  //boton para reinicio
  if ( click ==true) {
    reinicio = !reinicio;
    Iniciar ();
}
}
