class Box {
  
  Box (float x, float z) {
    fill(255);
    translate(x, 0, -z);
    box(25, 25, 25);
  }
  
  void update(float h, float x, float y) {
    fill(255);
    translate(x, 0, -z);
    box(25, h, 25);
  }
}
