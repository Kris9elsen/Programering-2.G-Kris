String produkt1Navn, produkt2Navn, produkt3Navn, produkt4Navn, produktNavn, produkt, firmaNavn;
boolean buy = false;
float produkt1PrisMMoms, produkt2PrisMMoms, produkt3PrisMMoms, produkt4PrisMMoms, produktPris, moms, pris;


void setup() {
  size(600, 600);
  firmaNavn = "HUMAN TRAFFICKING APS";
  surface.setTitle(firmaNavn);
}

void draw() {
  produkt1();
  produkt2();
  produkt3();
  produkt4();
  if (buy == true) {
    kvitering();
  }
}

void produkt1() {
  produkt1PrisMMoms = 1000;
  produkt1Navn = "Bob";
  produktPris = produkt1PrisMMoms;
  produktNavn = produkt1Navn;
  produkt(0, 0);
}
void produkt2() {
  produkt2PrisMMoms = 7500;
  produkt2Navn = "Bent";
  produktPris = produkt2PrisMMoms;
  produktNavn = produkt2Navn;
  produkt(300, 0);
}
void produkt3() {
  produkt3PrisMMoms = 9999;
  produkt3Navn = "Jens";
  produktPris = produkt3PrisMMoms;
  produktNavn = produkt3Navn;
  produkt(0, 300);
}
void produkt4() {
  produkt4PrisMMoms = 5000;
  produkt4Navn = "Søren";
  produktPris = produkt4PrisMMoms;
  produktNavn = produkt4Navn;
  produkt(300, 300);
}

void produkt(int x, int y) {

  strokeWeight(1);
  fill(255);
  rect(10+x, 10+y, 280, 280);

  //divide screen i four squares
  line(300, 0, 300, 600);//vertical line
  line (0, 300, 600, 300); //Horizontal line

  // make body and color black
  fill(0, 0, 0);
  rect(125+x, 120+y, 50, 100);

  // make head and color white
  fill(255, 255, 255);
  circle(150+x, 75+y, 100);

  // make eys and color black
  fill(0, 0, 0);
  ellipse(125+x, 75+y, 25, 50);
  ellipse(175+x, 75+y, 25, 50);

  //make legs and thick
  strokeWeight(5);
  line(125+x, 220+y, 110+x, 250+y);
  line(175+x, 220+y, 195+x, 250+y);

  textSize(32);
  textAlign(CENTER);
  text(produktNavn + " Pris: " + produktPris + "kr", 150+x, 275+y);
}

void mousePressed() {
  if (mouseX <= 300-10 && mouseX >= 0+10 && mouseY <= 300-10 && mouseY >= 0+10 &&  buy == false) {
    print(produkt1Navn);
    produkt = produkt1Navn;
    pris = produkt1PrisMMoms;
    moms = produkt1PrisMMoms*0.2;
    buy = true;
  }
  if (mouseX <= 600-10 && mouseX >= 300+10 && mouseY <= 300-10 && mouseY >= 0+10 && buy == false) {
    print(produkt2Navn);
    produkt = produkt2Navn;
    pris = produkt2PrisMMoms;
    moms = produkt2PrisMMoms*0.2;
    buy = true;
  }
  if (mouseX <= 300-10 && mouseX >= 0+10 && mouseY <= 600-10 && mouseY >= 300+10 && buy == false ) {
    print(produkt3Navn);
    produkt = produkt3Navn;
    pris = produkt3PrisMMoms;
    moms = produkt3PrisMMoms*0.2;
    buy = true;
  }
  if (mouseX <= 600-10 && mouseX >= 300+10 && mouseY <= 600-10 && mouseY >= 300+10 && buy == false) {
    print(produkt4Navn);
    produkt = produkt4Navn;
    pris = produkt4PrisMMoms;
    moms = produkt4PrisMMoms*0.2;
    buy = true;
  }
}

void kvitering() {
  noStroke();
  fill(255);
  rect(0, 0, width, height);
  strokeWeight(5);
  fill(0);
  textSize(50);
  textAlign(CENTER);
  text(firmaNavn, width/2, 100);
  textSize(25);
  textAlign(LEFT);
  text("ADR.  Dybbøl Bygade 35B", 25, 175);
  text("TLF.  +45 40 96 75 02", 25, 200);
  text("CVR:  6942069", 25, 225);
  String date;
  if (minute() < 10) {
    date =  day() + "/" + month() + "/" + year() + "  " + hour() + ": 0" + minute();
  } else {
    date = day() + "/" + month() + "/" + year() + "  " + hour() + ":" + minute();
  }
  text(date, 25, 250);
  text("1 stk: " + produkt, 25, 325);
  textAlign(RIGHT);
  text("Pris: " + pris + " kr", 575, 325);
  textAlign(CENTER);
  text("Her af moms: " + moms + " kr", 300, 375);
}
