<?php  

// contagem de pessoas (clientes)
$listar = listarRegistros('COUNT(*)','tbpessoas','A');

// contagem de projetos (???)
$listarP = listarRegistros('COUNT(*)','tbpessoas','A');

// contagem de horas trabalhadas?
$listarH = listarRegistros('COUNT(*)','tbpessoas','A');

// contagem de funcionarios
$listarF = listarRegistros('COUNT(*)','tbfuncionarios','A');

// var_dump($listar);

?>

<!-- ======= Stats Counter Section ======= -->
    <section id="stats-counter" class="stats-counter">
      <div class="container" data-aos="zoom-out">

        <div class="row gy-4">



          <div class="col-lg-3 col-md-6">
            <div class="stats-item text-center w-100 h-100">
              <span data-purecounter-start="0" data-purecounter-end="<?php echo $listar; ?>" data-purecounter-duration="1" class="purecounter"></span>
              <p>Clientes</p>
            </div>
          </div><!-- End Stats Item -->

          <div class="col-lg-3 col-md-6">
            <div class="stats-item text-center w-100 h-100">
              <span data-purecounter-start="0" data-purecounter-end="<?php echo $listarP; ?>" data-purecounter-duration="1" class="purecounter"></span>
              <p>Projetos</p>
            </div>
          </div><!-- End Stats Item -->

          <div class="col-lg-3 col-md-6">
            <div class="stats-item text-center w-100 h-100">
              <span data-purecounter-start="0" data-purecounter-end="<?php echo $listarH; ?>" data-purecounter-duration="1" class="purecounter"></span>
              <p>Horas de Suporte</p>
            </div>
          </div><!-- End Stats Item -->

          <div class="col-lg-3 col-md-6">
            <div class="stats-item text-center w-100 h-100">
              <span data-purecounter-start="0" data-purecounter-end="<?php echo $listarF; ?>" data-purecounter-duration="1" class="purecounter"></span>
              <p>Funcionários</p>
            </div>
          </div><!-- End Stats Item -->

        </div>

      </div>
    </section><!-- End Stats Counter Section -->