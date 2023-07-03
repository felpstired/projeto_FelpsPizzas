<?php 

$listar = listarRegistros('idmapacontato, mapa', 'tbmapacontato', 'A');
// var_dump($listar);
if ($listar === false) {
  echo '<h6 class="text-center mt-5 p-3 bg-danger text-white">Não existe registros no banco!</h6>';
} else {
  foreach ($listar as $itemLista) {
    $idmapa = $itemLista->idmapacontato;
    $mapa = $itemLista->mapa;
  }
}

?>

<!-- ======= Contact Section ======= -->
    <section id="contact" class="contact">
      <div class="container" data-aos="fade-up">

        <div class="section-header">
          <h2>Contato</h2>
          <p>Precisa de Ajuda? <span>Entre em Contato</span></p>
        </div>

        <div class="mb-3">
        <iframe src="<?php echo $mapa; ?>" width="100%" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
        </div><!-- End Google Maps -->

        <div class="row gy-4">

        <?php 
        
        $listarB = listarRegistrosPar('titulo, conteudo, icone', 'tbcontato', 'A', 'idmapacontato', $idmapa);
        // var_dump($listar);
        if ($listarB === false) {
          echo '<h6 class="text-center mt-5 p-3 bg-danger text-white">Não existe registros no banco!</h6>';
        } else {
          foreach ($listarB as $itemListaB) {
            $titulo = $itemListaB->titulo;
            $conteudo = $itemListaB->conteudo;
            $icon = $itemListaB->icone;
          
        
        ?>

          <div class="col-md-6">
            <div class="info-item  d-flex align-items-center">
              <i class="icon bi <?php echo $icon; ?> flex-shrink-0"></i>
              <div>
                <h3><?php echo $titulo; ?></h3>
                <p><?php echo $conteudo; ?></p>
              </div>
            </div>
          </div><!-- End Info Item -->

        <?php  
        
          }
        }
        
        ?>

        </div>

        <form action="forms/contato.php" method="post" role="form" class="php-email-form p-3 p-md-4">
          <div class="row">
            <div class="col-xl-6 form-group">
              <input type="text" name="nome" class="form-control" id="name" placeholder="Seu Nome" required>
            </div>
            <div class="col-xl-6 form-group">
              <input type="email" class="form-control" name="email" id="email" placeholder="Seu Email" required>
            </div>
          </div>
          <div class="form-group">
            <input type="text" class="form-control" name="assunto" id="subject" placeholder="Assunto" required>
          </div>
          <div class="form-group">
            <textarea class="form-control" name="mensagem" rows="5" placeholder="Mensagem" required></textarea>
          </div>
          <div class="my-3">
            <div class="loading">Carregando</div>
            <div class="error-message"></div>
            <div class="sent-message">Sua mensagem foi enviada. Obrigado!</div>
          </div>
          <div class="text-center"><button type="submit">Enviar Mensagem</button></div>
        </form><!--End Contact Form -->

      </div>
    </section><!-- End Contact Section -->