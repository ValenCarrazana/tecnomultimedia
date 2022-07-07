//---------------------------------------------------------------------------
// LINK A VIDEO DE YOUTUBE:      https://youtu.be/synsoHVyl2A   
//---------------------------------------------------------------------------
int b;
int contadorTiempo;
String estado;
PImage patito, FotoGana, FotoPierde;

boolean Boton;

int [] posX = new int [3];
int [] posY = new int [3];

int [][] tam = new int [3][3];  //NEW: arreglo bidimensional 


//---------------------------------------------------------------------------

void setup() {
  size(600, 600 );
  colorMode (HSB, 360, 100, 100);
  textSize( 24 );
  textAlign( CENTER, CENTER );

  b = 100;  
  contadorTiempo=0;
  estado = "inicio";

FotoGana = loadImage("FotoGana.png");
FotoPierde = loadImage("FotoPierde.png");
  //asignacion de patos
  patito = loadImage("patito.png");

  posX [0] = 100;
  posX [1] = 250;
  posX [2] = 400;

  posY [0] = 80;
  posY [1] = 220;
  posY [2] = 350;

  for (int i = 0; i <3; i++) {
    for (int j = 0; j<3; j++) {
      tam[i][j] = 100;
    }
  }
}


//---------------------------------------------------------------------------
void draw () {

  Boton= (mouseX > 150 && mouseY > 390 && mouseX < 455 && mouseY < 490);



  if (estado.equals("inicio")) {
    inicio ();
  } 

  if (estado.equals("jugar")) {
    escenario ();
    contadorTiempo++;
    println( contadorTiempo );
    println( contadorTiempo/60 );
    
    pushStyle();
    fill (100,100,100);
    textSize (45);
    text (contadorTiempo/60, width/2, 500);
    popStyle();

    for (int i = 0; i <3; i++) {
      for (int j = 0; j<3; j++) {

        image (patito, posX[i], posY[j], tam[i][j], tam[i][j]);
      }
    }
  }
  if (estado.equals("ganaste")) {
    background (100, 100, 100);
    pushStyle();
    textSize(40);
    fill (0, 0, 100);
    text ("¡FELICIDADES GANASTE!", width/2, height/4);
    popStyle();
    image (FotoGana, 200, 200, 200,200);

    //--------------BOTON CREDITOS---------------------
    pushStyle();
    fill (0, 0, 0);
    noStroke();
    rect (130, 390, 330, 130);
    fill (100, 100, 100);
    textSize (30);
    text ("Presiona ENTER\n para ver creditos", 300, 450);
    popStyle();
  }

  if (estado.equals("perdiste")) {
    background (359, 98, 99);
    pushStyle();
    textSize(40);
    fill (0, 0, 100);
    text ("¡PERDISTE!", width/2, height/4);
    popStyle();
    //--------------BOTON REINICIO---------------------
    pushStyle();
    fill (0, 0, 0);
    noStroke();
    rect (130, 390, 330, 130);
    fill (359, 98, 99);
    textSize (35);
    text ("Presiona ENTER\n para reiniciar", 300, 450);
    popStyle();
    
    image (FotoPierde, 190, 190, 220,180);
  }
    if (estado.equals("creditos")) {
    background (359, 98, 99);
    pushStyle();
    textSize(30);
    fill (0, 0, 100);
    text ("¡Gracias por jugar! \n\nJuego programado por: \nValentina Carrazana \n91396/7\nTecno Multimedia 1 \n Comision 2", width/2,200);
    popStyle();
    
        //--------------BOTON REINICIO---------------------
    pushStyle();
    fill (0, 0, 0);
    noStroke();
    rect (100, 410, 400, 150);
    fill (359, 98, 99);
    textSize (35);
    text ("Presiona ENTER\n para volver a jugar", 300, 470);
    popStyle();
    //------------------------------------------------------------------------
}
  if ( contadorTiempo >= 5*60 ) {
            estado = "perdiste";
          }
}

//---------------------------------------------------------------------------
void mouseClicked () {
  if ( estado.equals("inicio") && Boton) {
    estado=("jugar");
  }

  if ( estado.equals("jugar")) {
    for (int i = 0; i <3; i++) {
      for (int j = 0; j<3; j++) {

        if ( mouseX > posX[i] && mouseX < posX[i]+tam[i][j] && 
          mouseY > posY[j] && mouseY < posY[j]+tam[i][j] ) {
          tam[i][j] -= 10;
        } else {
          // CONDICION PARA GANAR-----------------------------------------------------
          if (tam[i][j] == 0) {
            estado ="ganaste";
          } else 
          // CONDICION PARA PERDER----------------------------------------------------
          if ( contadorTiempo >= 5*60 && tam[i][j] >0  ) {
            estado = "perdiste";
          }
        }
      }
    }
  }
}

void keyPressed() {
  if ( keyCode == ENTER ) {
    if ( estado.equals("perdiste") || estado.equals("creditos") ) {
      reiniciar();
    }
  }
  if (estado.equals("ganaste")){
    estado = "creditos";
  }
}

void reiniciar () {
  estado = "inicio";
  contadorTiempo =0;
  for (int i = 0; i <3; i++) {
    for (int j = 0; j<3; j++) {
      tam[i][j] = 100;
    }
  }
}
