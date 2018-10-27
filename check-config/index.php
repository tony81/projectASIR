<?php

echo '<pre><h3>';
print_r($_SERVER['FOO']);
echo '</h3></pre>';
echo "<br/>";

$enlace = mysqli_connect("database", "root", "mysql_wp", "mysql");

if (!$enlace) {
    echo "Error: No se pudo conectar a MySQL." . PHP_EOL;
    echo "errno de depuración: " . mysqli_connect_errno() . PHP_EOL;
    echo "error de depuración: " . mysqli_connect_error() . PHP_EOL;
    exit;
}

echo "Éxito: Se realizó una conexión apropiada a MySQL!" . PHP_EOL."<br/><br/>";
echo "Información del host: " . mysqli_get_host_info($enlace) . PHP_EOL;

mysqli_close($enlace);

phpinfo();
