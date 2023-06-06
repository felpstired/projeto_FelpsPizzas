<?php

$listar = listarRegistros('titulo, preco, descricao, imagem', 'tbeventos', 'A');

?>

<!-- ======= Events Section ======= -->
<section id="events" class="events">
  <div class="container-fluid" data-aos="fade-up">

    <div class="section-header">
      <h2>Eventos</h2>
      <p>Compartilhe <span>Seus Momentos</span> Em Nosso Restaurante</p>
    </div>

    <div class="slides-3 swiper" data-aos="fade-up" data-aos-delay="100">
      <div class="swiper-wrapper">

        <?php

        if ($listar === false) {
          echo '<h6 class="text-center mt-5 p-3 bg-danger text-white">Não existe registros no banco!</h6>';
        } else {
          foreach ($listar as $itemLista) {
            $titulo = $itemLista->titulo;
            $preco = $itemLista->preco;
            $descricao = $itemLista->descricao;
            $imagem = $itemLista->imagem;

            ?>
            <div class="swiper-slide event-item d-flex flex-column justify-content-end"
              style="background-image: url(<?php echo $imagem; ?>)">
              <h3>
                <?php echo $titulo; ?>
              </h3>
              <div class="price align-self-start">$
                <?php echo $preco; ?>
              </div>
              <p class="description">
                <?php echo $descricao; ?>
              </p>
            </div><!-- End Event item -->

          <?php


          }
        }

        ?>

      </div>
      <div class="swiper-pagination"></div>
    </div>

  </div>
</section><!-- End Events Section -->