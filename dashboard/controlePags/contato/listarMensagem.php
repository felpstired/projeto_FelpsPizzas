<?php 

$listar = listarRegistros('idcontmsg, nome, email, assunto, mensagem, ativo','tbcontmsg','A');

?>

<div class="card">
    <div class="card-header text-center">
        <h3 class="text-danger font-weight-bold">Listar Mensagens</h3>
    </div>
    <div class="card-body">
        <table class="table table-striped">
            <thead class="bg-danger">
                <tr>
                    <th scope="col" width="1%" class="text-center">#</th>
                    <th scope="col" width="15%" class="text-center">Nome</th>
                    <th scope="col" width="12%" class="text-center">Email</th>
                    <th scope="col" width="13%" class="text-center">Assunto</th>
                    <th scope="col" width="43%" class="text-center">Mensagem</th>
                    <th scope="col" width="1%" class="text-center">Ativo</th>
                    <th scope="col" width="15%" class="text-center">Ações</th>
                </tr>
            </thead>
            <tbody>
                <?php 
                
                foreach ($listar as $itemLista) {
                    $id = $itemLista->idcontmsg;
                    $nome = $itemLista->nome;
                    $email = $itemLista->email;
                    $assunto = $itemLista->assunto;
                    $mensagem = $itemLista->mensagem;
                    $ativo = $itemLista->ativo;
                
                
                ?>
                <tr>
                    <th scope="row" class="text-center"><?php echo $id; ?></th>
                    <td class="text-center"><?php echo $nome; ?></td>
                    <td class="text-center"><?php echo $email; ?></td>
                    <td class="text-center"><?php echo $assunto; ?></td>
                    <td class="text-center"><?php echo $mensagem; ?></td>
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