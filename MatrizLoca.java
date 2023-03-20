
import java.util.Scanner;
import java.util.*;

public class Main {
    public static void main(String[] args) {
        long tiempoInicio = System.currentTimeMillis();
        Scanner sc = new Scanner(System.in);

        String[] registros = sc.nextLine().split(" ");
        int filas = Integer.parseInt(registros[0]);
        int cols = Integer.parseInt(registros[1]);
        int[][] matriz = new int[filas][cols];
        for (int i = 0; i < filas; i++) {
            String[] nums = sc.nextLine().split(" ");
            for (int f = 0; f < cols; f++) {
                matriz[i][f] = Integer.parseInt(nums[f]);
                if (f % 2 == 0) {
                    matriz[i][f] += 2;
                }
                if (i % 2 == 0) {
                    matriz[i][f] += 1;
                } else {
                    if (i % 2 != 0 && f % 2 != 0) {
                        matriz[i][f] -= 3;
                    }
                }
            }
        }
        for (int v = 0; v < matriz.length; v++) {
            for (int w = 0; w < matriz[v].length; w++) {
                if (w == matriz[v].length - 1) {
                    System.out.print(matriz[v][w]);
                } else {
                    System.out.print(matriz[v][w] + " ");
                }
            }
            System.out.println();
        }
        long tiempoFinal = System.currentTimeMillis();
        long tiempoTotal = tiempoFinal - tiempoInicio;

        System.out.println("El programa tardó " + tiempoTotal + " milisegundos en ejecutarse.");

    }
}