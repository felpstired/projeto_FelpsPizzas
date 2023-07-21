<?php

$dadosForm = filter_input_array(INPUT_POST, FILTER_DEFAULT);

$campos = $dadosForm['campos'];
$tabela = $dadosForm['tabela'];
$nomeid = $dadosForm['nomeid'];
$id = $dadosForm['id'];

$dados = listarRegistros2($campos, $tabela, $nomeid, $id);

$dadosObj = is_object($dados);

if ($dadosObj === true) {
    return $dados;
} else {
    return 'ERRO';
}

?>