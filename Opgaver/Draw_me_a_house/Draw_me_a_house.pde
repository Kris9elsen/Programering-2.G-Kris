PShape sky;

void setup(){
  background(0, 255, 255);
  size(750, 750);
  
  sky = createShape(GROUP);
  
  PShape sky = createShape(ELLIPSE, 0, 0, 20, 20);
  
}

void draw(){
  //Grasplæne
  strokeWeight(0);
  fill(15, 163, 74);
  rect(0, 600,750, 150);
  
  //Murstenshus
  strokeWeight(0);
  fill(227, 54, 54);
  square(75, 375, 250);
  
  //Dør
  strokeWeight(0);
  fill(99, 74, 49);
  rect(100, 500, 75, 125);
  
  //Tag
  strokeWeight(0);
  fill(89, 89, 89);
  triangle(70, 375, 200, 275, 330, 375);
 
  //Window color
  strokeWeight(0);
  fill(0, 255, 255, 75);
  square(200, 512, 75);
  
  //Window
  stroke(255, 255, 255);
  strokeWeight(10);
  fill(0, 255, 255, 50);
  square(200, 512, 75);
  
  //Sti
  strokeWeight(0);
  fill(222, 196, 124);
  rect(100, 625, 75, 150);
  
  //blomster ben
  strokeWeight(0);
  stroke(9, 133, 40);
  fill(9, 133, 40);
  rect(492, 500, 12, 100);
  
  //blomst blade
  strokeWeight(1);
  stroke(170, 83, 194);
  fill(170, 83, 194);
  circle(510, 510, 25);
  circle(500, 500, 25);
  circle(500, 530, 25);
  circle(510,525, 25);
  circle(485, 510, 25);
  circle(485, 530, 25);
  
  //blomst center
  fill(255, 251, 25);
  circle(500, 520, 25);
  
  //Sol
  strokeWeight(1);
  stroke(251, 255, 33);
  fill(251, 255, 33);
  circle(25, 25, 200);
  
  //Skyer

}
