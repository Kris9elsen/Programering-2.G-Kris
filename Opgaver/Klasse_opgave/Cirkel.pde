class Cirkel {
  // klassens attributter/ tilstand
  float x, y;
  int r, g, b;

  //konstroktøren
  Cirkel() {
    this.x = random(600);
    this.y = random(400);
  }

  // klassens metoder

  //farve sætter
  void farve() {
    this.r = (int) random(1, 256);
    this.g = (int) random(1, 256);
    this.b = (int) random(1, 256);
  }

  // tegn firkant på canvas
  void drawCircle() {
    fill(r, g, b);
    circle(x, y, x);
  }
}
