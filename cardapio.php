<?php

$listar = listarRegistros('menucardapio', 'tbmenucardapio', 'A');
$listarb = listarRegistros('', 'tbcardapio', 'A');

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
        foreach ($listar as $itemLista) {
          $menu = $itemLista->menucardapio;

      ?>
          <li class="nav-item">
            <a class="nav-link active show" data-bs-toggle="tab" data-bs-target="#menu-<?php echo $menu; ?>">
              <h4><?php echo $menu; ?></h4>
            </a>
          </li><!-- End tab nav item -->

      <?php

        }
      }

      ?>

    </ul>

    <div class="tab-content" data-aos="fade-up" data-aos-delay="300">

      <div class="tab-pane fade active show" id="menu-starters">

        <div class="tab-header text-center">
          <p>Menu</p>
          <h3>Starters</h3>
        </div>

        <div class="row gy-5">

          <div class="col-lg-4 menu-item">
            <a href="assets/img/menu/menu-item-1.png" class="glightbox"><img src="assets/img/menu/menu-item-1.png" class="menu-img img-fluid" alt=""></a>
            <h4>Magnam Tiste</h4>
            <p class="ingredients">
              Lorem, deren, trataro, filede, nerada
            </p>
            <p class="price">
              $5.95
            </p>
          </div><!-- Menu Item -->

          <div class="col-lg-4 menu-item">
            <a href="assets/img/menu/menu-item-2.png" class="glightbox"><img src="assets/img/menu/menu-item-2.png" class="menu-img img-fluid" alt=""></a>
            <h4>Aut Luia</h4>
            <p class="ingredients">
              Lorem, deren, trataro, filede, nerada
            </p>
            <p class="price">
              $14.95
            </p>
          </div><!-- Menu Item -->

          <div class="col-lg-4 menu-item">
            <a href="assets/img/menu/menu-item-3.png" class="glightbox"><img src="assets/img/menu/menu-item-3.png" class="menu-img img-fluid" alt=""></a>
            <h4>Est Eligendi</h4>
            <p class="ingredients">
              Lorem, deren, trataro, filede, nerada
            </p>
            <p class="price">
              $8.95
            </p>
          </div><!-- Menu Item -->

          <div class="col-lg-4 menu-item">
            <a href="assets/img/menu/menu-item-4.png" class="glightbox"><img src="assets/img/menu/menu-item-4.png" class="menu-img img-fluid" alt=""></a>
            <h4>Eos Luibusdam</h4>
            <p class="ingredients">
              Lorem, deren, trataro, filede, nerada
            </p>
            <p class="price">
              $12.95
            </p>
          </div><!-- Menu Item -->

          <div class="col-lg-4 menu-item">
            <a href="assets/img/menu/menu-item-5.png" class="glightbox"><img src="assets/img/menu/menu-item-5.png" class="menu-img img-fluid" alt=""></a>
            <h4>Eos Luibusdam</h4>
            <p class="ingredients">
              Lorem, deren, trataro, filede, nerada
            </p>
            <p class="price">
              $12.95
            </p>
          </div><!-- Menu Item -->

          <div class="col-lg-4 menu-item">
            <a href="assets/img/menu/menu-item-6.png" class="glightbox"><img src="assets/img/menu/menu-item-6.png" class="menu-img img-fluid" alt=""></a>
            <h4>Laboriosam Direva</h4>
            <p class="ingredients">
              Lorem, deren, trataro, filede, nerada
            </p>
            <p class="price">
              $9.95
            </p>
          </div><!-- Menu Item -->

        </div>
      </div><!-- End Starter Menu Content -->

      <div class="tab-pane fade" id="menu-breakfast">

        <div class="tab-header text-center">
          <p>Menu</p>
          <h3>Breakfast</h3>
        </div>

        <div class="row gy-5">

          <div class="col-lg-4 menu-item">
            <a href="assets/img/menu/menu-item-1.png" class="glightbox"><img src="assets/img/menu/menu-item-1.png" class="menu-img img-fluid" alt=""></a>
            <h4>Magnam Tiste</h4>
            <p class="ingredients">
              Lorem, deren, trataro, filede, nerada
            </p>
            <p class="price">
              $5.95
            </p>
          </div><!-- Menu Item -->

          <div class="col-lg-4 menu-item">
            <a href="assets/img/menu/menu-item-2.png" class="glightbox"><img src="assets/img/menu/menu-item-2.png" class="menu-img img-fluid" alt=""></a>
            <h4>Aut Luia</h4>
            <p class="ingredients">
              Lorem, deren, trataro, filede, nerada
            </p>
            <p class="price">
              $14.95
            </p>
          </div><!-- Menu Item -->

          <div class="col-lg-4 menu-item">
            <a href="assets/img/menu/menu-item-3.png" class="glightbox"><img src="assets/img/menu/menu-item-3.png" class="menu-img img-fluid" alt=""></a>
            <h4>Est Eligendi</h4>
            <p class="ingredients">
              Lorem, deren, trataro, filede, nerada
            </p>
            <p class="price">
              $8.95
            </p>
          </div><!-- Menu Item -->

          <div class="col-lg-4 menu-item">
            <a href="assets/img/menu/menu-item-4.png" class="glightbox"><img src="assets/img/menu/menu-item-4.png" class="menu-img img-fluid" alt=""></a>
            <h4>Eos Luibusdam</h4>
            <p class="ingredients">
              Lorem, deren, trataro, filede, nerada
            </p>
            <p class="price">
              $12.95
            </p>
          </div><!-- Menu Item -->

          <div class="col-lg-4 menu-item">
            <a href="assets/img/menu/menu-item-5.png" class="glightbox"><img src="assets/img/menu/menu-item-5.png" class="menu-img img-fluid" alt=""></a>
            <h4>Eos Luibusdam</h4>
            <p class="ingredients">
              Lorem, deren, trataro, filede, nerada
            </p>
            <p class="price">
              $12.95
            </p>
          </div><!-- Menu Item -->

          <div class="col-lg-4 menu-item">
            <a href="assets/img/menu/menu-item-6.png" class="glightbox"><img src="assets/img/menu/menu-item-6.png" class="menu-img img-fluid" alt=""></a>
            <h4>Laboriosam Direva</h4>
            <p class="ingredients">
              Lorem, deren, trataro, filede, nerada
            </p>
            <p class="price">
              $9.95
            </p>
          </div><!-- Menu Item -->

        </div>
      </div><!-- End Breakfast Menu Content -->

      <div class="tab-pane fade" id="menu-lunch">

        <div class="tab-header text-center">
          <p>Menu</p>
          <h3>Lunch</h3>
        </div>

        <div class="row gy-5">

          <div class="col-lg-4 menu-item">
            <a href="assets/img/menu/menu-item-1.png" class="glightbox"><img src="assets/img/menu/menu-item-1.png" class="menu-img img-fluid" alt=""></a>
            <h4>Magnam Tiste</h4>
            <p class="ingredients">
              Lorem, deren, trataro, filede, nerada
            </p>
            <p class="price">
              $5.95
            </p>
          </div><!-- Menu Item -->

          <div class="col-lg-4 menu-item">
            <a href="assets/img/menu/menu-item-2.png" class="glightbox"><img src="assets/img/menu/menu-item-2.png" class="menu-img img-fluid" alt=""></a>
            <h4>Aut Luia</h4>
            <p class="ingredients">
              Lorem, deren, trataro, filede, nerada
            </p>
            <p class="price">
              $14.95
            </p>
          </div><!-- Menu Item -->

          <div class="col-lg-4 menu-item">
            <a href="assets/img/menu/menu-item-3.png" class="glightbox"><img src="assets/img/menu/menu-item-3.png" class="menu-img img-fluid" alt=""></a>
            <h4>Est Eligendi</h4>
            <p class="ingredients">
              Lorem, deren, trataro, filede, nerada
            </p>
            <p class="price">
              $8.95
            </p>
          </div><!-- Menu Item -->

          <div class="col-lg-4 menu-item">
            <a href="assets/img/menu/menu-item-4.png" class="glightbox"><img src="assets/img/menu/menu-item-4.png" class="menu-img img-fluid" alt=""></a>
            <h4>Eos Luibusdam</h4>
            <p class="ingredients">
              Lorem, deren, trataro, filede, nerada
            </p>
            <p class="price">
              $12.95
            </p>
          </div><!-- Menu Item -->

          <div class="col-lg-4 menu-item">
            <a href="assets/img/menu/menu-item-5.png" class="glightbox"><img src="assets/img/menu/menu-item-5.png" class="menu-img img-fluid" alt=""></a>
            <h4>Eos Luibusdam</h4>
            <p class="ingredients">
              Lorem, deren, trataro, filede, nerada
            </p>
            <p class="price">
              $12.95
            </p>
          </div><!-- Menu Item -->

          <div class="col-lg-4 menu-item">
            <a href="assets/img/menu/menu-item-6.png" class="glightbox"><img src="assets/img/menu/menu-item-6.png" class="menu-img img-fluid" alt=""></a>
            <h4>Laboriosam Direva</h4>
            <p class="ingredients">
              Lorem, deren, trataro, filede, nerada
            </p>
            <p class="price">
              $9.95
            </p>
          </div><!-- Menu Item -->

        </div>
      </div><!-- End Lunch Menu Content -->

      <div class="tab-pane fade" id="menu-dinner">

        <div class="tab-header text-center">
          <p>Menu</p>
          <h3>Dinner</h3>
        </div>

        <div class="row gy-5">

          <div class="col-lg-4 menu-item">
            <a href="assets/img/menu/menu-item-1.png" class="glightbox"><img src="assets/img/menu/menu-item-1.png" class="menu-img img-fluid" alt=""></a>
            <h4>Magnam Tiste</h4>
            <p class="ingredients">
              Lorem, deren, trataro, filede, nerada
            </p>
            <p class="price">
              $5.95
            </p>
          </div><!-- Menu Item -->

          <div class="col-lg-4 menu-item">
            <a href="assets/img/menu/menu-item-2.png" class="glightbox"><img src="assets/img/menu/menu-item-2.png" class="menu-img img-fluid" alt=""></a>
            <h4>Aut Luia</h4>
            <p class="ingredients">
              Lorem, deren, trataro, filede, nerada
            </p>
            <p class="price">
              $14.95
            </p>
          </div><!-- Menu Item -->

          <div class="col-lg-4 menu-item">
            <a href="assets/img/menu/menu-item-3.png" class="glightbox"><img src="assets/img/menu/menu-item-3.png" class="menu-img img-fluid" alt=""></a>
            <h4>Est Eligendi</h4>
            <p class="ingredients">
              Lorem, deren, trataro, filede, nerada
            </p>
            <p class="price">
              $8.95
            </p>
          </div><!-- Menu Item -->

          <div class="col-lg-4 menu-item">
            <a href="assets/img/menu/menu-item-4.png" class="glightbox"><img src="assets/img/menu/menu-item-4.png" class="menu-img img-fluid" alt=""></a>
            <h4>Eos Luibusdam</h4>
            <p class="ingredients">
              Lorem, deren, trataro, filede, nerada
            </p>
            <p class="price">
              $12.95
            </p>
          </div><!-- Menu Item -->

          <div class="col-lg-4 menu-item">
            <a href="assets/img/menu/menu-item-5.png" class="glightbox"><img src="assets/img/menu/menu-item-5.png" class="menu-img img-fluid" alt=""></a>
            <h4>Eos Luibusdam</h4>
            <p class="ingredients">
              Lorem, deren, trataro, filede, nerada
            </p>
            <p class="price">
              $12.95
            </p>
          </div><!-- Menu Item -->

          <div class="col-lg-4 menu-item">
            <a href="assets/img/menu/menu-item-6.png" class="glightbox"><img src="assets/img/menu/menu-item-6.png" class="menu-img img-fluid" alt=""></a>
            <h4>Laboriosam Direva</h4>
            <p class="ingredients">
              Lorem, deren, trataro, filede, nerada
            </p>
            <p class="price">
              $9.95
            </p>
          </div><!-- Menu Item -->

        </div>
      </div><!-- End Dinner Menu Content -->

    </div>

  </div>
</section><!-- End Menu Section -->