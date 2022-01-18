class Firkant {
  // klassens attributter/ tilstand
  float x, y;
  int r, g, b;

  //konstroktøren
  Firkant() {
  }

  // klassens metoder

  //farve sætter
  void farve(int R, int G, int B) {
    this.r = R;
    this.g = G;
    this.b = B;
  }

  // tegn firkant på canvas
  void drawFirkant() {
    this.x = random(600);
    this.y = random(400);
    fill(r, g, b);
    square(x, y, y);
  }
  
  void drawCircle() {
    this.x = random(600);
    this.y = random(400);
    fill(r, g, b);
    circle(x, y, x);
  }
  
  void drawRect() {
    this.x = random(600);
    this.y = random(400);
    fill(r, g, b);
    rect(x, y, x, y);
  }
  
  void drawTriangle() {
    this.x = random(600);
    this.y = random(400);
    fill(r, g, b);
    triangle(x, y, x+x, y+y, x+x, y-y);
  }
}
