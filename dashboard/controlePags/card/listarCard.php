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
                    <th scope="col" width="33%" class="text-center">Descrição</th>
                    <th scope="col" width="1%" class="text-center">Ativo</th>
                    <th scope="col" width="10%" class="text-center">Ações</th>
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

<div class="modal fade" id="modalAddCard" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLongTitle">Cadastro de Cards</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">


                <form name="formCadCard" id="formCadCard" action="#">

                    <div class="form-row">

                        <div class="form-group col-md-6">
                            <label for="inputEmail4">Icon</label>
                            <input type="text" class="form-control" id="icon" placeholder="bi bi-copy" name="icon">
                        </div>
                        <div class="form-group col-md-6">
                            <label for="inputPassword4">Titulo <span class="text-danger">*</span></label>
                            <input type="text" class="form-control" id="titulo" placeholder="Titulo" name="titulo" required>
                        </div>

                    </div>

                    <div class="form-group">
                        <label for="exampleFormControlTextarea1">Descrição <span class="text-danger">*</span></label>
                        <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" placeholder="Escreva uma descrição..." name="desc" required></textarea>
                    </div>
                    
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar</button>
                        <button type="submit" class="btn btn-success" onclick="cadCard('listarCard');">Cadastrar</button>
                    </div>

                </form>


            </div>
        </div>
    </div>
</div>