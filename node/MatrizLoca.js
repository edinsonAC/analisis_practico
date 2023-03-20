const readline = require('readline');
const rl = readline.createInterface({
    input: process.stdin,
    output: process.stdout
});

let tiempoInicio = Date.now();

rl.question('', (line) => {
    let registros = line.split(" ");
    let filas = parseInt(registros[0]);
    let cols = parseInt(registros[1]);
    let matriz = []
    console.log("quiero ver registros", registros);

    let f = 0;
    for (i = 0; i < filas; i++) {
        rl.question('', (line) => {
            let nums = line.split(" ");
            console.log("quiero ver ", nums);
            matriz.push(nums)
            for (f = 0; f < cols; f++) {
                // matriz[i][f] = parseInt(nums[f]);
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
        });
    }
    rl.close();
    for (let i = 0; i < matriz.length; i++) {
        for (let j = 0; j < matriz[i].length; j++) {
            console.log(matriz[i][j]);
        }
    }
    let tiempoFinal = Date.now();
    let tiempoTotal = tiempoFinal - tiempoInicio;
    console.log("El programa tardo " + tiempoTotal + " milisegundos en ejecutarse.");

});


