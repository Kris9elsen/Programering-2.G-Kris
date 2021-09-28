float x;
float y;

void setup(){
  size(800, 800);
  surface.setResizable(true);
  surface.setTitle("Gavmaskine");
  frameRate(120);
  
  x = width/2;
  y = height/2;
}

void draw(){
  background(0);
  if(keyPressed){
    if(key == 'w' && y > 10){
      y = y - 10;
    }
    if(key == 's' && y < height-60){
      y = y + 10;
    }
    if(key == 'a' && x > 10){
      x = x - 10;
    }
    if(key == 'd' && x < width-60){
      x = x + 10;
    }
  }
  fill(255);
  square(x, y, 50);
  text("x: " + x + ", y: " + y + ", FPS: " + frameRate, 10, 10);
}
