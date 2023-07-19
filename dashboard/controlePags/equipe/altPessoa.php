<?php 

$dadosForm = filter_input_array(INPUT_POST, FILTER_DEFAULT);

$id = $dadosForm['id'];
$nome = $dadosForm['nome'];
$email = $dadosForm['email'];
$telefone = $dadosForm['telefone'];
$cpf = $dadosForm['cpf'];

$listar = listarRegistrosPar2('email','tbpessoas','A','email',$email);
// var_dump($listar);

if ($listar === false) {
    $alt = alterarRegistros('tbpessoas', "nome = '$nome', email = '$email', telefone = '$telefone', cpf = '$cpf'", 'idpessoas', $id);
    // var_dump($idpessoa);
    if ($alt === false) {
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