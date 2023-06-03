<?php 
  
  $listar = listarRegistros('idcard, titulo, icon, descricao, cadastro, alteracao, ativo','tbcard','A');
  // var_dump($listar);
  if ($listar === false) {
    echo '<h6 class="text-center mt-5 p-3 bg-danger text-white">Não existe registros no banco!</h6>';
  } else {
    foreach ($listar as $itemLista){
      $icon = $itemLista->icon;
      if ($icon == '') {
        
        $idcard = $itemLista->idcard;
        $titulop = $itemLista->titulo;
        $descricaop = $itemLista->descricao;
        $cadastro = $itemLista->cadastro;
        $alteracao = $itemLista->alteracao;
        $ativo = $itemLista->ativo;

      }
    }
  }
  
  ?>
    
    <!-- ======= Why Us Section ======= -->
    <section id="why-us" class="why-us section-bg">
      <div class="container" data-aos="fade-up">

        <div class="row gy-4">

          <div class="col-lg-4" data-aos="fade-up" data-aos-delay="100">
            <div class="why-box">
              <h3><?php echo $titulop; ?></h3>
              <p>
              <?php echo $descricaop; ?>
              </p>
              <div class="text-center">
                <a href="#" class="more-btn">Learn More <i class="bx bx-chevron-right"></i></a>
              </div>
            </div>
          </div><!-- End Why Box -->

          <div class="col-lg-8 d-flex align-items-center">
            <div class="row gy-4">

            <?php  
            
            foreach ($listar as $itemLista){
              $icon = $itemLista->icon;
              if ($icon != '') {
                
                $idcard = $itemLista->idcard;
                $titulo = $itemLista->titulo;
                $descricao = $itemLista->descricao;
                $cadastro = $itemLista->cadastro;
                $alteracao = $itemLista->alteracao;
                $ativo = $itemLista->ativo;
        
              
            
            ?>

              <div class="col-xl-4" data-aos="fade-up" data-aos-delay="200">
                <div class="icon-box d-flex flex-column justify-content-center align-items-center">
                  <i class="<?php echo $icon; ?>"></i>
                  <h4><?php echo $titulo; ?></h4>
                  <p><?php echo $descricao; ?></p>
                </div>
              </div><!-- End Icon Box -->

            <?php 
            
              }
            }

            ?>

            </div>
          </div>

        </div>

      </div>
    </section><!-- End Why Us Section -->