<?php 

$listar = listarRegistrosJoinOrderBy('tbcardapio.idcardapio, tbcardapio.imagem, tbcardapio.tituloimg, tbcardapio.descimg, tbcardapio.preco, tbmenucardapio.menucardapio', 'tbcardapio', 'INNER', 'tbmenucardapio', 'idmenucardapio', 'A', 'tbcardapio.idcardapio', 'ASC');

?>

<div class="card">
    <div class="card-header text-center">
        <h3 class="text-danger font-weight-bold">Listar Cardápios</h3>
    </div>
    <div class="card-body">
        <table class="table table-striped">
            <thead class="bg-danger">
                <tr>
                    <th scope="col" width="1%">#</th>
                    <th scope="col" width="4%">Imagem</th>
                    <th scope="col" width="15%">Categoria</th>
                    <th scope="col" width="20%">Nome</th>
                    <th scope="col" width="30%">Descrição</th>
                    <th scope="col" width="10%">Preço</th>
                    <th scope="col" width="20%">Ações</th>
                </tr>
            </thead>
            <tbody>
                <?php 
                
                foreach ($listar as $itemLista) {
                    $id = $itemLista->idcardapio;
                    $imagem = $itemLista->imagem;
                    $categoria = $itemLista->menucardapio; 
                    $nome = $itemLista->tituloimg; 
                    $desc = $itemLista->descimg; 
                    $preco = $itemLista->preco;           
                
                ?>
                <tr>
                    <th scope="row"><?php echo $id; ?></th>
                    <td><img src="<?php echo $imagem; ?>" class="img-fluid rounded mx-auto d-block img-thumbnail" alt=""></td>
                    <td><?php echo $categoria; ?></td>
                    <td><?php echo $nome; ?></td>
                    <td><?php echo $desc; ?></td>
                    <td><?php echo $preco; ?></td>
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