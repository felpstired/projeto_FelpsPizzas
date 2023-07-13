<?php 

$listar = listarRegistros('idmenucardapio, menucardapio, ativo','tbmenucardapio','A');

?>

<div class="card">
    <div class="card-header text-center">
        <h3 class="text-danger font-weight-bold">Listar Categorias</h3>
    </div>
    <div class="card-body">
        <table class="table table-striped">
            <thead class="bg-danger">
                <tr>
                    <th scope="col" width="1%" class="text-center">#</th>
                    <th scope="col" width="25%" class="text-center">Categoria</th>
                    <th scope="col" width="1%" class="text-center">Ativo</th>
                    <th scope="col" width="20%" class="text-center">Ações</th>
                </tr>
            </thead>
            <tbody>
                <?php 
                
                foreach ($listar as $itemLista) {
                    $id = $itemLista->idmenucardapio;
                    $menu = $itemLista->menucardapio;
                    $ativo = $itemLista->ativo;                
                
                ?>
                <tr>
                    <th scope="row" class="text-center"><?php echo $id; ?></th>
                    <td class="text-center"><?php echo $menu; ?></td>
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