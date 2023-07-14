$(document).ready(function () {

    $('.linkMenu').click(function (pagelink) {
        pagelink.preventDefault();
        var menuClicado = $(this).attr('data-menu');
        // $('div#conteudo').html('Você clicou na sessão ' + menuClicado);
        // var teste = $('input#conteudo2').val();
        // $('input#conteudo').val(teste);

        console.log(menuClicado);
        
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

    $("button#btnTeste").click(function() {
        alert('Teste');
        $("input#inputTeste").toggle().animate();
        $("input#inputTeste").toggleClass('d-none d-block');
    });

});

function loading() {
    $('div#loading').html("<div class='spinner-border text-danger' role='status'></div>");
}

function loadingend() {
    $('div#loading').html("");

}

function cadCard() {

    $('#formCadCard').on('submit', function (cad) {
        cad.preventDefault();

        alert('CLICOU');

        var dadosForm = $(this).serializeArray();

        dadosForm.push (
            {name: 'acao', value: 'addCard'},
        );

        $.ajax({
            type: "POST",
            dataType: 'html',
            // url: menuClicado + '.php',
            url: 'controle.php',
            data: dadosForm,
            beforeSend: function () {
                loading();
            }, success : function (retorno) {
                $('div#conteudo').html(retorno);
                loadingend();
            }
        });

    });
};

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