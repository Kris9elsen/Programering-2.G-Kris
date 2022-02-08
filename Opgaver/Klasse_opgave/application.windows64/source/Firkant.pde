class Firkant {
  // klassens attributter/ tilstand
  float x, y;
  int r, g, b;

  //konstroktøren
  Firkant() {
    this.x = random(width);
    this.y = random(height);
  }

  // klassens metoder

  //farve sætter
  void farve() {
    this.r = (int) random(1, 256);
    this.g = (int) random(1, 256);
    this.b = (int) random(1, 256);
  }

  // tegn firkant på canvas
  void drawFirkant() {
    fill(r, g, b);
    square(x, y, y);
  }
}
