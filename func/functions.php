<?php 

function listarRegistros($campos, $tabela, $ativo) {
    $conn = conectar();
    try {
        $sqlLista = $conn->prepare("SELECT $campos FROM $tabela WHERE ativo = ? ");
        $sqlLista->bindValue(1, $ativo, PDO::PARAM_STR);
        $sqlLista->execute();
        if ($sqlLista->rowCount() > 0) {
            return $sqlLista->fetchAll(PDO::FETCH_OBJ);
        } else {
            return false;
        };
    } catch (PDOException $e) {
        return 'Não foi possível acessar os dados. Erro: ' . $e->getMessage();
    };
};

function listarRegistrosPar($campos, $tabela, $ativo, $param2, $valp2) {
    $conn = conectar();
    try {
        $sqlLista = $conn->prepare("SELECT $campos FROM $tabela WHERE ativo = ? AND $param2 = ?");
        $sqlLista->bindValue(1, $ativo, PDO::PARAM_STR);
        $sqlLista->bindValue(2, $valp2, PDO::PARAM_INT);
        $sqlLista->execute();
        if ($sqlLista->rowCount() > 0) {
            return $sqlLista->fetchAll(PDO::FETCH_OBJ);
        } else {
            return false;
        };
    } catch (PDOException $e) {
        return 'Não foi possível acessar os dados. Erro: ' . $e->getMessage();
    };
};

function listarRegistrosJoin($campos, $tabela, $join, $tabela2, $id, $ativo) {
    $conn = conectar();
    try {
        $sqlLista = $conn->prepare("SELECT $campos FROM $tabela $join JOIN $tabela2 ON $tabela.$id = $tabela2.$id AND $tabela.ativo = ? AND $tabela2.ativo = ?");
        $sqlLista->bindValue(1, $ativo, PDO::PARAM_STR);
        $sqlLista->bindValue(2, $ativo, PDO::PARAM_STR);
        $sqlLista->execute();
        if ($sqlLista->rowCount() > 0) {
            return $sqlLista->fetchAll(PDO::FETCH_OBJ);
        } else {
            return false;
        };
    } catch (PDOException $e) {
        return 'Não foi possível acessar os dados. Erro: ' . $e->getMessage();
    };
};

function listarRegistrosJoin2($campos, $tabela, $join, $tabela2, $id, $join2, $tabela3, $id2, $ativo) {
    $conn = conectar();
    try {
        $sqlLista = $conn->prepare("SELECT $campos FROM $tabela $join JOIN $tabela2 ON $tabela.$id = $tabela2.$id $join2 JOIN $tabela3 ON $tabela2.$id2 = $tabela3.$id2 AND $tabela.ativo = ? AND $tabela2.ativo = ? AND $tabela3.ativo = ?");
        $sqlLista->bindValue(1, $ativo, PDO::PARAM_STR);
        $sqlLista->bindValue(2, $ativo, PDO::PARAM_STR);
        $sqlLista->bindValue(3, $ativo, PDO::PARAM_STR);
        $sqlLista->execute();
        if ($sqlLista->rowCount() > 0) {
            return $sqlLista->fetchAll(PDO::FETCH_OBJ);
        } else {
            return false;
        };
    } catch (PDOException $e) {
        return 'Não foi possível acessar os dados. Erro: ' . $e->getMessage();
    };
};

?>