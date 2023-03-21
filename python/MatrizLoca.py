import time

tiempoInicio = time.time()
# el tiempo lo maneja en segundos
registros = input().split(" ")
filas = int(registros[0])
cols = int(registros[1])
matriz = [[0] * cols for i in range(filas)]

for i in range(filas):
    nums = input().split(" ")
    for f in range(cols):
        matriz[i][f] = int(nums[f])
        if f % 2 == 0:
            matriz[i][f] += 2
        if i % 2 == 0:
            matriz[i][f] += 1
        else:
            if i % 2 != 0 and f % 2 != 0:
                matriz[i][f] -= 3

for v in range(len(matriz)):
    for w in range(len(matriz[v])):
        if w == len(matriz[v]) - 1:
            print(matriz[v][w])
        else:
            print(matriz[v][w], end=" ")

tiempoFinal = time.time()
tiempoTotal = (tiempoFinal - tiempoInicio) * 1000

print(f"El programa tardó {tiempoTotal} milisegundos en ejecutarse.")
