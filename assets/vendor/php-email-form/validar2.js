$(document).ready(function () {
    $('#btnReserva').click(function (reservar) {
        reservar.preventDefault();
        querySelector('.loading').classList.add('d-block');
        querySelector('.msgform').classList.remove('d-block');
        var nomer = $('#nomer').val();
        var emailr = $('#emailr').val();
        var telefone = $('#telefone').val();
        var date = $('#date').val();
        var horario = $('#horario').val();
        var pessoas = $('#pessoas').val();
        var mensagemr = $('#mensagemr').val();
        $.ajax({
            url: "../forms/acaoreserva.php",
            method: "POST",
            data: { nomer: nomer, emailr: emailr, telefone: telefone, date: date, horario: horario, pessoas: pessoas, mensagemr: mensagemr },
            success: function (data) {
                querySelector('.loading').classList.remove('d-block');
                querySelector('.msgform').innerHTML = data;
                querySelector('.msgform').classList.add('d-block');
            }
        });
    });
});