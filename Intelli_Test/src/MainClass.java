public class MainClass {
    public static void main(String[] args) {
        boolean peter = false;
        int jeppe = 10;
        float kris = (float) 0.0001;
        char bogstav = 65;
        byte b = 1;

        while (!peter) {
            for (int i = 0; i < jeppe; i++) {
                if (bogstav == 'A') {
                    kris = kris + b;
                    System.out.println(kris);
                }
            }
            if ( kris > 10 ) {
                peter = true;
            }
        }

    }

}

