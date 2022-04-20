void setup (){ 
  size(600,500); 
  background (#82EAE1);  //fondo color celeste
 noStroke ();
}

void draw (){

//pasto
fill (#3CAF2E);
rect (0, 300, 600, 100);
fill (#F0A300);
circle (0, 10, 250); //sol
fill (#FFCE05);
circle (0, 10, 240);


//rieles

fill (100); //gris
rect (0, 400, 600, 300); //via
fill (#3CAF2E); //verde
rect (0, 480, 600, 100); //pasto sobre riel
 
//triangulo base
fill (#5D3B08);
triangle (450, 310, 380, 410, 500, 410); //triangulo rompenieve

//LOCOMOTORA 
fill (#A00F0F); //rojo oscuro raro
rect (350, 180, 50, 100); //humito
rect (340, 170, 70, 20); //techito del humo

//humito
fill(120);

circle (380, 150, 20);
circle (400, 120, 20);
circle (420, 90, 20);

//cuerpo
fill (255,0 ,0); //  rojo
circle (410, 320, 140);
rect ( 100, 250, 300, 140); //(x, y, ancho, alto) base

//lineas 
fill (#A00F0F); //rojo oscuro raro
rect (300, 250, 10, 130);
rect (330, 250, 10, 130);
rect (360, 250, 10, 130);

//union de las ruedas
fill (#5D3B08); //color marron
rect (110, 380, 350, 30); //el coso marron

//ruedas
fill(19); //gris
circle (360, 400, 90); //rueda medio
circle (150, 390, 120); //ruedra grande izquierda
circle (260, 400, 90); //rueda derecha

//ruedas chicas grises
fill (100); //gris
circle (260, 400, 40); //rueda derecha chica 
circle (360, 400, 40); //rueda medio chica
circle (150, 390, 60); //ruedra grande izquierda

//base
fill (255, 0, 0); //rojo
rect (100, 100, 170, 200); // cuadrado locomotora
fill (225); //blanco
rect (130, 130, 110, 110); //ventanita

fill (200);
rect (130, 230, 110, 10); //sombras ventanita
fill (200);
rect (232, 130, 10, 110); 

//lineas de las ruedas
fill (30);
rect (146, 330, 10, 120);// rueda izquierda 
rect (255, 358, 10, 86); //rueda medio
rect (355, 358, 10, 86); //rueda derecha
rect (90, 386, 315, 20); //linea grande horizontal

//ruedas grises mas chicas
fill (50);
circle (260, 398, 30); //rueda derecha chica 
circle (360, 398, 30); //rueda medio chica
circle (150, 393, 40); //ruedra grande izquierda


fill (#A00F0F); //rojo oscuro raro
rect (97, 97, 205, 20); // techo

//nube
fill (230);
circle (320, 15, 68);
ellipse (260, 17, 70, 50);
ellipse (380, 17, 70, 50);

circle (530, 150, 68);
ellipse (480, 150, 70, 55);
ellipse (580, 150, 70, 55);


}
