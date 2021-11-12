int[] date = {22, 23, 59, 60}; //<>//

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
  textAlign(CENTER, CENTER);
  textSize(width/7.14);
  text(date, width/2, height/2);

  if (d == 0 && h == 0 && m == 0 && s == 0) {
    background(0);
    textAlign(CENTER);
    textSize(width/7.14);
    text("Så, nu det nu", width/2, height/2);
  }
}
