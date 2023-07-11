<?php 

// $dados = $_POST['acao'];

$acao = filter_input(INPUT_POST, 'acao', FILTER_SANITIZE_STRING);

switch ($acao) {
    case 'listarPessoa':
        include_once './equipe/listarPessoa.php';
        break;
    case 'listarFuncionario':
        include_once './equipe/listarFuncionario.php';
        break;
}

?>