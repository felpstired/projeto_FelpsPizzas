<?php 

$dadosForm = filter_input_array(INPUT_POST, FILTER_DEFAULT);

$id = $dadosForm['id'];
$nome = $dadosForm['nome'];
$email = $dadosForm['email'];
$telefone = $dadosForm['telefone'];
$cpf = $dadosForm['cpf'];

$listar = listarRegistros2('idpessoas', 'tbpessoas', 'idpessoas', $id);
// var_dump($listar);

if ($listar != false) {
    $alt = alterarRegistros('tbpessoas', "nome = '$nome', email = '$email', telefone = '$telefone', cpf = '$cpf'", 'idpessoas', $id);
//    var_dump($id);
    if ($alt === false) {
        echo 'Não foi possível alterar seus dados. ';
        echo 'Tente novamente.';
        exit();
    } else {
        echo 'OK';
        exit();
    }
} else {    
    echo 'Ocorreu um erro ao tentar alterar seus dados. ';
    echo 'Tente novamente mais tarde.';
    exit();
}

?>