String str = "Løkken skal udskrive alle e'er og tilsidst udskrive hvor mange e'er som er fundet. Ja, så er det rigtigt :)";

int[] chars = {39, 19, 41, 6, 4, 16, 6, 16, 35, 99, 41, 48, 99};

for (int i = 0; i < 13; i++) { //<>//
  print(str.charAt(chars[i]));
}
