<?php

$dadosForm = filter_input_array(INPUT_POST, FILTER_DEFAULT);

$tabela = $dadosForm['tabela'];
$nomeid = $dadosForm['nomeid'];
$id = $dadosForm['id'];

$exc = excluirRegistros($tabela,$nomeid,$id);

if ($exc === false) {
     echo 'Não foi possível excluir esses dados.';
     echo 'Tente novamente.';
    exit();
} else if ($exc === true){
    echo 'OK';
    exit();
} else {
     echo 'Não foi possível excluir esses dados.';
     echo 'Tente novamente.';
//    var_dump($exc);
    exit();
}

?>