  <?php 
  
  $listar = listarRegistros('idbanner, imagem, titulo, descricao, video, cadastro, alteracao, ativo','tbbanner','A');
  // var_dump($listar);
  if ($listar === false) {
    echo '<h6 class="text-center mt-5 p-3 bg-danger text-white">Não existe registros no banco!</h6>';
  } else {
    foreach ($listar as $itemLista){
      $idbanner = $itemLista->idbanner;
      $imagem = $itemLista->imagem;
      $titulo = $itemLista->titulo;
      $descricao = $itemLista->descricao;
      $video = $itemLista->video;
      $cadastro = $itemLista->cadastro;
      $alteracao = $itemLista->alteracao;
      $ativo = $itemLista->ativo;
    }
  }
  
  ?>
    
  <!-- ======= Hero Section ======= -->
  <section id="hero" class="hero d-flex align-items-center section-bg">
    <div class="container">
      <div class="row justify-content-between gy-5">
        <div class="col-lg-5 order-2 order-lg-1 d-flex flex-column justify-content-center align-items-center align-items-lg-start text-center text-lg-start">
          <h2 data-aos="fade-up"><?php echo $titulo; ?></h2>
          <p data-aos="fade-up" data-aos-delay="100"><?php echo $descricao; ?></p>
          <div class="d-flex" data-aos="fade-up" data-aos-delay="200">
            <a href="#book-a-table" class="btn-book-a-table">Fazer Reserva</a>
            <a href="<?php echo $video; ?>" class="glightbox btn-watch-video d-flex align-items-center"><i class="bi bi-play-circle"></i><span>Assistir Video</span></a>
          </div>
        </div>
        <div class="col-lg-5 order-1 order-lg-2 text-center text-lg-start">
          <img src="<?php echo $imagem; ?>" class="img-fluid" alt="" data-aos="zoom-out" data-aos-delay="300">
        </div>
      </div>
    </div>
  </section><!-- End Hero Section -->