<?php

$listar = listarRegistrosJoin('tbfuncionarios.idfuncionarios, tbfuncionarios.cargo, tbfuncionarios.admissao, tbfuncionarios.ativo, tbpessoas.nome', 'tbfuncionarios', 'INNER', 'tbpessoas', 'idpessoas', 'A');

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
                    <th scope="col" width="25%" class="text-center">Admissão</th>
                    <th scope="col" width="1%" class="text-center">Ativo</th>
                    <th scope="col" width="23%" class="text-center">Ações</th>
                </tr>
            </thead>
            <tbody>
                <?php

                foreach ($listar as $itemLista) {
                    $id = $itemLista->idfuncionarios;
                    $nome = $itemLista->nome;
                    $cargo = $itemLista->cargo;
                    $admissao = $itemLista->admissao;
                    $ativo = $itemLista->ativo;

                ?>
                    <tr>
                        <th scope="row" class="text-center"><?php echo $id; ?></th>
                        <td class="text-center"><?php echo $nome; ?></td>
                        <td class="text-center"><?php echo $cargo; ?></td>
                        <td class="text-center"><?php echo $admissao; ?></td>
                        <td class="text-center"><?php echo $ativo; ?></td>
                        <td class="text-center">

                            <?php
                            if ($ativo == 'A') {
                            ?>

                                <button type="button" class="btn btn-sm btn-warning" data-id="<?php echo $id; ?>">Desativar</button>

                            <?php
                            } else if ($ativo == 'D') {
                            ?>

                                <button type="button" class="btn btn-sm btn-success" data-id="<?php echo $id; ?>">Ativar</button>

                            <?php
                            } else {
                            ?>

                                <button type="button" class="btn btn-sm btn-warning disabled" data-id="<?php echo $id; ?>">Erro</button>

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

<div class="modal fade" id="modalAddFuncionario" tabindex="-1" role="dialog" aria-labelledby="modalAddFuncionario" aria-hidden="true">
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

                    if ($listarP === false) {
                        echo '<h6 class="text-center mt-5 p-3 bg-danger text-white">Não foi possível resgatar registros no banco!<br>Por favor, tente novamente mais tarde.</h6>';
                    } else {

                    ?>

                    <div class="form-group">
                        <label for="pessoa">Pessoa <span class="text-danger">*</span></label>
                        <select class="form-control" name="pessoa" id="pessoa" placeholder="Selecione uma pessoa" required>
                            <option selected>Selecione uma pessoa</option>
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

                    <?php

                    }

                    ?>

                    <div class="form-row">

                        <div class="form-group col-md-6">
                            <label for="cargo">Cargo <span class="text-danger">*</span></label>
                            <input type="text" class="form-control" id="cargo" placeholder="Digite um cargo..." name="cargo" maxlength="60" required>
                        </div>
                        <div class="form-group col-md-6">
                            <label for="admissao">Admissão <span class="text-danger">*</span></label>
                            <input type="text" class="form-control" id="admissao" placeholder="DD/MM/AAAA" name="admissao" required>
                        </div>

                    </div>

                    <div class="modal-footer">
                        <button type="button" class="btn btn-danger" data-dismiss="modal">Fechar</button>
                        <button type="submit" class="btn btn-success <?php  if ($listarP === false) { echo 'disabled'; } ?>" onclick="cadGeral('formCadFunci', 'modalAddFuncionario', 'addFuncionario', 'listarFuncionario');">Cadastrar</button>
                    </div>

                    <div class="resultError bg-danger text-left d-none p-3"></div>
                    <div class="resultSuccess bg-success text-center d-none p-3">Cadastro efetuado com sucesso!</div>

                </form>


            </div>
        </div>
    </div>
</div>