<!DOCTYPE html>
<html lang="pt-BR">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Felps Pizza's | Dashboard</title>

  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css">
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <link rel="stylesheet" href="dist/css/adminlte.min.css">

  <?php 
  
  include_once './config/conexao.php';
  include_once './config/constantes.php';
  include_once './func/functions.php';
  
  ?>
</head>

<body class="hold-transition sidebar-mini">

  <div class="wrapper">

    <?php

    include_once './navbar.php';
    include_once './sidebar.php';

    ?>

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">

      <div class="content-header">
      </div>

      <div class="content">
        <div class="container-fluid">
          <div class="text-center" id="loading"></div>
          <div class="conteudo" id="conteudo">
          </div>
        </div>
      </div>

    </div>

    <aside class="control-sidebar control-sidebar-dark">
    </aside>

    <footer class="main-footer">
      <strong>Copyright &copy; 2014-<?php echo date('Y'); ?> <a href="https://tiredartist.com.br/projetosite" class="text-danger" target="_blank">Felps Pizza's</a>.</strong>
      Todos os direitos reservados.
      <div class="float-right d-none d-sm-inline-block">
        <b>Versão</b> 1.0
      </div>
    </footer>
  </div>

  <script src="plugins/jquery/jquery.min.js"></script>
  <script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="dist/js/adminlte.js"></script>
  <script src="plugins/chart.js/Chart.min.js"></script>
  <script src="dist/js/demo.js"></script>
  <script src="dist/js/pages/dashboard3.js"></script>

  <!-- Script criado fora do layout -->
  <script src="js/painel.js"></script>

</body>

</html>