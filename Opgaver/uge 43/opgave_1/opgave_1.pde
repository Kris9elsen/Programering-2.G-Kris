String str = "Hej med dig!";

void setup(){
  size(0, 0);
}

void draw(){
  
  int n = 0;
  while(n < str.length()){
    if(n == 5){
      println(str.charAt(n));
    }
    n++;
  }
  
  for(int i = 0; i < str.length(); i++){
    if(i == 5) {
      println(str.charAt(i));
    }
  }
}
