Boolean peter = false;
int jeppe = 20;
float kris = 0.0001;
char bogstav = 65;
byte b = 1;

void draw() {
  show();
}

void show() {
  while (!peter) { //<>//
    for (int i = 0; i < jeppe; i++) {
      if ( bogstav == 'A') {
        kris = kris + b;
        println(kris);
      }
    }
    if ( kris > 10 ) {
    peter = true;
    }
  }
}
