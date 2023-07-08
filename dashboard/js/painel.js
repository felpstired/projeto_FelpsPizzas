$(document).ready(function () {
    alert('Bem-Vindo(a) ao Painel!');

    $('.linkMenu').click(function (pagelink) {
        pagelink.preventDefault();
        var menuClicado = $(this).attr('data-menu');
        $('div#conteudo').html('Você clicou na sessão ' + menuClicado);
        var teste = $('input#conteudo2').val();
        $('input#conteudo').val(teste);
    });

});