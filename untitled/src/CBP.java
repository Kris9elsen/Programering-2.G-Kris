import static processing.core.PApplet.split;

public class CBP {
    String navn;
    int[][] cData = new int[9][3];
    String bingoNum;

    CBP(String data) {
        int k = 1;
        String[] del = split(data, ',');
        navn = del[0];
        for (int i = 0; i < 9; i++) {
            for (int j = 0; i < 3; j++) {
                cData[i][j] = Integer.parseInt(del[k]);
                k++;
            }
        }
    }
}
