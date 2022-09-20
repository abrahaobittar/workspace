<?php
//Script util quando não tenho permissão para listar o raiz do localhost
//No caso do meu config em windows não tem problema, o problema é quando uso em casa via container linux

$d = dir(".");
echo 'hallu from local:';
echo '<br>';
echo "<ul>";

while (false !== ($diretorio = $d->read())) {
    if (is_dir($diretorio) && ($diretorio != '.') && ($diretorio != '..'))
        echo "<li><a href='{$diretorio}'>{$diretorio}</a></li>";
}

echo "</ul>";

$d->close();

//phpinfo();