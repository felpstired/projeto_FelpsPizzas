<?php


include_once './config/conexao.php';
include_once './config/constantes.php';
include_once './func/functions.php';


// $acao = $_POST['acao'];

$acao = filter_input(INPUT_POST, 'acao', FILTER_SANITIZE_STRING);

switch ($acao) {


    case 'listarPessoa':
        include_once './controlePags/equipe/listarPessoa.php';
        break;
    case 'addPessoa':
        include_once './controlePags/equipe/addPessoa.php';
        break;
    case 'altPessoa':
        include_once './controlePags/equipe/altPessoa.php';
        break;


    case 'listarFuncionario':
        include_once './controlePags/equipe/listarFuncionario.php';
        break;
    case 'addFunci':
        include_once './controlePags/equipe/addFuncionario.php';
        break;


    case 'listarMenu':
        include_once './controlePags/cardapio/listarMenu.php';
        break;
    case 'listarCardapio':
        include_once './controlePags/cardapio/listarCardapio.php';
        break;


    case 'listarBanner':
        include_once './controlePags/banner/listarBanner.php';
        break;


    case 'listarCard':
        include_once './controlePags/card/listarCard.php';
        break;
    case 'addCard':
        include_once './controlePags/card/addCard.php';
        break;


    case 'listarSobre':
        include_once './controlePags/sobre/listarSobre.php';
        break;


    case 'listarGaleria':
        include_once './controlePags/galeria/listarGaleria.php';
        break;


    case 'listarEvento':
        include_once './controlePags/evento/listarEvento.php';
        break;


    case 'listarMensagem':
        include_once './controlePags/contato/listarMensagem.php';
        break;
    case 'listarInfo':
        include_once './controlePags/contato/listarInfo.php';
        break;
    case 'listarMapa':
        include_once './controlePags/contato/listarMapa.php';
        break;


    case 'excGeral':
        include_once './controlePags/excGeral.php';
        break;
    case 'altAtivo':
        include_once './controlePags/altAtivo.php';
        break;
}

?>

 <script src="js/painel.js"></script>