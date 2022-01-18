Firkant f;

void setup() {
  size (600, 400);
  background(0);
}

void draw() {
  // initiering af objektet f
  f = new Firkant();
  //Vælg farve R, G, B 'max 255'
  f.farve();
  // tegner firkanten på canvas
  f.drawFirkant();
  //Vælg farve R, G, B 'max 255'
  f.farve();
  // Tegn cirkel på canvas
  f.drawCircle();
  f.farve();
  f.drawRect();
  f.farve();
  f.drawTriangle();
}
