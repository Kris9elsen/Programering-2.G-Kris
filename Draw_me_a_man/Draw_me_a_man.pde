
void setup(){
  size(400,600);
}

void draw(){
  
  //Hoved
  strokeWeight(2);
  fill(255, 255, 255);
  circle(200, 400, 300);
 
  //Det ene øje
  strokeWeight(2);
  fill(255, 255, 255);
  square(225, 325, 50);

  //Det andet øje
  strokeWeight(2);
  fill(255, 255, 255);
  square(125, 325, 50);

  //Næse
  strokeWeight(2);
  fill(255, 255, 255);
  circle(200, 400, 100);
  
  //Mund
  strokeWeight(2);
  fill(255, 255, 255);
  arc(200, 470, 150, 125, 0, PI, CHORD);
  
  //Skygge på 
  strokeWeight(10);
  strokeCap(ROUND);
  line(50, 275, 350, 275);
  
  //Hoved gemmer
  strokeWeight(15);
  fill(0, 0, 0);
  rect(113, 72, 175, 200, ROUND);
}
