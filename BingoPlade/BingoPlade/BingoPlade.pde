int [] a = new int [3];
int [] b = new int [3];
int [] c = new int [3];
int [] d = new int [3];
int [] e = new int [3];
int [] f = new int [3];
int [] g = new int [3];
int [] h = new int [3];
int [] i = new int [3];

void setup(){
  for(int n = 0; n <= 3; n++){
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

void draw(){

}
