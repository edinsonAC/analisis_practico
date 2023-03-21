<?php
$tiempoInicio = microtime(true);
$stdin = fopen('php://stdin', 'r');

$registros = explode(" ", fgets($stdin));
$filas = intval($registros[0]);
$cols = intval($registros[1]);
$matriz = array();
for ($i = 0; $i < $filas; $i++) {
    $nums = explode(" ", fgets($stdin));
    for ($f = 0; $f < $cols; $f++) {
        $matriz[$i][$f] = intval($nums[$f]);
        if ($f % 2 == 0) {
            $matriz[$i][$f] += 2;
        }
        if ($i % 2 == 0) {
            $matriz[$i][$f] += 1;
        } else {
            if ($i % 2 != 0 && $f % 2 != 0) {
                $matriz[$i][$f] -= 3;
            }
        }
    }
}
for ($v = 0; $v < count($matriz); $v++) {
    for ($w = 0; $w < count($matriz[$v]); $w++) {
        if ($w == count($matriz[$v]) - 1) {
            echo $matriz[$v][$w];
        } else {
            echo $matriz[$v][$w] . " ";
        }
    }
    echo "\n";
}
$tiempoFinal = microtime(true);
$tiempoTotal = ($tiempoFinal - $tiempoInicio) * 1000;

echo "El programa tardó " . $tiempoTotal . " milisegundos en ejecutarse.\n";
fclose($stdin);
?>