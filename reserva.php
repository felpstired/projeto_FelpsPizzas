<?php

$listar = listarRegistros('imagem', 'tbimgreserva', 'A');
// var_dump($listar);
if ($listar === false) {
  echo '<h6 class="text-center mt-5 p-3 bg-danger text-white">Não existe registros no banco!</h6>';
} else {
  foreach ($listar as $itemLista) {
    $imagem = $itemLista->imagem;
  }
}

?>

<!-- ======= Book A Table Section ======= -->
<section id="book-a-table" class="book-a-table">
  <div class="container" data-aos="fade-up">

    <div class="section-header">
      <h2>RESERVAS</h2>
      <p>Reserve <span>Uma Mesa</span> Com a Gente</p>
    </div>

    <div class="row g-0">

      <div class="col-lg-4 reservation-img" style="background-image: url(<?php echo $imagem; ?>);" data-aos="zoom-out" data-aos-delay="200"></div>

      <div class="col-lg-8 d-flex align-items-center reservation-form-bg">
        <form action="forms/acaoreserva.php" method="post" role="form" class="php-email-form" data-aos="fade-up" data-aos-delay="100">
          <div class="row gy-4">
            <div class="col-lg-4 col-md-6">
              <input type="text" name="nome" class="form-control" id="name" placeholder="Seu Nome" data-rule="minlen:4" data-msg="Favor inserir pelo menos 4 caracteres">
              <div class="validate"></div>
            </div>
            <div class="col-lg-4 col-md-6">
              <input type="email" class="form-control" name="email" id="email" placeholder="Seu E-mail" data-rule="email" data-msg="Please enter a valid email">
              <div class="validate"></div>
            </div>
            <div class="col-lg-4 col-md-6">
              <input type="text" class="form-control" name="telefone" id="phone" placeholder="Seu Telefone" data-rule="minlen:4" data-msg="Favor inserir pelo menos 4 caracteres">
              <div class="validate"></div>
            </div>
            <div class="col-lg-4 col-md-6">
              <input type="text" name="date" class="form-control" id="date" placeholder="Data" data-rule="minlen:4" data-msg="Favor inserir pelo menos 4 caracteres">
              <div class="validate"></div>
            </div>
            <div class="col-lg-4 col-md-6">
              <input type="text" class="form-control" name="horario" id="time" placeholder="Horário" data-rule="minlen:4" data-msg="Favor inserir pelo menos 4 caracteres">
              <div class="validate"></div>
            </div>
            <div class="col-lg-4 col-md-6">
              <input type="number" class="form-control" name="pessoas" id="people" placeholder="N° de pessoas" data-rule="minlen:1" data-msg="Favor inserir pelo menos 1 caractere">
              <div class="validate"></div>
            </div>
          </div>
          <div class="form-group mt-3">
            <textarea class="form-control" name="mensagem" rows="5" placeholder="Message"></textarea>
            <div class="validate"></div>
          </div>
          <div class="mb-3">
            <div class="loading">Carregando</div>
            <div class="error-message"></div>
            <div class="sent-message">Seu pedido de reserva foi enviado. Nós ligaremos ou enviaremos um e-mail confirmando sua reserva. Obrigado!</div>
          </div>
          <div class="text-center"><button type="submit">Reservar uma mesa</button></div>
        </form>
      </div><!-- End Reservation Form -->

    </div>

  </div>
</section><!-- End Book A Table Section -->