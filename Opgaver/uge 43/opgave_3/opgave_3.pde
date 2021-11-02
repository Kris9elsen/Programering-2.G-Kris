String str = "Dette er en sætning som indeholder mange e'er. Men hvor mange er der?";

//while loop
int b = 0;
int n = 0;
while (n < str.length()) {
  char a = str.charAt(n);
  if (a == 'e' || a == 'E') {
    print(a);
    b++;
  }
  n++;
}
println(b);

//for loop
int c = 0;

for (int i = 0; i < str.length(); i++) {
  if (str.charAt(i) == 'e' || str.charAt(i) =='E') { //Johannes er bøsse
    print(str.charAt(i));
    c++;
  }
}
println(c);
