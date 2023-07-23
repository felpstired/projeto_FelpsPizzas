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


    // $('#modalAltPessoa').on('shown.bs.modal', function (event) {
    //
    //     $('input#nome').trigger('focus');
    //
    //     let btn = $(event.relatedTarget);
    //     let btnResult = btn.data('id');
    //
    //     let dadosTable = pegarDados('nome, email, telefone, cpf', 'tbpessoas', 'idpessoas', btnResult);
    //     console.log(dadosTable);
    //
    // });


    $('input#telefone').mask('(00) 0 0000-0000');

    $('input#cpf').mask('000.000.000-00', { reverse: true });

    $('input#admissao').mask('00/00/0000');

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

function excGeral(tabela, nomeid, id, menuClicado) {

    let dados = {
        acao: 'excGeral',
        tabela: tabela,
        nomeid: nomeid,
        id: id,
    };

    $.ajax({
        type: "POST",
        dataType: 'html',
        url: 'controle.php',
        data: dados,
        beforeSend: function () {
            loading();
        }, success: function (retorno) {
            loadingend();
            console.log(retorno);
            if (retorno == 'OK') {
                attPage(menuClicado);
                alert('Registro apagado com sucesso!');
            } else {
                alert('Erro! '+ retorno);
            }
        }
    });
}

function ativaGeral(tabela, nomeid, id, valor, menuClicado) {

    let dados = {
        acao: 'altAtivo',
        tabela: tabela,
        nomeid: nomeid,
        id: id,
        valor: valor,
    };

    $.ajax({
        type: "POST",
        dataType: 'html',
        url: 'controle.php',
        data: dados,
        beforeSend: function () {
            loading();
        }, success: function (retorno) {
            loadingend();
            console.log(retorno);
            if (retorno == 'OK') {
                attPage(menuClicado);
                alert('Alteração feita com sucesso!');
            } else {
                alert('Erro! '+ retorno);
            }
        }
    });
}

function attPage(menuClicado) {

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
            setTimeout(function () {
                $('div#conteudo').html(retorno);
            }, 1000);
        }
    });
}




// PARTE DOS CARDS
function cadGeral(form, modal, page, menuClicado) {

    $('#'+form).submit(function (cad) {
        cad.preventDefault();

        let form = this;

        let dadosForm = $(this).serializeArray();

        form.querySelector('.resultError').classList.remove('d-block');
        form.querySelector('.resultSuccess').classList.remove('d-block');

        dadosForm.push(
            { name: 'acao', value: page },
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
                console.log(retorno);
                if (retorno == 'OK') {
                    form.querySelector('.resultSuccess').classList.remove('d-none');
                    form.querySelector('.resultSuccess').classList.add('d-block');
                    form.reset();
                    setTimeout(function () {
                        attPageCad(modal, menuClicado);
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
}

function attPageCad(modal, menuClicado) {

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
            $('#'+modal).modal('hide');
            setTimeout(function () {
                $('div#conteudo').html(retorno);
            }, 1000);
        }
    });
}

function pegarDados(campos, tabela, nomeid, id) {

    let dados = {
        acao: 'pegarDados',
        campos: campos,
        tabela: tabela,
        nomeid: nomeid,
        id: id,
    };

    $.ajax({
        type: "POST",
        dataType: 'json',
        url: 'controle.php',
        data: dados,
        beforeSend: function () {
            loading();
        }, success: function (retorno) {
            loadingend();
            // console.log(retorno);
            if (retorno == 'ERRO') {
                alert('Ocorreu um erro ao tentar obter os dados! Tente novamente mais tarde.');
            } else {
                console.log(retorno.dadosArray[0].nome);
                console.log(retorno);
                return retorno;
            }
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