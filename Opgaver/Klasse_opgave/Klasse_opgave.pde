Firkant f;

void setup() {
  size (600, 400);
  background(0);
}

void draw() {
  // initiering af objektet f
  f = new Firkant();
  //Vælg farve R, G, B 'max 255'
  f.farve(200, 100, 10);
  // tegner firkanten på canvas
  f.drawFirkant();
  //Vælg farve R, G, B 'max 255'
  f.farve(10, 200, 100);
  // Tegn cirkel på canvas
  f.drawCircle();
  f.farve(200, 10, 100);
  f.drawRect();
  f.farve(100, 100, 100);
  f.drawTriangle();
}
