//link a video de youtube https://youtu.be/QTqqHtFORvs

Habitacion hb;


void setup () {
  size (600, 600);

  hb = new Habitacion();

}
void draw () {
  hb.crear();
  hb.llamarClases();
  hb.teclado();
}
