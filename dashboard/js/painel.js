$(document).ready(function () {
    alert('Bem-Vindo(a) ao Painel!');

    $('.linkMenu').click(function (pagelink) {
        pagelink.preventDefault();
        var menuClicado = $(this).attr('data-menu');
        // $('div#conteudo').html('Você clicou na sessão ' + menuClicado);
        // var teste = $('input#conteudo2').val();
        // $('input#conteudo').val(teste);
        var dados = {
            acao: menuClicado,
        };
        $.ajax({
            type: "POST",
            dataType: 'html',
            // url: menuClicado + '.php',
            url: 'controle.php',
            data: dados,
            beforeSend: function () {
                loading();
            }, success : function (retorno) {
                $('div#conteudo').html(retorno);
                loadingend();
            }
        });
    });

});

function loading() {
    $('div#loading').html("<div class='spinner-border text-danger' role='status'></div>");
}

function loadingend() {
    $('div#loading').html("");

}

// setTimeout(function () {
//     $('div#loading').html("");
// }, 6000);

// MODELO POST AJAX JQUERY
// $.ajax({
//     type: "POST",
//     dataType: 'html',
//     url: 'teste.php',
//     data: data,
//     success: success
// });