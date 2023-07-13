<?php 

$listar = listarRegistrosJoin('tbcontato.idcontato, tbcontato.icone, tbcontato.titulo, tbcontato.conteudo, tbcontato.ativo, tbmapacontato.idmapacontato', 'tbcontato', 'INNER', 'tbmapacontato', 'idmapacontato', 'A');

?>

<div class="card">
    <div class="card-header text-center">
        <h3 class="text-danger font-weight-bold">Listar Info</h3>
    </div>
    <div class="card-body">
        <table class="table table-striped">
            <thead class="bg-danger">
                <tr>
                    <th scope="col" width="1%" class="text-center">#</th>
                    <th scope="col" width="10%" class="text-center">Id Mapa</th>
                    <th scope="col" width="2%" class="text-center">Icone</th>
                    <th scope="col" width="20%" class="text-center">Titulo</th>
                    <th scope="col" width="50%" class="text-center">Conteudo</th>
                    <th scope="col" width="1%" class="text-center">Ativo</th>
                    <th scope="col" width="15%" class="text-center">Ações</th>
                </tr>
            </thead>
            <tbody>
                <?php 
                
                foreach ($listar as $itemLista) {
                    $id = $itemLista->idcontato;
                    $idmapa = $itemLista->idmapacontato;
                    $icon = $itemLista->icone;
                    $titulo = $itemLista->titulo;
                    $conteudo = $itemLista->conteudo;
                    $ativo = $itemLista->ativo; 
                
                ?>
                <tr>
                    <th scope="row" class="text-center"><?php echo $id; ?></th>
                    <td class="text-center"><?php echo $idmapa; ?></td>
                    <td class="text-center"><i class="bi <?php echo $icon; ?>"></i></td>
                    <td class="text-center"><?php echo $titulo; ?></td>
                    <td><?php echo $conteudo; ?></td>
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