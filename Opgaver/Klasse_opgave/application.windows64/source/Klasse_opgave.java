import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class Klasse_opgave extends PApplet {

Firkant f;
Cirkel c;
Rektangel r;
Trekant t;

public void setup() {
  frameRate(10);
  
  background(0);
}

public void draw() {

  // Vælger figur
  int figur = (int) random(1, 5);

  // Tegner objekter
  if (figur == 1) {
    // Tegner firkant
    f = new Firkant();
    f.farve();
    f.drawFirkant();
  } else if (figur == 2) {
    // Tegner cirkel
    c = new Cirkel();
    c.farve();
    c.drawCircle();
  } else if (figur == 3) {
    // Tegner rektangel
    r = new Rektangel();
    r.farve();
    r.drawRect();
  } else if (figur == 4) {
    // Tegner trekant
    t = new Trekant();
    t.farve();
    t.drawTriangle();
  }
}
class Cirkel {
  // klassens attributter/ tilstand
  float x, y;
  int r, g, b;

  //konstroktøren
  Cirkel() {
    this.x = random(width);
    this.y = random(height);
  }

  // klassens metoder

  //farve sætter
  public void farve() {
    this.r = (int) random(1, 256);
    this.g = (int) random(1, 256);
    this.b = (int) random(1, 256);
  }

  // tegn firkant på canvas
  public void drawCircle() {
    fill(r, g, b);
    circle(x, y, x);
  }
}
class Firkant {
  // klassens attributter/ tilstand
  float x, y;
  int r, g, b;

  //konstroktøren
  Firkant() {
    this.x = random(width);
    this.y = random(height);
  }

  // klassens metoder

  //farve sætter
  public void farve() {
    this.r = (int) random(1, 256);
    this.g = (int) random(1, 256);
    this.b = (int) random(1, 256);
  }

  // tegn firkant på canvas
  public void drawFirkant() {
    fill(r, g, b);
    square(x, y, y);
  }
}
class Rektangel {
  // klassens attributter/ tilstand
  float x, y;
  int r, g, b;

  //konstroktøren
  Rektangel() {
    this.x = random(width);
    this.y = random(height);
  }

  // klassens metoder

  //farve sætter
  public void farve() {
    this.r = (int) random(1, 256);
    this.g = (int) random(1, 256);
    this.b = (int) random(1, 256);
  }
  
  public void drawRect() {
    fill(r, g, b);
    rect(x, y, x, y);
  }
}
class Trekant {
  // klassens attributter/ tilstand
  float x, y;
  int r, g, b;

  //konstroktøren
  Trekant() {
    this.x = random(width);
    this.y = random(height);
  }

  // klassens metoder

  //farve sætter
  public void farve() {
    this.r = (int) random(1, 256);
    this.g = (int) random(1, 256);
    this.b = (int) random(1, 256);
  }
  
  public void drawTriangle() {
    fill(r, g, b);
    triangle(x, y, x+x, y+y, x+x, y-y);
  }
}
  public void settings() {  fullScreen(); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "--present", "--window-color=#666666", "--stop-color=#cccccc", "Klasse_opgave" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
