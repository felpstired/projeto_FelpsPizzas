<?php

$dadosForm = filter_input_array(INPUT_POST, FILTER_DEFAULT);

$nome = $dadosForm['nome'];
$email = $dadosForm['email'];
$telefone = $dadosForm['telefone'];
$cpf = $dadosForm['cpf'];

$listar = listarRegistrosPar2('email','tbpessoas','A','email',$email);
// var_dump($listar);

if ($listar === false) {
    $cad = inserirRegistros('tbpessoas', 'nome, email, telefone, cpf, cadastro', "'$nome','$email','$telefone', '$cpf'");
    // var_dump($idpessoa);
    if ($cad === false) {
        echo 'Não foi possível registrar seus dados. ';
        echo 'Tente novamente.';
        exit();
    } else {
        echo 'OK';
        exit();
    }
} else {    
    echo 'Já existe uma conta com esse e-mail cadastrado no nosso site. ';
    echo 'Tente novamente com outros dados.';
    exit();
}

?>
