String str = "Hej med dig!";

void setup() {
  size(0, 0);
  noLoop();
}

void draw() {

  int n = 0;
  while (n < 5) {
    println(str.charAt(n));
    n++;
  }

  for (int i = 0; i < 5; i++) {
    if (i < 5) {
      println(str.charAt(i));
    }
  }
  print(str.substring(0, 5));
}
