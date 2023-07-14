<?php 

$dadosForm = filter_input_array(INPUT_POST, FILTER_DEFAULT);

$icon = $dadosForm['icon'];
$titulo = $dadosForm['titulo'];
$desc = $dadosForm['desc'];

echo("Card cadastrado com sucesso! Icon: $icon, Titulo: $titulo, Desc: $desc.");

?>