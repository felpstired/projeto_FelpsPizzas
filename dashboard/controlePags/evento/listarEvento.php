<?php 

$listar = listarRegistros('ideventos, titulo, preco, descricao, imagem, ativo','tbeventos','A');

?>

<div class="card">
    <div class="card-header text-center">
        <h3 class="text-danger font-weight-bold">Listar Eventos</h3>
    </div>
    <div class="card-body">
        <table class="table table-striped">
            <thead class="bg-danger">
                <tr>
                    <th scope="col" width="1%" class="text-center">#</th>
                    <th scope="col" width="8%" class="text-center">Imagem</th>
                    <th scope="col" width="8%" class="text-center">Titulo</th>
                    <th scope="col" width="30%" class="text-center">Descricao</th>
                    <th scope="col" width="10%" class="text-center">Preço</th>
                    <th scope="col" width="1%" class="text-center">Ativo</th>
                    <th scope="col" width="15%" class="text-center">Ações</th>
                </tr>
            </thead>
            <tbody>
                <?php 
                
                foreach ($listar as $itemLista) {
                    $id = $itemLista->ideventos;
                    $imagem = $itemLista->imagem;
                    $titulo = $itemLista->titulo;
                    $descricao = $itemLista->descricao;
                    $preco = $itemLista->preco;
                    $ativo = $itemLista->ativo;
                
                
                ?>
                <tr>
                    <th scope="row" class="text-center"><?php echo $id; ?></th>
                    <td class="text-center"><img src="<?php echo $imagem; ?>" class="img-fluid rounded mx-auto d-block img-thumbnail" alt=""></td>
                    <td class="text-center"><?php echo $titulo; ?></td>
                    <td><?php echo $descricao; ?></td>
                    <td class="text-center">R$ <?php echo $preco; ?></td>
                    <td class="text-center"><?php echo $ativo; ?></td>
                    <td class="text-center">
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