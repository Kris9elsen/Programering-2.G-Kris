int rad = 20; //bold størelse
float xpos, ypos; //bold placering
float xspeed = 2.0; //bold fart x-akse
float yspeed = 2.0; //bold fart y-akse
int xdir = 2; //bold retning op/ned
int ydir = 2; //bold retning højre/venstre
float top, bund, top1, bund1; //højre og venstree bar
float barsize = 75; //størelsen på bar = sværhedsgrad
float barsizex = 20; //tykkelsen på bar
float playspeed = 5; // hastighed på bar = sværhedsgrad
boolean[] keyArray = new boolean[4]; //pil op og ned, w og s
int pointsV, pointsH; //points til de to sider

void setup(){
  size(800, 500);
  noStroke();
  frameRate(60);
  ellipseMode(RADIUS);
  
  //start pos for bold
  xpos = width/2;
  ypos = height/2;
  
  //bar start placering
  top = height - barsize;
  top1 = height - barsize;
  bund = height;
  bund1 = height;
}

void draw(){
  background(0);
  
  //opdater position
  xpos = xpos + (xspeed * xdir);
  ypos = ypos + (yspeed * ydir);
  
  //chek om bolden rammer kanten, hvis ja ændre retning
  if (ypos > top + rad && ypos < bund - rad){
    if (xpos < barsizex + rad){
      ydir *= -1;
      pointsV = pointsV + 1;
    }
  }
  if (ypos > top1 + rad && ypos < bund1 - rad){
    if (xpos > width-rad-barsizex){
      ydir *= -1;
      pointsH = pointsH + 1;
    }
  }
  
  if (xpos > width - rad || xpos < rad){
    xdir *= -1;
  }
  
  
  
  if (ypos > height - rad || ypos < rad){
    ydir *= -1;
  }

  if(keyArray[0]){
    if(top1 > 0){
      top1 = top1 - playspeed;
      bund1 = bund1 - playspeed;
    }
  }
  if(keyArray[1]){
    if(top1 < height-barsize){
      top1 = top1 + playspeed;
      bund1 = bund1 + playspeed;
    }
  }
  if(keyArray[2]){
    if(top > 0){
      top = top - playspeed;
      bund = bund - playspeed;
    }
  }
  if(keyArray[3]){
    if(top < height-barsize){
      top = top + playspeed;
      bund = bund + playspeed;
    }
  }
  //lav bolden
  ellipse(xpos, ypos, rad, rad);
  rect(0, top, barsizex, barsize);
  rect(width-barsizex, top1, barsizex, barsize);
  textSize(50);
  text(pointsV + "|" + pointsH, width/2, 50);
  
}

 void keyPressed(){
    if (keyCode==UP){
      keyArray[0] = true;
    }
    if (keyCode==DOWN){
      keyArray[1] = true;
    }
    if (key=='w'){
      keyArray[2] = true;
    }
    if (key=='s'){
      keyArray[3] = true;
    }
}

void keyReleased(){
  if (keyCode==UP){
      keyArray[0] = false;
    }
    if (keyCode==DOWN){
      keyArray[1] = false;
    }
    if (key=='w'){
      keyArray[2] = false;
    }
    if (key=='s'){
      keyArray[3] = false;
    }
}
