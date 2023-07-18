$(document).ready(function () {

    $('.linkMenu').click(function (pagelink) {
        pagelink.preventDefault();

        let menuClicado = $(this).attr('data-menu');

        let dados = {
            acao: menuClicado,
        };

        $.ajax({
            type: "POST",
            dataType: 'html',
            url: 'controle.php',
            data: dados,
            beforeSend: function () {
                loading();
            }, success: function (retorno) {
                $('div#conteudo').html(retorno);
                loadingend();
            }
        });
    });

    $('input#telefone').mask('(00) 0 0000-0000');

    $('input#cpf').mask('000.000.000-00', {reverse: true});

});

function loading() {
    $('div#loading').html("<div class='spinner-border text-danger' role='status'></div>");
}

function loadingend() {
    $('div#loading').html("");
}

function loadingf() {
    $('div.loadingf').html("<div class='spinner-border text-danger' role='status'></div><div>Carregando...</div>");
}

function loadingfend() {
    $('div.loadingf').html("");
}

function cadCard(menuClicado) {

    $('#formCadCard').submit(function (cad) {
        cad.preventDefault();

        let form = this;

        let dadosForm = $(this).serializeArray();

        form.querySelector('.resultError').classList.remove('d-block');
        form.querySelector('.resultSuccess').classList.remove('d-block');

        dadosForm.push(
            {name: 'acao', value: 'addCard'},
        );

        $.ajax({
            type: "POST",
            dataType: 'html',
            url: 'controle.php',
            data: dadosForm,
            beforeSend: function () {
                loadingf();
            }, success: function (retorno) {
                loadingfend();
                if (retorno == 'OK') {
                    form.querySelector('.resultSuccess').classList.remove('d-none');
                    form.querySelector('.resultSuccess').classList.add('d-block');
                    form.reset();
                    setTimeout(function () {
                        attPageCard(menuClicado);
                    }, 1000);
                } else {
                    $(".resultError").html('Erro: ' + retorno);
                    form.querySelector('.resultError').classList.remove('d-none');
                    form.querySelector('.resultError').classList.add('d-block');
                    form.reset();
                }
            }
        });

    });
};

function attPageCard(menuClicado) {

    let dados = {
        acao: menuClicado,
    };

    $.ajax({
        type: "POST",
        dataType: 'html',
        url: 'controle.php',
        data: dados,
        beforeSend: function () {

        }, success: function (retorno) {
            $('#modalAddCard').modal('hide');
            setTimeout(function () {
                $('div#conteudo').html(retorno);
            }, 1000);
        }
    });
}

function cadPessoa(menuClicado) {

    $('#formCadPessoa').submit(function (cad) {
        cad.preventDefault();

        let form = this;

        let dadosForm = $(this).serializeArray();

        form.querySelector('.resultError').classList.remove('d-block');
        form.querySelector('.resultSuccess').classList.remove('d-block');

        dadosForm.push(
            {name: 'acao', value: 'addPessoa'},
        );

        $.ajax({
            type: "POST",
            dataType: 'html',
            url: 'controle.php',
            data: dadosForm,
            beforeSend: function () {
                loadingf();
            }, success: function (retorno) {
                loadingfend();
                if (retorno == 'OK') {
                    form.querySelector('.resultSuccess').classList.remove('d-none');
                    form.querySelector('.resultSuccess').classList.add('d-block');
                    form.reset();
                    setTimeout(function () {
                        attPagePessoa(menuClicado);
                    }, 1000);
                } else {
                    $(".resultError").html('Erro: ' + retorno);
                    form.querySelector('.resultError').classList.remove('d-none');
                    form.querySelector('.resultError').classList.add('d-block');
                    form.reset();
                }
            }
        });
    });
};

function attPagePessoa(menuClicado) {

    let dados = {
        acao: menuClicado,
    };

    $.ajax({
        type: "POST",
        dataType: 'html',
        url: 'controle.php',
        data: dados,
        beforeSend: function () {

        }, success: function (retorno) {
            $('#modalAddPessoa').modal('hide');
            setTimeout(function () {
                $('div#conteudo').html(retorno);
            }, 1000);
        }
    });
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