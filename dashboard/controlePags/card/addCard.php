<?php 

$dadosForm = filter_input_array(INPUT_POST, FILTER_DEFAULT);

$icon = $dadosForm['icon'];
$titulo = $dadosForm['titulo'];
$desc = $dadosForm['desc'];

$cad = inserirRegistros('tbcard', 'icon, titulo, descricao, cadastro', "'$icon','$titulo','$desc'");
// var_dump($cad);
if ($cad === false) {
    echo 'Não foi possível registrar os dados. ';
    echo 'Tente novamente.';
    exit();
} else {
    echo 'OK';
    exit();
}

?>