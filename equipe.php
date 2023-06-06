<?php

$listarP = listarRegistros('idpessoas, nome', 'tbpessoas', 'A');

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

      if ($listarP === false) {
        echo '<h6 class="text-center mt-5 p-3 bg-danger text-white">Não existe registros no banco!</h6>';
      } else {
        $delay = 1;
        foreach ($listarP as $itemLista) {

          $idpessoas = $itemLista->idpessoas;
          $nome = $itemLista->nome;

          $listarF = listarRegistrosPar('idfuncionarios, cargo', 'tbfuncionarios', 'A', 'idpessoas', $idpessoas);

          if ($listarF === false) {
            echo '<h6 class="text-center mt-5 p-3 bg-danger text-white">Não existe registros no banco!</h6>';
          } else {
            foreach ($listarF as $itemListaF) {

              $idfunc = $itemListaF->idfuncionarios;
              $cargo = $itemListaF->cargo;

              $listarE = listarRegistrosPar('descricao, imagem', 'tbequipe', 'A', 'idfuncionarios', $idfunc);

              if ($listarE === false) {
                echo '<h6 class="text-center mt-5 p-3 bg-danger text-white">Não existe registros no banco!</h6>';
              } else {
                foreach ($listarE as $itemListaE) {

                  $descricao = $itemListaE->descricao;
                  $imagem = $itemListaE->imagem;





                  ?>

                  <div class="col-lg-4 col-md-6 d-flex align-items-stretch" data-aos="fade-up"
                    data-aos-delay="<?php echo $delay; ?>00">
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
                                <a href=""><i class="bi bi-<?php echo $tiporede; ?>"></i></a>
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

                }
              }
            }
          }
          $delay++;
        }
      }

      ?>

    </div>

  </div>
</section><!-- End Chefs Section -->