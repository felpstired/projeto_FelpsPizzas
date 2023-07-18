<?php 

$listar = listarTudo('idbanner, imagem, titulo, descricao, video, ativo','tbbanner');

?>

<div class="card">
    <div class="card-header text-center">
        <h3 class="text-danger font-weight-bold">Listar Banners</h3>
    </div>
    <div class="card-body">
        <table class="table table-striped">
            <thead class="bg-danger">
                <tr>
                    <th scope="col" width="1%" class="text-center">#</th>
                    <th scope="col" width="5%" class="text-center">Imagem</th>
                    <th scope="col" width="15%" class="text-center">Titulo</th>
                    <th scope="col" width="20%" class="text-center">Descrição</th>
                    <th scope="col" width="20%" class="text-center">Video</th>
                    <th scope="col" width="1%" class="text-center">Ativo</th>
                    <th scope="col" width="18%" class="text-center">Ações</th>
                </tr>
            </thead>
            <tbody>
                <?php 
                
                foreach ($listar as $itemLista) {
                    $id = $itemLista->idbanner;
                    $imagem = $itemLista->imagem;
                    $titulo = $itemLista->titulo;
                    $descricao = $itemLista->descricao;
                    $video = $itemLista->video;
                    $ativo = $itemLista->ativo;
                
                
                ?>
                <tr>
                    <th scope="row" class="text-center"><?php echo $id; ?></th>
                    <td class="text-center"><img src="<?php echo $imagem; ?>" class="img-fluid rounded mx-auto d-block img-thumbnail" alt=""></td>
                    <td class="text-center"><?php echo $titulo; ?></td>
                    <td><?php echo $descricao; ?></td>
                    <td class="text-center"><a href="<?php echo $video; ?>" class="text-danger" target="_blank"><?php echo $video; ?></a></td>
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