import processing.core.PApplet;
import processing.net.*;

public class MainClass extends PApplet {
    public static void main(String[] args) {
        PApplet.main("MainClass");
    }

    Server s;
    Client c;
    String input;

    public void settings() {
        size(200, 200);
    }

    public void setup() {
        background(0);
        s = new Server(this, 12345);
    }

    public void draw() {
        c = s.available();
        if (c != null) {
            input = c.readString();
            print(input);
        }
    }
}
