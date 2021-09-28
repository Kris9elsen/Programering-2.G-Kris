float y;


void setup(){
  fullScreen(P3D);

  y = 0;
}

void draw(){
  //boks
  background(0);
  ambientLight(255, 255, 255);
  noStroke();
  fill(255, 0, 0);
  translate(width/2, height/2, 250);
  rotateX(45);
  rotateY(radians(y));
  rotateZ(45);
  box(150);
  y += 1;
  println("y:" + y);
  if(y > 360){
    y = 0;
  }
}
