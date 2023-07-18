<?php 

$listar = listarRegistrosJoinOrderBy('tbcardapio.idcardapio, tbcardapio.imagem, tbcardapio.tituloimg, tbcardapio.descimg, tbcardapio.preco, tbcardapio.ativo, tbmenucardapio.menucardapio', 'tbcardapio', 'INNER', 'tbmenucardapio', 'idmenucardapio', 'A', 'tbcardapio.idcardapio', 'ASC');

?>

<div class="card">
    <div class="card-header text-center">
        <h3 class="text-danger font-weight-bold">Listar Cardápios</h3>
    </div>
    <div class="card-body">
        <table class="table table-striped">
            <thead class="bg-danger">
                <tr>
                    <th scope="col" width="1%" class="text-center">#</th>
                    <th scope="col" width="4%" class="text-center">Imagem</th>
                    <th scope="col" width="15%" class="text-center">Categoria</th>
                    <th scope="col" width="20%" class="text-center">Nome</th>
                    <th scope="col" width="29%" class="text-center">Descrição</th>
                    <th scope="col" width="10%" class="text-center">Preço</th>
                    <th scope="col" width="1%" class="text-center">Ativo</th>
                    <th scope="col" width="20%" class="text-center">Ações</th>
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
                    $ativo = $itemLista->ativo;
                
                ?>
                <tr>
                    <th scope="row" class="text-center"><?php echo $id; ?></th>
                    <td class="text-center"><img src="<?php echo $imagem; ?>" class="img-fluid rounded mx-auto d-block img-thumbnail" alt=""></td>
                    <td class="text-center"><?php echo $categoria; ?></td>
                    <td class="text-center"><?php echo $nome; ?></td>
                    <td><?php echo $desc; ?></td>
                    <td class="text-center"><?php echo $preco; ?></td>
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