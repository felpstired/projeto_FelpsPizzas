<?php

$dadosForm = filter_input_array(INPUT_POST, FILTER_DEFAULT);

$idpessoas = $dadosForm['pessoa'];
$cargo = $dadosForm['cargo'];

$admissao = str_replace('/','-',$dadosForm['admissao']);
$admissao = date('Y-m-d', strtotime($admissao));

$listar = listarRegistrosPar('nome','tbfuncionarios','A','idpessoas',$idpessoas);
var_dump($listar);

if ($listar === false) {
    $cad = inserirRegistros('tbfuncionarios', 'idpessoas, cargo, admissao, cadastro', "'$idpessoas','$cargo','$admissao'");
    if ($cad === false) {
        echo 'Não foi possível registrar seus dados. ';
        echo 'Tente novamente.';
        exit();
    } else {
        echo 'OK';
        exit();
    }
} else {
    echo 'Esse funcionário ja está cadastrado no nosso site. ';
    exit();
}

?>