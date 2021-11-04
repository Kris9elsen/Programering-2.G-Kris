int[] date = {21, 23, 59 ,60};

void setup() {
  size(500, 500);
  surface.setResizable(true);
}

void draw() {
  background(0);

  int d = date[0]-1 - day();
  int h = date[1] - hour();
  int m = date[2] - minute();
  int s = date[3] - second();
  
  
  String date = d + "-" + h + "-" + m + "-" + s;
  textAlign(CENTER);
  textSize(width/7.14);
  text(date, width/2, height/2);
}
