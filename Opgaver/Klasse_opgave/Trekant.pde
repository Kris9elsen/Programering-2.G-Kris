class Trekant {
  // klassens attributter/ tilstand
  float x, y;
  int r, g, b;

  //konstroktøren
  Trekant() {
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
  
  void drawTriangle() {
    fill(r, g, b);
    triangle(x, y, x+x, y+y, x+x, y-y);
  }
}
