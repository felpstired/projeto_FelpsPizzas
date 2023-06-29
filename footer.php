<?php 

$listar = listarRegistros('idfooter, endereco, telefone, email, horarios', 'tbfoot', 'A');
// var_dump($listar);
if ($listar === false) {
  echo '<h6 class="text-center mt-5 p-3 bg-danger text-white">Não existe registros no banco!</h6>';
} else {
  foreach ($listar as $itemLista) {
    $idfooter = $itemLista->idfooter;
    $endereco = $itemLista->endereco;
    $telefone = $itemLista->telefone;
    $email = $itemLista->email;
    $horarios = $itemLista->horarios;
  }
}

?>

<!-- ======= Footer ======= -->
  <footer id="footer" class="footer">

    <div class="container">
      <div class="row gy-3">
        <div class="col-lg-3 col-md-6 footer-links d-flex">
          <i class="bi bi-geo-alt icon"></i>
          <div>
            <h4>Endereço</h4>
            <p>
            <?php echo $endereco; ?>
            </p>
          </div>

        </div>

        <div class="col-lg-3 col-md-6 footer-links d-flex">
          <i class="bi bi-telephone icon"></i>
          <div>
            <h4>Reservas</h4>
            <p>
              <strong>Telefone:</strong> <?php echo $telefone; ?><br>
              <strong>E-mail:</strong> <?php echo $email; ?><br>
            </p>
          </div>
        </div>

        <div class="col-lg-3 col-md-6 footer-links d-flex">
          <i class="bi bi-clock icon"></i>
          <div>
            <h4>Horário de Funcionamento</h4>
            <p>
              <?php echo $horarios; ?>
            </p>
          </div>
        </div>

        <div class="col-lg-3 col-md-6 footer-links">
          <h4>Follow Us</h4>
          <div class="social-links d-flex">

          <?php 
          
          $listarB = listarRegistrosPar('rede, tiporede', 'tbredessite', 'A', 'idfooter', $idfooter);
          // var_dump($listar);
          if ($listarB === false) {
            echo '<h6 class="text-center mt-5 p-3 bg-danger text-white">Não existe registros no banco!</h6>';
          } else {
          foreach ($listarB as $itemListaB) {
            $rede = $itemListaB->rede;
            $tiporede = $itemListaB->tiporede;

          ?>

            <a href="<?php echo $rede; ?>" target="blank" class="<?php echo $tiporede; ?>"><i class="bi bi-<?php echo $tiporede; ?>"></i></a>
          
          <?php 
          
            }
          }
          
          ?>

          </div>
        </div>

      </div>
    </div>

    <div class="container">
      <div class="copyright">
        &copy; Copyright <strong><span>Felps Pizza's</span></strong>. All Rights Reserved
      </div>
      <div class="credits">
        <!-- All the links in the footer should remain intact. -->
        <!-- You can delete the links only if you purchased the pro version. -->
        <!-- Licensing information: https://bootstrapmade.com/license/ -->
        <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/yummy-bootstrap-restaurant-website-template/ -->
        Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
      </div>
    </div>

  </footer><!-- End Footer -->
  <!-- End Footer -->