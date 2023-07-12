<?php 

$listar = listarRegistros('idbanner, imagem, titulo, descricao, video, ativo','tbbanner','A');

?>

<div class="card">
    <div class="card-header text-center">
        <h3 class="text-danger font-weight-bold">Listar Pessoas</h3>
    </div>
    <div class="card-body">
        <table class="table table-striped">
            <thead class="bg-danger">
                <tr>
                    <th scope="col" width="1%">#</th>
                    <th scope="col" width="5%">Imagem</th>
                    <th scope="col" width="15%">Titulo</th>
                    <th scope="col" width="20%">Descrição</th>
                    <th scope="col" width="20%">Video</th>
                    <th scope="col" width="1%">Ativo</th>
                    <th scope="col" width="18%">Ações</th>
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
                    <th scope="row"><?php echo $id; ?></th>
                    <td><img src="<?php echo $imagem; ?>" class="img-fluid rounded mx-auto d-block img-thumbnail" alt=""></td>
                    <td><?php echo $titulo; ?></td>
                    <td><?php echo $descricao; ?></td>
                    <td><a href="<?php echo $video; ?>" class="text-danger" target="_blank"><?php echo $video; ?></a></td>
                    <td><?php echo $ativo; ?></td>
                    <td>
                            <button type="button" class="btn btn-sm btn-success">Ativar</button>
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