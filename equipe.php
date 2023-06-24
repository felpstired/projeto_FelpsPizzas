<?php

$listar = listarRegistrosJoin2('tbpessoas.nome, tbfuncionarios.idfuncionarios, tbfuncionarios.cargo, tbequipe.descricao, tbequipe.imagem', 'tbpessoas', 'INNER', 'tbfuncionarios', 'idpessoas', 'INNER', 'tbequipe', 'idfuncionarios', 'A');

?>

<!-- ======= Chefs Section ======= -->
<section id="chefs" class="chefs section-bg">
  <div class="container" data-aos="fade-up">

    <div class="section-header">
      <h2>Equipe</h2>
      <p>Nossos <span>Profissionais</span> Chefes de Cozinha</p>
    </div>

    <div class="row gy-4">

      <?php

      // var_dump($listar);

      if ($listar === false) {
        echo '<h6 class="text-center mt-5 p-3 bg-danger text-white">Não existe registros no banco!</h6>';
      } else {
        $delay = 1;
        foreach ($listar as $itemLista) {


          $idfunc = $itemLista->idfuncionarios;
          $nome = $itemLista->nome;
          $cargo = $itemLista->cargo;
          $descricao = $itemLista->descricao;
          $imagem = $itemLista->imagem;

      ?>

          <div class="col-lg-4 col-md-6 d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="<?php echo $delay; ?>00">
            <div class="chef-member">
              <div class="member-img">
                <img src="<?php echo $imagem; ?>" class="img-fluid" alt="">

                <div class="social">
                  <?php

                  $listarR = listarRegistrosPar('rede, tiporede', 'tbredes', 'A', 'idfuncionarios', $idfunc);

                  if ($listarR === false) {
                    echo '<h6 class="text-center mt-5 p-3 bg-danger text-white">Não existe registros no banco!</h6>';
                  } else {
                    foreach ($listarR as $itemListaR) {

                      $redeL = $itemListaR->rede;
                      $tiporede = $itemListaR->tiporede;
                      if ($redeL != '') {

                  ?>
                        <a href="<?php echo $redeL; ?>" target="blank"><i class="bi bi-<?php echo $tiporede; ?>"></i></a>
                  <?php

                      }
                    }
                  }

                  ?>
                </div>

              </div>
              <div class="member-info">
                <h4>
                  <?php echo $nome; ?>
                </h4>
                <span>
                  <?php echo $cargo; ?>
                </span>
                <p>
                  <?php echo $descricao; ?>
                </p>
              </div>
            </div>
          </div><!-- End Chefs Member -->

      <?php

          $delay++;
        }
      }

      ?>

    </div>

  </div>
</section><!-- End Chefs Section -->