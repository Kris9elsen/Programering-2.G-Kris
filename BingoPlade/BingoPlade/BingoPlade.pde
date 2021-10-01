int [] a = new int [3];
int [] b = new int [3];
int [] c = new int [3];
int [] d = new int [3];
int [] e = new int [3];
int [] f = new int [3];
int [] g = new int [3];
int [] h = new int [3];
int [] i = new int [3];

void setup() {
  size(1000, 450);



  for (int n = 0; n <= 2; n++) {
    a[n] = int(random(1, 11));
    b[n] = int(random(11, 21));
    c[n] = int(random(21, 31));
    d[n] = int(random(31, 41));
    e[n] = int(random(41, 51));
    f[n] = int(random(51, 61));
    g[n] = int(random(61, 71));
    h[n] = int(random(71, 81));
    i[n] = int(random(81, 91));
    println(a[n], b[n], c[n], d[n], e[n], f[n], g[n], h[n], i[n]);
  }
}

void draw() {
  if(frameCount == 1){
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

void numbers(int x, int y){
  int n = 0;
  fill(0);
  textAlign(CENTER);
  textSize(50);
  for (int r = 0; r <= 2; r++){
  text(a[n], 50+x, 75+y);
  text(b[n], 150+x, 75+y);
  text(c[n], 250+x, 75+y);
  text(d[n], 350+x, 75+y);
  text(e[n], 450+x, 75+y);
  text(f[n], 550+x, 75+y);
  text(g[n], 650+x, 75+y);
  text(h[n], 750+x, 75+y);
  text(i[n], 850+x, 75+y);
  n++;
  y = y +100;
  }
}
