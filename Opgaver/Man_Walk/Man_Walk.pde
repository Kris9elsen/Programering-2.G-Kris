PShape krop, ben1, ben2, ligeben1, ligeben2;
float xpos = 1;
float ben1r, ben2r;
PImage textur;

void setup(){
  size(800, 800);
  surface.setTitle("Man_Walk");
  surface.setResizable(true);
  surface.setLocation(0, 0);
  frameRate(60);
  
  krop = createShape(GROUP);
  ben1 = createShape(GROUP);
  ben2 = createShape(GROUP);
  ligeben1 = createShape(GROUP);
  ligeben2 = createShape(GROUP);
  
  noStroke();
  PShape hals = createShape(RECT, 25, 75, 50, 50);
  stroke(1);
  PShape hoved = createShape(ELLIPSE, 50, 50, 100, 100);
  PShape torso = createShape(RECT, 0, 125, 100, 200);
  
  PShape bentop = createShape(RECT, 0, 0, 50, 100);
  bentop.rotate(radians(-45));
  PShape benbund = createShape(RECT, 0, 100, 50, 100);
  benbund.translate(70, -30);
  
  PShape lige1 = createShape(RECT, 0, 0, 50, 200);
  
  PShape lige2 = createShape(RECT, 0, 0, 50, 200);
  
  krop.addChild(hals);
  krop.addChild(hoved);
  krop.addChild(torso);
  
  ben1.addChild(bentop);
  ben1.addChild(benbund);
  
  ben2.addChild(bentop);
  ben2.addChild(benbund);
  
  ligeben1.addChild(lige1);
  
  ligeben2.addChild(lige2);
  
  textur = loadImage("textur.jpg");
  textureMode(NORMAL);
  
  ben1r = 339;
  ben2r = 22;
}

void draw(){
  background(0, 0, 255);
  noStroke();
  fill(0, 255, 0);
  rect(0, height-250, width, 250);
  stroke(1);
  fill(255);
  beginShape();
  texture(textur);
  shape(krop, xpos, height-525);
  endShape();
  shape(ligeben1, xpos+50, height-200);
  shape(ligeben2, xpos, height-200);
  
  pushMatrix();
  translate(xpos+50, height-200);
  rotate(radians(ben1r));
  shape(ben1, 0, 0);
  popMatrix();
  
  pushMatrix();
  translate(xpos, height-200);
  rotate(radians(ben2r));
  shape(ben2, 0, 0);
  popMatrix();
  
  
  if(ben1r > 338 || ben1r < 22){
    ben1.setVisible(true);
    ligeben1.setVisible(false);
    ben1r = ben1r + 1;
  }
  
  if(ben1r >= 360){
    ben1r = 0;
  }
  
  if(ben1r >= 22 && ben1r < 338){
    ben1.setVisible(false);
    ligeben1.setVisible(true);
    ben1r = ben1r + 8;
  }
  
  if(ben2r > 338 || ben2r < 22){
    ben2.setVisible(true);
    ligeben2.setVisible(false);
    ben2r = ben2r + 1;
  }
  
  if(ben2r >= 360){
    ben2r = 0;
  }
  
  if (ben2r >= 22 && ben2r < 338){
    ben2.setVisible(false);
    ligeben2.setVisible(true);
    ben2r = ben2r + 8;
  }
  
  xpos ++;
  if(xpos > width){
    xpos = -100;
  }
}
