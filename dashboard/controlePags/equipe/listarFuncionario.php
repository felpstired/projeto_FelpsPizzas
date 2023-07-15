<?php

$listar = listarRegistrosJoin('tbfuncionarios.idfuncionarios, tbfuncionarios.cargo, tbpessoas.nome', 'tbfuncionarios', 'INNER', 'tbpessoas', 'idpessoas', 'A');

?>

<div class="card">
    <div class="card-header text-center">
        <h3 class="text-danger font-weight-bold">Listar Funcionários</h3>
    </div>
    <div class="card-body">
        <div class="row mb-3">
            <div class="col-12 text-center">
                <button type="button" class="btn btn-sm btn-danger" data-toggle="modal" data-target="#modalAddFuncionario">Cadastrar Funcionários</button>
            </div>
        </div>
        <table class="table table-striped">
            <thead class="bg-danger">
                <tr>
                    <th scope="col" width="1%" class="text-center">#</th>
                    <th scope="col" width="25%" class="text-center">Nome</th>
                    <th scope="col" width="25%" class="text-center">Cargo</th>
                    <th scope="col" width="20%" class="text-center">Ações</th>
                </tr>
            </thead>
            <tbody>
                <?php

                foreach ($listar as $itemLista) {
                    $id = $itemLista->idfuncionarios;
                    $nome = $itemLista->nome;
                    $cargo = $itemLista->cargo;

                ?>
                    <tr>
                        <th scope="row" class="text-center"><?php echo $id; ?></th>
                        <td class="text-center"><?php echo $nome; ?></td>
                        <td class="text-center"><?php echo $cargo; ?></td>
                        <td class="text-center">

                            <?php
                            if ($ativo == 'A') {
                            ?>

                                <button type="button" class="btn btn-sm btn-warning tbcard" data-id="<?php echo $id; ?>">Desativar</button>

                            <?php
                            } else if ($ativo == 'D') {
                            ?>

                                <button type="button" class="btn btn-sm btn-success tbcard" data-id="<?php echo $id; ?>">Ativar</button>

                            <?php
                            } else {
                            ?>

                                <button type="button" class="btn btn-sm btn-warning tbcard disabled" data-id="<?php echo $id; ?>">Erro</button>

                            <?php
                            }
                            ?>

                            <button type="button" class="btn btn-sm btn-secondary">Alterar</button>
                            <button type="button" class="btn btn-sm btn-danger">Excluir</button>
                        </td>
                    </tr>
                <?php

                }

                ?>
            </tbody>
        </table>
    </div>
</div>

<div class="modal fade" id="modalAddFuncionario" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLongTitle">Cadastro de Funcionários</h5>
                <button type="button" class="close text-danger" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">


                <form name="formCadFunci" id="formCadFunci" action="#">

                    <?php

                    $listarP = listarRegistros('idpessoas, nome', 'tbpessoas', 'A');

                    ?>

                    <div class="form-group">
                        <label for="pessoa">Pessoa <span class="text-danger">*</span></label>
                        <select class="form-select" name="pessoa" id="pessoa" required>
                            <option selected>Selecione um menu</option>
                            <?php

                            foreach ($listarP as $listarItemP) {
                                $id = $listarItemP->idpessoas;
                                $nome = $listarItemP->nome;


                            ?>
                                <option value="<?php echo $id ?>"><?php echo $nome ?></option>
                            <?php

                            }

                            ?>

                        </select>
                    </div>

                    <div class="form-row">

                        <div class="form-group col-md-6">
                            <label for="cargo">Cargo <span class="text-danger">*</span></label>
                            <input type="text" class="form-control" id="cargo" placeholder="(11) 9 1111-1111" name="cargo" required>
                        </div>
                        <div class="form-group col-md-6">
                            <label for="cpf">Admissão <span class="text-danger">*</span></label>
                            <input type="text" class="form-control" id="cpf" placeholder="111.111.111-11" name="cpf">
                        </div>

                    </div>

                    <div class="modal-footer">
                        <button type="button" class="btn btn-danger" data-dismiss="modal">Fechar</button>
                        <button type="submit" class="btn btn-success" onclick="cadPessoa();">Cadastrar</button>
                    </div>

                    <div class="resultError bg-danger text-left d-none p-3"></div>
                    <div class="resultSuccess bg-success text-center d-none p-3">Cadastro efetuado com sucesso!</div>

                </form>


            </div>
        </div>
    </div>
</div>