<?php

$listar = listarTudo('idpessoas, nome, email, telefone, cpf, ativo', 'tbpessoas');

?>

<div class="card">
    <div class="card-header text-center">
        <h3 class="text-danger font-weight-bold">Listar Pessoas</h3>
    </div>
    <div class="card-body">
        <div class="row mb-3">
            <div class="col-12 text-center">
                <button type="button" class="btn btn-sm btn-danger" data-toggle="modal"
                    data-target="#modalAddPessoa">Cadastrar Pessoas</button>
            </div>
        </div>
        <table class="table table-striped">
            <thead class="bg-danger">
                <tr>
                    <th scope="col" width="1%" class="text-center">#</th>
                    <th scope="col" width="25%" class="text-center">Nome</th>
                    <th scope="col" width="25%" class="text-center">Email</th>
                    <th scope="col" width="12%" class="text-center">Telefone</th>
                    <th scope="col" width="12%" class="text-center">CPF</th>
                    <th scope="col" width="1%" class="text-center">Ativo</th>
                    <th scope="col" width="19%" class="text-center">Ações</th>
                </tr>
            </thead>
            <tbody>
                <?php

                foreach ($listar as $itemLista) {
                    $id = $itemLista->idpessoas;
                    $nome = $itemLista->nome;
                    $email = $itemLista->email;
                    $telefone = $itemLista->telefone;
                    $cpf = $itemLista->cpf;
                    $ativo = $itemLista->ativo;


                    ?>
                    <tr>
                        <th scope="row" class="text-center">
                            <?php echo $id; ?>
                        </th>
                        <td class="text-center">
                            <?php echo $nome; ?>
                        </td>
                        <td class="text-center">
                            <?php echo $email; ?>
                        </td>
                        <td class="text-center">
                            <?php echo $telefone; ?>
                        </td>
                        <td class="text-center">
                            <?php echo $cpf; ?>
                        </td>
                        <td class="text-center">
                            <?php echo $ativo; ?>
                        </td>
                        <td class="text-center">

                            <?php
                            if ($ativo == 'A') {
                                ?>

                                <button type="button" class="btn btn-sm btn-warning"
                                    onclick="ativaGeral('tbpessoas', 'idpessoas', <?php echo $id; ?>, 'desativar', 'listarPessoa');">Desativar</button>

                                <?php
                            } else if ($ativo == 'D') {
                                ?>

                                    <button type="button" class="btn btn-sm btn-success"
                                            onclick="ativaGeral('tbpessoas', 'idpessoas', <?php echo $id; ?>, 'ativar', 'listarPessoa');">Ativar</button>

                                <?php
                            } else {
                                ?>

                                    <button type="button" class="btn btn-sm btn-warning disabled">Erro</button>

                                <?php
                            }
                            ?>

                            <button type="button" class="btn btn-sm btn-secondary" data-toggle="modal"
                                data-target="#modalAltPessoa" data-id="<?php echo $id; ?>">Alterar</button>
                            <button type="button" class="btn btn-sm btn-danger"
                                onclick="excGeral('tbpessoas', 'idpessoas', <?php echo $id ?>, 'listarPessoa');">Excluir</button>
                        </td>
                    </tr>

                    <?php

                }

                ?>
            </tbody>
        </table>
    </div>
</div>

<div class="modal fade" id="modalAddPessoa" tabindex="-1" role="dialog" aria-labelledby="modalAddPessoa"
    aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="modalPAdd">Cadastro de Pessoas</h5>
                <button type="button" class="close text-danger" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">


                <form name="formCadPessoa" id="formCadPessoa" action="#">

                    <div class="form-group">
                        <label for="nome">Nome <span class="text-danger">*</span></label>
                        <input type="text" class="form-control" id="nome" placeholder="Nome" name="nome" required>
                    </div>

                    <div class="form-group">
                        <label for="email">E-mail <span class="text-danger">*</span></label>
                        <input type="email" class="form-control" id="email" placeholder="email@exemplo.com" name="email"
                            required>
                    </div>

                    <div class="form-row">

                        <div class="form-group col-md-6">
                            <label for="telefone">Telefone <span class="text-danger">*</span></label>
                            <input type="text" class="form-control" id="telefone" placeholder="(11) 9 1111-1111"
                                name="telefone" minlength="11" required>
                        </div>
                        <div class="form-group col-md-6">
                            <label for="cpf">CPF</label>
                            <input type="text" class="form-control" id="cpf" placeholder="111.111.111-11" name="cpf"
                                minlength="11">
                        </div>

                    </div>

                    <div class="modal-footer">
                        <button type="button" class="btn btn-danger" data-dismiss="modal">Fechar</button>
                        <button type="submit" class="btn btn-success"
                            onclick="cadGeral('formCadPessoa', 'modalAddPessoa', 'addPessoa', 'listarPessoa');">Cadastrar</button>
                    </div>

                    <div class="loadingf text-center p-3"></div>
                    <div class="resultError bg-danger text-left d-none p-3"></div>
                    <div class="resultSuccess bg-success text-center d-none p-3">Cadastro efetuado com sucesso!</div>

                </form>


            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="modalAltPessoa" tabindex="-1" role="dialog"
     aria-labelledby="modalAltPessoa" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="modalAPessoa">Alterar Registros</h5>
                <button type="button" class="close text-danger" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">


                <form name="formAltPessoa" id="formAltPessoa" action="#">

                    <div class="form-group">
                        <label for="nome">Nome <span class="text-danger">*</span></label>
                        <input type="text" class="form-control" id="nome" placeholder="Nome" name="nome"
                               value="" required>
                    </div>

                    <div class="form-group">
                        <label for="email">E-mail <span class="text-danger">*</span></label>
                        <input type="email" class="form-control" id="email"
                               placeholder="email@exemplo.com" name="email" value=""
                               required>
                    </div>

                    <div class="form-row">

                        <div class="form-group col-md-6">
                            <label for="telefone">Telefone <span class="text-danger">*</span></label>
                            <input type="text" class="form-control" id="telefone"
                                   placeholder="(11) 9 1111-1111" name="telefone" minlength="11"
                                   value="" required>
                        </div>
                        <div class="form-group col-md-6">
                            <label for="cpf">CPF</label>
                            <input type="text" class="form-control" id="cpf"
                                   placeholder="111.111.111-11" name="cpf" minlength="11"
                                   value="">
                        </div>

                    </div>

                    <div class="modal-footer">
                        <button type="button" class="btn btn-danger"
                                data-dismiss="modal">Fechar</button>
                        <button type="submit" class="btn btn-success"
                                onclick="altPessoas(<?php echo $id; ?>, 'listarPessoa');">Alterar</button>
                    </div>

                    <div class="loadingf text-center p-3"></div>
                    <div class="resultError bg-danger text-left d-none p-3"></div>
                    <div class="resultSuccess bg-success text-center d-none p-3">Alteração efetuada com
                        sucesso!</div>

                </form>


            </div>
        </div>
    </div>
</div>

<script>

    $('#modalAltPessoa').on('show.bs.modal', function (event) {

        let btn = $(event.relatedTarget);
        let btnResult = btn.data('id');

        let dadosTable = pegarDados(campos, tabela, nomeid, id)('nome,', 'tbpessoas', 'idpessoas', btnResult);

        alert(dadosTable);

    });

</script>