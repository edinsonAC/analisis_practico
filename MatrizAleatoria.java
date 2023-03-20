
public class MatrizAleatoria {
    public static void main(String[] args) {
        int filas = Integer.parseInt(args[0]);
        int cols = Integer.parseInt(args[1]);
        int[][] matriz = new int[filas][cols];

        System.out.println(filas + " " + cols);
        for (int i = 0; i < filas; i++) {
            for (int j = 0; j < cols; j++) {
                matriz[i][j] = (int) (Math.random() * 1000);
                if (j == matriz[i].length - 1) {
                    System.out.print(matriz[i][j]);
                } else {
                    System.out.print(matriz[i][j] + " ");
                }
            }
            System.out.println();
        }
    }
}
