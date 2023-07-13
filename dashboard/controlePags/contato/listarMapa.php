<?php 

$listar = listarRegistros('idmapacontato, mapa, ativo','tbmapacontato','A');

?>

<div class="card">
    <div class="card-header text-center">
        <h3 class="text-danger font-weight-bold">Listar Mapas de Contato</h3>
    </div>
    <div class="card-body">
        <table class="table table-striped">
            <thead class="bg-danger">
                <tr>
                    <th scope="col" width="5%" class="text-center">#</th>
                    <th scope="col" width="70%" class="text-center">Imagem</th>
                    <th scope="col" width="5%" class="text-center">Ativo</th>
                    <th scope="col" width="20%" class="text-center">Ações</th>
                </tr>
            </thead>
            <tbody>
                <?php 
                
                foreach ($listar as $itemLista) {
                    $id = $itemLista->idmapacontato;
                    $mapa = $itemLista->mapa;
                    $ativo = $itemLista->ativo;
                
                
                ?>
                <tr>
                    <th scope="row" class="text-center"><?php echo $id; ?></th>
                    <td class="text-center">
                        <div class="mb-3">
                            <iframe src="<?php echo $mapa; ?>" width="100%" height="400" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                        </div>
                    </td>
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