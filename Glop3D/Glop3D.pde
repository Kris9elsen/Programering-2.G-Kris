float angle = 0;
float z = 0;
Box[][] box = new Box[6][6];


void setup() {
  size(400, 400, P3D);
  frameRate(60);
  translate(width/2-100, height/2+100, 0);
  for (int i = 0; i < box.length; i++) {
    for (int j = 0; j < box[0].length; j++) {
      box[i][j] = new Box(30, z);
      z = 0;
    }
    translate(-180, 0, 0);
    z += 30;
  }
}


void draw() {
  background(0);
  translate(width/2-100, height/2+100, 0);
  rectMode(CENTER);
 
  z = 0;
  float h = map(sin(angle), -1, 1, 1, 100);
  for (int i = 0; i < box.length; i++) {
    for (int j = 0; j < box[0].length; j++) {
      box[i][j].update(h, 30, z);  //<>//
      z = 0;
    }
    translate(-180, 0, 0);
    z += 30;
  }



  angle += 0.1;
}
