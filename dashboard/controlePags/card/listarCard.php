<?php

$listar = listarTudo('idcard, icon, titulo, descricao, ativo', 'tbcard');

?>

<div class="card">
    <div class="card-header text-center">
        <h3 class="text-danger font-weight-bold">Listar Cards</h3>
    </div>
    <div class="card-body">
        <div class="row mb-3">
            <div class="col-12 text-center">
                <button type="button" class="btn btn-sm btn-danger" data-toggle="modal" data-target="#modalAddCard">Cadastrar Novo Card</button>
            </div>
        </div>
        <table class="table table-striped">
            <thead class="bg-danger">
                <tr>
                    <th scope="col" width="1%" class="text-center">#</th>
                    <th scope="col" width="2%" class="text-center">Icon</th>
                    <th scope="col" width="13%" class="text-center">Titulo</th>
                    <th scope="col" width="32%" class="text-center">Descrição</th>
                    <th scope="col" width="1%" class="text-center">Ativo</th>
                    <th scope="col" width="11%" class="text-center">Ações</th>
                </tr>
            </thead>
            <tbody>
                <?php

                foreach ($listar as $itemLista) {
                    $id = $itemLista->idcard;
                    $icon = $itemLista->icon;
                    $titulo = $itemLista->titulo;
                    $descricao = $itemLista->descricao;
                    $ativo = $itemLista->ativo;


                ?>
                    <tr>
                        <th scope="row"><?php echo $id; ?></th>
                        <td class="text-center"><i class="<?php echo $icon; ?>"></i></td>
                        <td class="text-center"><?php echo $titulo; ?></td>
                        <td><?php echo $descricao; ?></td>
                        <td class="text-center"><?php echo $ativo; ?></td>
                        <td class="text-center">

                            <?php
                            if ($ativo == 'A') {
                                ?>

                                <button type="button" class="btn btn-sm btn-warning"
                                        onclick="ativaGeral('tbcard', 'idcard', <?php echo $id; ?>, 'desativar', 'listarCard');">Desativar</button>

                                <?php
                            } else if ($ativo == 'D') {
                                ?>

                                <button type="button" class="btn btn-sm btn-success"
                                        onclick="ativaGeral('tbcard', 'idcard', <?php echo $id; ?>, 'ativar', 'listarCard');">Ativar</button>

                                <?php
                            } else {
                                ?>

                                <button type="button" class="btn btn-sm btn-warning disabled">Erro</button>

                                <?php
                            }
                            ?>

                            <button type="button" class="btn btn-sm btn-secondary" data-id="<?php echo $id; ?>">Alterar</button>
                            <button type="button" class="btn btn-sm btn-danger" onclick="excGeral('tbcard', 'idcard', <?php echo $id ?>, 'listarCard');">Excluir</button>
                        </td>
                    </tr>
                <?php

                }

                ?>
            </tbody>
        </table>
    </div>
</div>

<div class="modal fade" id="modalAddCard" tabindex="-1" role="dialog" aria-labelledby="modalAddCard" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="modalCardAdd">Cadastro de Cards</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">


                <form name="formCadCard" id="formCadCard" action="#">

                    <div class="form-row">

                        <div class="form-group col-md-6">
                            <label for="icon">Icon</label>
                            <input type="text" class="form-control" id="icon" placeholder="bi bi-copy" name="icon">
                        </div>
                        <div class="form-group col-md-6">
                            <label for="titulo">Titulo <span class="text-danger">*</span></label>
                            <input type="text" class="form-control" id="titulo" placeholder="Titulo" name="titulo" required>
                        </div>

                    </div>

                    <div class="form-group">
                        <label for="desc">Descrição <span class="text-danger">*</span></label>
                        <textarea class="form-control" id="desc" rows="3" name="desc" placeholder="Escreva uma descrição..." required></textarea>
                    </div>
                    
                    <div class="modal-footer">
                        <button type="button" class="btn btn-danger" data-dismiss="modal">Fechar</button>
                        <button type="submit" class="btn btn-success" onclick="cadGeral('formCadCard', 'modalAddCard', 'addCard', 'listarCard');">Cadastrar</button>
                    </div>

                    <div class="loadingf text-center p-3"></div>
                    <div class="resultError bg-danger text-left d-none p-3"></div>
                    <div class="resultSuccess bg-success text-center d-none p-3">Cadastro efetuado com sucesso!</div>

                </form>


            </div>
        </div>
    </div>
</div>