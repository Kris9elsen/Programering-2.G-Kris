Firkant f;
Cirkel c;
Rektangel r;
Trekant t;

void setup() {
  frameRate(10);
  fullScreen();
  background(0);
}

void draw() {

  // Vælger figur
  int figur = (int) random(1, 5);

  // Tegner objekter
  if (figur == 1) {
    // Tegner firkant
    f = new Firkant();
    f.farve();
    f.drawFirkant();
  } else if (figur == 2) {
    // Tegner cirkel
    c = new Cirkel();
    c.farve();
    c.drawCircle();
  } else if (figur == 3) {
    // Tegner rektangel
    r = new Rektangel();
    r.farve();
    r.drawRect();
  } else if (figur == 4) {
    // Tegner trekant
    t = new Trekant();
    t.farve();
    t.drawTriangle();
  }
}
