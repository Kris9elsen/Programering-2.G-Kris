class Rektangel {
  // klassens attributter/ tilstand
  float x, y;
  int r, g, b;

  //konstroktøren
  Rektangel() {
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
  
  void drawRect() {
    fill(r, g, b);
    rect(x, y, x, y);
  }
}
