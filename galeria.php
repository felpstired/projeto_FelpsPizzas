    <?php

    $listar = listarRegistros('idgaleria, imagem, cadastro, alteracao, ativo', 'tbgaleria', 'A');
    // var_dump($listar);

    ?>

    <!-- ======= Gallery Section ======= -->
    <section id="gallery" class="gallery section-bg">
      <div class="container" data-aos="fade-up">

        <div class="section-header">
          <h2>Galeria
          </h2>
          <p>Observe <span>Nossa Galeria</span></p>
        </div>

        <div class="gallery-slider swiper">
          <div class="swiper-wrapper align-items-center">
            <?php

            if ($listar === false) {
              echo '<h6 class="text-center mt-5 p-3 bg-danger text-white">Não existe registros no banco!</h6>';
            } else {
              foreach ($listar as $itemLista) {
                $idgaleria = $itemLista->idgaleria;
                $imagem = $itemLista->imagem;
                $cadastro = $itemLista->cadastro;
                $alteracao = $itemLista->alteracao;
                $ativo = $itemLista->ativo;

            ?>
                <div class="swiper-slide"><a class="glightbox" data-gallery="images-gallery" href="<?php echo $imagem; ?>"><img src="<?php echo $imagem; ?>" class="img-fluid" alt=""></a></div>
            <?php

              }
            }

            ?>
          </div>
          <div class="swiper-pagination"></div>
        </div>

      </div>
    </section><!-- End Gallery Section -->