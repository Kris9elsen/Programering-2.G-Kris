PShape Hjul;
float r;
float xpos, ypos;

void setup(){
  fullScreen();
  
  Hjul = createShape(GROUP);
  ellipseMode(RADIUS);
  
  noStroke();
  fill(200);
  PShape outter = createShape(ELLIPSE, 0, 0, 100, 100);
  
  fill(0);
  PShape inner = createShape(ELLIPSE, 0, 0, 90, 90);
  
  fill(200);
  PShape ege1 = createShape(RECT, 0, 0, 10, 100);
  ege1.rotate(radians(120));
  ege1.translate(-5, 0);
  PShape ege2 = createShape(RECT, 0, 0, 10, 100);
  ege2.rotate(radians(240));
  ege2.translate(-5, 0);
  PShape ege3 = createShape(RECT, 0, 0, 10, 100);
  ege3.rotate(radians(0));
  ege3.translate(-5, 0);
  
  Hjul.addChild(outter);
  Hjul.addChild(inner);
  Hjul.addChild(ege1);
  Hjul.addChild(ege2);
  Hjul.addChild(ege3);
  
  xpos = 100;
  ypos = height-100;
}

void draw(){
  background(0);
  translate(xpos, ypos);
  rotate(radians(r));
  if(xpos < width-100 && ypos == height-100){
    xpos = xpos + 10;
  }
  if(xpos == width-100 && ypos > 100){
    ypos = ypos - 10;
  }
  if(ypos == 100 && xpos > 100){
    xpos = xpos - 10;
  }
  if(xpos == 100){
    ypos = ypos + 10;
  }
  shape(Hjul, 0, 0);
  
  r = r + 10;
}
