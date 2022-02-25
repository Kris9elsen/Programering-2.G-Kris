byte b[] = loadBytes("text.txt");

for (int i = 0; i < b.length; i++) {
  int a = b[i] & 0xff;
  print(a + " ");
  a -= 300;
  b[i] = (byte)a;
}

saveBytes("text.txt", b);
println("done");
