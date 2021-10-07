int [][] numbers = new int [3][9];

void setup() {
  size(1000, 450);

  for (int i = 0; i <= 8; i++) {
    for (int n = 0; n <= 2; n++) {
      numbers[n][i] = int(random(1, 91));
    }
  }
  printArray(numbers);
}

void draw() {
  if (frameCount == 1) {
    gridMake(50, 100);
  }
}

void gridMake(int x, int y) {
  for (int i = 0; i <= 8; i++) {
    square(x, y, 100);
    square(x, 100+y, 100);
    square(x, 200+y, 100);
    x = x +100;
  }
  numbers(50, 100);
}

void numbers(int x, int y) {
  fill(0);
  textAlign(CENTER);
  textSize(50);
  for (int i = 0; i <= 8; i++) {
    for (int r = 0; r <= 2; r++) {
      text(numbers[r][i], 50+x, 75+y);
      y = y +100;
    }
    x = x + 100;
    y = y - 300;
  }
}
