@echo off
setlocal

set NUM_RUNS=20
if not exist resultados mkdir resultados

for /l %%i in (1,1,%NUM_RUNS%) do (

    if not exist resultados\matriz_2_2 mkdir resultados\matriz_2_2
    java ../MatrizAleatoria.java 2 2 > resultados\matriz_2_2\matriz%%i.txt
    node MatrizLoca.js < resultados\matriz_2_2\matriz%%i.txt > resultados\matriz_2_2\resultado%%i.txt

    if not exist resultados\matriz_5_5 mkdir resultados\matriz_5_5
    java ../MatrizAleatoria.java 5 5 > resultados\matriz_5_5\matriz%%i.txt
    node MatrizLoca.js < resultados\matriz_5_5\matriz%%i.txt > resultados\matriz_5_5\resultado%%i.txt

    if not exist resultados\matriz_10_10 mkdir resultados\matriz_10_10
    java ../MatrizAleatoria.java 10 10 > resultados\matriz_10_10\matriz%%i.txt
    node MatrizLoca.js < resultados\matriz_10_10\matriz%%i.txt > resultados\matriz_10_10\resultado%%i.txt

    if not exist resultados\matriz_50_50 mkdir resultados\matriz_50_50
    java ../MatrizAleatoria.java 50 50 > resultados\matriz_50_50\matriz%%i.txt
    node MatrizLoca.js < resultados\matriz_50_50\matriz%%i.txt > resultados\matriz_50_50\resultado%%i.txt

    if not exist resultados\matriz_100_100 mkdir resultados\matriz_100_100
    java ../MatrizAleatoria.java 100 100 > resultados\matriz_100_100\matriz%%i.txt
    node MatrizLoca.js < resultados\matriz_100_100\matriz%%i.txt > resultados\matriz_100_100\resultado%%i.txt

)

endlocal
