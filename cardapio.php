<?php

$listar = listarRegistros('idmenucardapio, menucardapio', 'tbmenucardapio', 'A');

?>

<!-- ======= Menu Section ======= -->
<section id="menu" class="menu">
  <div class="container" data-aos="fade-up">

    <div class="section-header">
      <h2>Our Menu</h2>
      <p>Aprecie nosso <span>Delicioso Cardapio</span></p>
    </div>

    <ul class="nav nav-tabs d-flex justify-content-center" data-aos="fade-up" data-aos-delay="200">

      <?php


      if ($listar === false) {
        echo '<h6 class="text-center mt-5 p-3 bg-danger text-white">Não existe registros no banco!</h6>';
      } else {
        $conta = 0;
        foreach ($listar as $itemLista) {
          $menu = $itemLista->menucardapio;

          ?>

          <li class="nav-item">
            <a class="nav-link <?php if ($conta == 0) { ?>active show<?php } ?>" data-bs-toggle="tab"
              data-bs-target="#menu-<?php echo $menu; ?>">
              <h4>
                <?php echo $menu; ?>
              </h4>
            </a>
          </li><!-- End tab nav item -->

          <?php

          $conta++;
        }
      }

      ?>

    </ul>

    <div class="tab-content" data-aos="fade-up" data-aos-delay="300">

      <?php

      if ($listar === false) {
        echo '<h6 class="text-center mt-5 p-3 bg-danger text-white">Não existe registros no banco!</h6>';
      } else {
        $conta = 0;
        foreach ($listar as $itemLista) {
          $idmenu = $itemLista->idmenucardapio;
          $menub = $itemLista->menucardapio;

          ?>

          <div class="tab-pane fade <?php if ($conta == 0) { ?>active show<?php } ?>" id="menu-<?php echo $menub; ?>">

            <div class="tab-header text-center">
              <p>Menu</p>
              <h3>
                <?php echo $menub; ?>
              </h3>
            </div>

            <div class="row gy-5">

              <?php

              $listarb = listarRegistrosPar('imagem, tituloimg, descimg, preco', 'tbcardapio', 'A', 'idmenucardapio', $idmenu);
              if ($listarb === false) {
                echo '<h6 class="text-center mt-5 p-3 bg-danger text-white">Não existe registros no banco!</h6>';
              } else {
                foreach ($listarb as $itemListab) {
                  $imagem = $itemListab->imagem;
                  $tituloimg = $itemListab->tituloimg;
                  $descimg = $itemListab->descimg;
                  $preco = $itemListab->preco;


                  ?>

                  <div class="col-lg-4 menu-item">
                    <a href="<?php echo $imagem; ?>" class="glightbox"><img src="<?php echo $imagem; ?>"
                        class="menu-img img-fluid" alt=""></a>
                    <h4>
                      <?php echo $tituloimg; ?>
                    </h4>
                    <p class="ingredients">
                      <?php echo $descimg; ?>
                    </p>
                    <p class="price">
                      $
                      <?php echo $preco; ?>
                    </p>
                  </div><!-- Menu Item -->

                  <?php
                }
              }

              ?>

            </div>
          </div><!-- End Starter Menu Content -->

          <?php
          $conta++;
        }
      }

      ?>

    </div>

  </div>
</section><!-- End Menu Section -->