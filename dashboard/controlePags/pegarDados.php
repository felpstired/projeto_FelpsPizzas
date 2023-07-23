<?php

$dadosForm = filter_input_array(INPUT_POST, FILTER_DEFAULT);

$campos = $dadosForm['campos'];
$tabela = $dadosForm['tabela'];
$nomeid = $dadosForm['nomeid'];
$id = $dadosForm['id'];

$dados = listarRegistros2($campos, $tabela, $nomeid, $id);


//if ($dados != false) {
//    $dadosStr = is_string($dados);
//    if ($dadosStr == 1 OR $dadosStr) {
//        echo 'ERRO';
//        die();
//    } else {
//        echo json_encode($dados);
//        die();
//    }
//} else {
//    echo 'ERRO';
//    die();
//}

if ($dados != false) {
    $dadosStr = is_string($dados);
    if ($dadosStr == 1 OR $dadosStr) {
        echo json_encode(['dadosArray' => 'ERRO']);
        die();
    } else {
        echo json_encode(['dadosArray' => $dados]);
        die();
    }
} else {
    echo json_encode(['dadosArray' => 'ERRO']);
    die();
}

?>