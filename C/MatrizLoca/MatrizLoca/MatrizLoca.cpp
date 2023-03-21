#include <iostream>
#include <chrono>
#include <string>
#include <sstream>

using namespace std;

int main() {
    auto tiempoInicio = chrono::high_resolution_clock::now();

    string input;
    getline(cin, input);
    stringstream ss(input);
    int filas = 0, cols = 0;
    ss >> filas >> cols;

    int** matriz = new int* [filas];
    for (int i = 0; i < filas; i++) {
        matriz[i] = new int[cols];
    }

    for (int i = 0; i < filas; i++) {
        getline(cin, input);
        stringstream ss(input);
        for (int j = 0; j < cols; j++) {
            ss >> matriz[i][j];
            if (j % 2 == 0) {
                matriz[i][j] += 2;
            }
            if (i % 2 == 0) {
                matriz[i][j] += 1;
            }
            else {
                if (i % 2 != 0 && j % 2 != 0) {
                    matriz[i][j] -= 3;
                }
            }
        }
    }

    for (int i = 0; i < filas; i++) {
        for (int j = 0; j < cols; j++) {
            if (j == cols - 1) {
                cout << matriz[i][j];
            }
            else {
                cout << matriz[i][j] << " ";
            }
        }
        cout << endl;
    }

    auto tiempoFinal = chrono::high_resolution_clock::now();
    auto tiempoTotal = chrono::duration_cast<chrono::milliseconds>(tiempoFinal - tiempoInicio).count();

    cout << "El programa tardo " << tiempoTotal << " milisegundos en ejecutarse." << endl;

    return 0;
}
