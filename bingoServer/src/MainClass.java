import processing.core.PApplet;
import processing.net.*;

public class MainClass extends PApplet {
    public static void main(String[] args){PApplet.main("MainClass");}

    CBP[] clientData = new CBP[0];
    Server s;
    String input;
    Client c;
    Client clients[] = new Client[0];
    String IP;
    int[] drawnNum = new int[0];
    boolean goodNum = false;
    int num;

    //-- GUI
    boolean LT = false;
    final int DISPLAY_DURATION = 45;
    int timer;
    int boxsize;
    int cols, rows;

    public void settings() {
        size(1280, 720);
    }

    public void setup() {
        frameRate(10);
        surface.setResizable(true);
        surface.setTitle("BingoBango");
        s = new Server(this, 42069);
        cols = 18;
        rows = 5;
    }

    public void serverEvent(Server someServer, Client someClient) {
        System.out.println("New Client connected: " + someClient.ip());
        clients = (Client[]) expand(clients, clients.length +1 );
        clients[clients.length - 1] = someClient;
        clients[clients.length - 1].write("CONNECTED");
    }

    public void draw() {
        c = s.available();
        if (c != null) {
            stringInput();
        }
        if (keyPressed) {
            if (key == ' ') {
                LT = true; // GUI
                if (drawnNum.length < 90) {
                    System.out.println("-------------------");
                    drawNum();
                }
            }
        }
        // GUI
        background(30);
        pushMatrix();
        translate(width/2, height/2);
        GUI();
        popMatrix();
        translate((float) (width/4.9), (float) (height/1.5));
        tabel();
    }

    private void tabel() {
        int tal = 0;
        textSize(height/40);
        textAlign(CENTER);
        boxsize = width/30;
        for (int i = 0; i < cols; i++) {
            for (int j = 0; j < rows; j++) {
                int x = i*boxsize;
                int y = j*boxsize;
                tal++;
                fill(255);
                stroke(0);
                rect(x, y, boxsize, boxsize);
                fill(0);
                for (int o = 0; o < drawnNum.length; o++) {
                    if (tal == drawnNum[o]) {
                        text(tal, (float) (x + boxsize/2), (float) (y + boxsize/1.5));
                    } else {
                        text(" ", (float) (x + boxsize/2), (float) (y + boxsize/1.5));
                    }
                }
            }
        }
    }

    private void GUI() {
        if (LT) {
            timer++;
        }

        if (LT) {
            textSize(width/4);
            textAlign(CENTER, BOTTOM);
            fill(255);
            text(num, 0, height/7);

            if (timer > DISPLAY_DURATION) {
                LT = false;
                timer = 0;
            }
        }

        fill(255);
        int n = (int) random(1, 91);

        if (!LT) {
            textSize(width/4);
            textAlign(CENTER, BOTTOM);
            text(n, 0, height/7);
        }
        textSize(40);
        textAlign(BOTTOM);
        fill(255);
        pushMatrix();
        translate((float) (width/2.2), height/4);
        popMatrix();
    }

    private void stringInput() {
        input = clients[clients.length - 1].readString();
        System.out.println(input + " ");
        clientData = (CBP[]) expand(clientData, clientData.length + 1);
        clientData[clientData.length - 1] = new CBP(input);
    }

    private void drawNum() {
        randomNum();
        println(drawnNum.length + " : good num = " + num);
        goodNum = false;
        checkMatch(num);
        System.out.println("Checked Match");
        checkBingo();
        System.out.println("Cheked Bingo");
        for (int i = 0; i < clients.length - 1; i++) {
            clients[i].write(num);
        }
        System.out.println("Ready for next draw");
    }

    private void randomNum() {
        drawnNum = expand(drawnNum, drawnNum.length + 1);
        while (goodNum == false) {
            int i = 0;
            num = (int) random(1, 91);
            while (1 < drawnNum.length - 1) {
                if (num == drawnNum[i]) {
                    break;
                } else if (i == drawnNum.length - 1 && num != drawnNum[drawnNum.length - 1]) {
                    drawnNum[drawnNum.length - 1] = num;
                    goodNum = true;
                    break;
                }
                i++;
            }
        }
    }

    private void checkMatch(int n) {
        for (int i = 0; 1 < clientData.length; i++) {
            for (int j = 0; j < 3; j++) {
                for (int k = 0; k < 9; k++) {
                    if (clientData[i].cData[k][j] == n) {
                        System.out.println("Match ved: " + clientData[i].navn + " Tal: " + clientData[i].cData[k][j]);
                        clientData[i].cData[k][j] = 0;
                        System.out.println("Mtach på: " + clientData[i].navn + " Rekke: " + j + " Col: " + k + " nummer: " + clientData[i].cData[k][j]);
                        break;
                    }
                }
            }
        }
    }

    private void checkBingo () {
        for (int i = 0; i < clientData.length; i++) {
            for (int j = 0; j < 3; j++) {
                int sum = 0;
                String row = "";
                for (int k = 0; k < 9; k++) {
                    sum += clientData[i].cData[k][j];
                    row += clientData[i].cData[k][j] + " ";
                }
                if (sum == 0) {
                    System.out.println(clientData[i].navn + " har bingo pa rekke: " + j);
                    System.out.println("Tal i rekke: " + row);
                }
            }
        }
    }
}

