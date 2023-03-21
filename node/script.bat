if not exist resultado1 mkdir resultado1
java ../MatrizAleatoria.java 2 2 > ./resultado1/matriz1.txt
node MatrizLoca.js < ./resultado1/matriz1.txt > ./resultado1/resultado1.txt

if not exist resultado2 mkdir resultado2
java ../MatrizAleatoria.java 5 5 > ./resultado2/matriz2.txt
node MatrizLoca.js < ./resultado2/matriz2.txt > ./resultado2/resultado2.txt

if not exist resultado3 mkdir resultado3
java ../MatrizAleatoria.java 10 10 > ./resultado3/matriz3.txt
node MatrizLoca.js < ./resultado3/matriz3.txt > ./resultado3/resultado3.txt

if not exist resultado4 mkdir resultado4
java ../MatrizAleatoria.java 50 50 > ./resultado4/matriz4.txt
node MatrizLoca.js < ./resultado4/matriz4.txt > ./resultado4/resultado4.txt

if not exist resultado5 mkdir resultado5
java ../MatrizAleatoria.java 100 100 > ./resultado5/matriz5.txt
node MatrizLoca.js < ./resultado5/matriz5.txt > ./resultado5/resultado5.txt
