PImage img;

void setup(){
  size(600, 600, P3D);
  
  PImage img = loadImage("meme.JPG");
  textureMode(NORMAL);
}

void draw(){
  background(0);
  beginShape();
    vertex(200, 200, 350);
    vertex(400, 200, 350);
    vertex(400, 400, 350);
    vertex(200, 400, 350);    
  endShape();
  
  beginShape();
    vertex(200, 400, 550);
    vertex(200, 200, 550);
    vertex(400, 200, 550);
    vertex(400, 400, 550);
  endShape();
}
