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
  // initiering af objekteter f, c, r, t
  f = new Firkant();
  c = new Cirkel();
  r = new Rektangel();
  t = new Trekant();
  
  // Tegner objekter
  // Tegner firkant
  f.farve();
  f.drawFirkant();
  
  // Tegner cirkel
  c.farve();
  c.drawCircle();
  
  // Tegner rektangel
  r.farve();
  r.drawRect();
  
  // Tegner trekant
  t.farve();
  t.drawTriangle();
}
