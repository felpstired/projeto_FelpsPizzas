<?php 

$listar = listarRegistros('idpessoas, nome, email, telefone, cpf, ativo','tbpessoas','A');

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
                    <th scope="col" width="25%">Nome</th>
                    <th scope="col" width="25%">Email</th>
                    <th scope="col" width="12%">Telefone</th>
                    <th scope="col" width="12%">CPF</th>
                    <th scope="col" width="1%">Ativo</th>
                    <th scope="col" width="19%">Ações</th>
                </tr>
            </thead>
            <tbody>
                <?php 
                
                foreach ($listar as $itemLista) {
                    $id = $itemLista->idpessoas;
                    $nome = $itemLista->nome;
                    $email = $itemLista->email;
                    $telefone = $itemLista->telefone;
                    $cpf = $itemLista->cpf;
                    $ativo = $itemLista->ativo;
                
                
                ?>
                <tr>
                    <th scope="row"><?php echo $id; ?></th>
                    <td><?php echo $nome; ?></td>
                    <td><?php echo $email; ?></td>
                    <td><?php echo $telefone; ?></td>
                    <td><?php echo $cpf; ?></td>
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