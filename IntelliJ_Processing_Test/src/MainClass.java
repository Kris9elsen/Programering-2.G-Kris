import processing.core.PApplet;

public class MainClass extends PApplet {
    public static void main(String[] args) {
        PApplet.main(new String[] {MainClass.class.getName()});
    }

    public void settings() {
        size(200, 200);
    }
    public void setup() {
        surface.setResizable(true);
        surface.setLocation(100, 100);
        surface.setTitle("IntelliJ_Processing_Test");
    }

    public void draw() {
        int j = 0;
        for (int i = 0; i < random(1, 50); i++){
            j++;
        }
        println(j);
    }
}
