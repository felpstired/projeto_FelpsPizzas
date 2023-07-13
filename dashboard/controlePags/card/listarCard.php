<?php 

$listar = listarRegistros('idcard, icon, titulo, descricao, ativo','tbcard','A');

?>

<div class="card">
    <div class="card-header text-center">
        <h3 class="text-danger font-weight-bold">Listar Cards</h3>
    </div>
    <div class="card-body">
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