public class fixTeen {
    public static void main(String[] args) {
        int a = 14;
        int b = 2;
        int c = 15;

        a = fixTeen(a);
        b = fixTeen(b);
        c = fixTeen(c);
        int res = a + b + c;
        System.out.println(res);
    }
    public static int fixTeen(int n) {
        if (n <= 19 && n >= 13) {
            return n -= n;
        } else {
            return n;
        }
    }
}


