<?php 
  
  $listar = listarRegistros('idsobre, imagem, imagem2, video, descricao, contmsg, contato, cadastro, alteracao, ativo','tbsobre','A');
  // var_dump($listar);
  if ($listar === false) {
    echo '<h6 class="text-center mt-5 p-3 bg-danger text-white">Não existe registros no banco!</h6>';
  } else {
    foreach ($listar as $itemLista){
      $idsobre = $itemLista->idsobre;
      $imagem = $itemLista->imagem;
      $imagem2 = $itemLista->imagem2;
      $video = $itemLista->video;
      $descricao = $itemLista->descricao;
      $contmsg = $itemLista->contmsg;
      $contato = $itemLista->contato;
      $cadastro = $itemLista->cadastro;
      $alteracao = $itemLista->alteracao;
      $ativo = $itemLista->ativo;
    }
  }
  
  ?>
    
    <!-- ======= About Section ======= -->
    <section id="about" class="about">
      <div class="container" data-aos="fade-up">

        <div class="section-header">
          <!-- <h2>About Us</h2> -->
          <p>Saiba mais <span>Sobre Nós</span></p>
        </div>

        <div class="row gy-4">
          <div class="col-lg-7 position-relative about-img" style="background-image: url(assets/img/about.jpg) ;" data-aos="fade-up" data-aos-delay="150">
            <div class="call-us position-absolute">
              <h4><?php echo $contmsg; ?></h4>
              <p><?php echo $contato; ?></p>
            </div>
          </div>
          <div class="col-lg-5 d-flex align-items-end" data-aos="fade-up" data-aos-delay="300">
            <div class="content ps-0 ps-lg-5">
              <p class="fst-italic">
              <?php echo $descricao; ?>
              </p>

              <div class="position-relative mt-4">
                <img src="<?php echo $imagem2; ?>" class="img-fluid" alt="">
                <a href="<?php echo $video; ?>" class="glightbox play-btn"></a>
              </div>
            </div>
          </div>
        </div>

      </div>
    </section><!-- End About Section -->