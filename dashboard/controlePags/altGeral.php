<?php

$dadosForm = filter_input_array(INPUT_POST, FILTER_DEFAULT);

$tabela = $dadosForm['tabela'];
$nomeid = $dadosForm['nomeid'];
$id = $dadosForm['id'];
$valor = $dadosForm['valor'];

//var_dump($dadosForm);

if ($valor == 'desativar') {
    $alt = alterarRegistros($tabela, "ativo = 'D'", $nomeid, $id);
} else if ($valor == 'ativar') {
    $alt = alterarRegistros($tabela, "ativo = 'A'", $nomeid, $id);
} else {
    echo 'Ocorreu um erro. ';
    echo 'Por favor, tente novamente.';
    die();
}

//var_dump($alt);

if ($alt === false) {
    echo 'Não foi possível alterar esses dados. ';
    echo 'Por favor, tente novamente.';
    die();
} else if ($alt === true){
    echo 'OK';
    die();
} else {
    echo 'Não foi possível alterar esses dados. ';
    echo 'Por favor, tente novamente.';
    die();
}

?>