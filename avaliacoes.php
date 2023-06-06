<?php

$listar = listarRegistros('idpessoas, nome', 'tbpessoas', 'A');

?>

<!-- ======= Testimonials Section ======= -->
<section id="testimonials" class="testimonials section-bg">
  <div class="container" data-aos="fade-up">

    <div class="section-header">
      <h2>Testimonials</h2>
      <p>O que estão <span>Falando sobre nós</span></p>
    </div>

    <div class="slides-1 swiper" data-aos="fade-up" data-aos-delay="100">
      <div class="swiper-wrapper">

        <?php
        if ($listar === false) {
          echo '<h6 class="text-center mt-5 p-3 bg-danger text-white">Não existe registros no banco!</h6>';
        } else {
          foreach ($listar as $itemLista) {
            $idpessoa = $itemLista->idpessoas;
            $nome = $itemLista->nome;

            $listarb = listarRegistrosPar('comentario, profissao, estrelas, imagem', 'tbavaliacoes', 'A', 'idpessoas', $idpessoa);
            if ($listarb === false) {
              echo '<h6 class="text-center mt-5 p-3 bg-danger text-white">Não existe registros no banco!</h6>';
            } else {
              foreach ($listarb as $itemListab) {
                $comentario = $itemListab->comentario;
                $profissao = $itemListab->profissao;
                $estrelas = $itemListab->estrelas;
                $imagem = $itemListab->imagem;

                ?>

                <div class="swiper-slide">
                  <div class="testimonial-item">
                    <div class="row gy-4 justify-content-center">
                      <div class="col-lg-6">
                        <div class="testimonial-content">
                          <p>
                            <i class="bi bi-quote quote-icon-left"></i>
                            <?php echo $comentario; ?>
                            <i class="bi bi-quote quote-icon-right"></i>
                          </p>
                          <h3>
                            <?php echo $nome; ?>
                          </h3>
                          <h4>
                            <?php echo $profissao; ?>
                          </h4>
                          <div class="stars">
                            <?php

                            for ($i = 0; $i < 5; $i++) {
                              if ($estrelas > $i) {
                                echo '<i class="bi bi-star-fill"></i>';
                              } else {
                                echo '<i class="bi bi-star"></i>';
                              }
                            }

                            ?>
                          </div>
                        </div>
                      </div>
                      <div class="col-lg-2 text-center">
                        <img src="<?php echo $imagem; ?>" class="img-fluid testimonial-img" alt="">
                      </div>
                    </div>
                  </div>
                </div><!-- End testimonial item -->

                <?php
              }
            }
          }
        }

        ?>

      </div>
      <div class="swiper-pagination"></div>
    </div>

  </div>
</section><!-- End Testimonials Section -->