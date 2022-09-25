
class Habitacion {
float y,a,x;

  
Habitacion () {
  y = 100;
  a = 420;
  x = 80;

}

void crear(){

background(#FFF8D6);

pushStyle();
strokeWeight(5);
stroke (#39290A);
fill (191, 249, 255, 180);
rect ( x, y, a, 330);
popStyle();


//pescera base
pushStyle();
noStroke();
fill (#39290A);
rect ( x, 400, a, 30);
rect ( x, y, a, 30);
popStyle();

}

void llamarClases(){
gato.dibujar();
p1.dibujar();
p2.dibujar();
p3.dibujar();
p4.dibujar();
p5.dibujar();
}

  
  
}
