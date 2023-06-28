<?php

// contagem de pessoas (clientes)
$listar = listarRegistros('COUNT(*) as contagem', 'tbpessoas', 'A');
// var_dump($listar);
if ($listar === false) {
  echo '<h6 class="text-center mt-5 p-3 bg-danger text-white">Não existe registros no banco!</h6>';
} else {
  foreach ($listar as $itemLista){
    $contC = $itemLista->contagem;
  }
}


// contagem de pratos disponíveis
$listarP = listarRegistros('COUNT(*) as contagem', 'tbcardapio', 'A');
// var_dump($listarP);
if ($listarP === false) {
  echo '<h6 class="text-center mt-5 p-3 bg-danger text-white">Não existe registros no banco!</h6>';
} else {
  foreach ($listarP as $itemLista){
    $contP = $itemLista->contagem;
  }
}

// contagem de horas trabalhadas?
$listarH = listarRegistros('MIN(admissao) as minHora', 'tbfuncionarios', 'A');
// var_dump($listarH);
if ($listar === false) {
  echo '<h6 class="text-center mt-5 p-3 bg-danger text-white">Não existe registros no banco!</h6>';
} else {
  foreach ($listarH as $itemLista){
    $minHora = $itemLista->minHora;
  }
  // var_dump($minHora);
  // var_dump(DATATIMEATUAL);
  $intervalo =  strtotime(DATATIMEATUAL) - strtotime($minHora);
  $dif = $intervalo / 60 / 60;
  $contH = intval($dif);
  // var_dump($horaTrab);
}


// contagem de funcionarios
$listarF = listarRegistros('COUNT(*) as contagem', 'tbfuncionarios', 'A');
// var_dump($listarF);
if ($listarF === false) {
  echo '<h6 class="text-center mt-5 p-3 bg-danger text-white">Não existe registros no banco!</h6>';
} else {
  foreach ($listarF as $itemLista){
    $contF = $itemLista->contagem;
  }
}

?>

<!-- ======= Stats Counter Section ======= -->
<section id="stats-counter" class="stats-counter">
  <div class="container" data-aos="zoom-out">

    <div class="row gy-4">

      <div class="col-lg-3 col-md-6">
        <div class="stats-item text-center w-100 h-100">
          <span data-purecounter-start="0" data-purecounter-end="<?php echo $contC; ?>" data-purecounter-duration="1" class="purecounter"></span>
          <p>Clientes</p>
        </div>
      </div><!-- End Stats Item -->

      <div class="col-lg-3 col-md-6">
        <div class="stats-item text-center w-100 h-100">
          <span data-purecounter-start="0" data-purecounter-end="<?php echo $contP; ?>" data-purecounter-duration="1" class="purecounter"></span>
          <p>Pratos Disponíveis</p>
        </div>
      </div><!-- End Stats Item -->

      <div class="col-lg-3 col-md-6">
        <div class="stats-item text-center w-100 h-100">
          <span data-purecounter-start="0" data-purecounter-end="<?php echo $contH; ?>" data-purecounter-duration="1" class="purecounter"></span>
          <p>Horas de Suporte</p>
        </div>
      </div><!-- End Stats Item -->

      <div class="col-lg-3 col-md-6">
        <div class="stats-item text-center w-100 h-100">
          <span data-purecounter-start="0" data-purecounter-end="<?php echo $contF; ?>" data-purecounter-duration="1" class="purecounter"></span>
          <p>Funcionários</p>
        </div>
      </div><!-- End Stats Item -->

    </div>

  </div>
</section><!-- End Stats Counter Section -->