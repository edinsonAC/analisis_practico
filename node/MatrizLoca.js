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
  let matriz = new Array(filas).fill().map(() => new Array(cols));

  let i = 0;
  let f = 0;
  rl.on('line', (line) => {
    let nums = line.split(" ");
    for (f = 0; f < cols; f++) {
      matriz[i][f] = parseInt(nums[f]);
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
    i++;
    if (i === filas) {
      rl.close();
      for (let v = 0; v < matriz.length; v++) {
        console.log(matriz[v].join(" "));
      }
      let tiempoFinal = Date.now();
      let tiempoTotal = tiempoFinal - tiempoInicio;
      console.log("El programa tardó " + tiempoTotal + " milisegundos en ejecutarse.");
    }
  });
});
