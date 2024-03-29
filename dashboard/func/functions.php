<?php 

function listarTudo($campos, $tabela) {
    $conn = conectar();
    try {
        $sqlLista = $conn->prepare("SELECT $campos FROM $tabela");
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

function listarRegistros2($campos, $tabela, $idcampo, $id) {
    $conn = conectar();
    try {
        $sqlLista = $conn->prepare("SELECT $campos FROM $tabela WHERE $idcampo = ? ");
        $sqlLista->bindValue(1, $id, PDO::PARAM_INT);
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
        }
    } catch (PDOException $e) {
        return 'Não foi possível acessar os dados. Erro: ' . $e->getMessage();
    }
};

function listarRegistrosPar2($campos, $tabela, $ativo, $param2, $valp2) {
   $conn = conectar();
   try {
       $sqlLista = $conn->prepare("SELECT $campos FROM $tabela WHERE ativo = ? AND $param2 = ?");
       $sqlLista->bindValue(1, $ativo, PDO::PARAM_STR);
       $sqlLista->bindValue(2, $valp2, PDO::PARAM_STR);
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

function listarRegistrosJoinOrderBy($campos, $tabela, $join, $tabela2, $id, $ativo, $tbcamp, $order) {
    $conn = conectar();
    try {
        $sqlLista = $conn->prepare("SELECT $campos FROM $tabela $join JOIN $tabela2 ON $tabela.$id = $tabela2.$id AND $tabela.ativo = ? AND $tabela2.ativo = ? ORDER BY $tbcamp $order");
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

function inserirRegistrosReturnId($tabela, $campos, $valores) {
    $conn = conectar();
    try {
        $sqlLista = $conn->prepare("INSERT INTO $tabela ($campos) VALUES ($valores, NOW())");
        $resul = $sqlLista->execute();
        if ($resul === false) {
            $conn->rollback();
            return false;
        } else {
            $id = $conn->lastInsertId();
            return $id;
        };
    } catch (PDOException $e) {
        return 'Não foi possível cadastrar os dados. Erro: ' . $e->getMessage();
    };
};

function inserirRegistros($tabela, $campos, $valores) {
    $conn = conectar();
    try {
        $sqlLista = $conn->prepare("INSERT INTO $tabela ($campos) VALUES ($valores, NOW())");
        $resul = $sqlLista->execute();
        if ($resul === false) {
            $conn->rollback();
            return false;
        } else {
            return true;
        };
    } catch (PDOException $e) {
        return 'Não foi possível cadastrar os dados. Erro: ' . $e->getMessage();
    };
};

function excluirRegistros($tabela, $nomeid, $id) {
    $conn = conectar();
    try {
        $sqlExc = $conn->prepare("DELETE FROM $tabela WHERE $nomeid = ?");-
        $sqlExc->bindValue(1, $id, PDO::PARAM_INT);
        $resul = $sqlExc->execute();
        if ($resul === false) {
            $conn->rollback();
            return false;
        } else {
            return true;
        };
    } catch (PDOException $e) {
        return 'Não foi possível cadastrar os dados. Erro: ' . $e->getMessage();
    };
};

function alterarRegistros($tabela, $valores, $nomeid, $id) {
    $conn = conectar();
    try {
        $sqlAlter = $conn->prepare("UPDATE $tabela SET $valores WHERE $nomeid = ?");
        $sqlAlter->bindValue(1, $id, PDO::PARAM_INT);
        $resul = $sqlAlter->execute();
        if ($resul === false) {
            $conn->rollback();
            return false;
        } else {
            return true;
        };
    } catch (PDOException $e) {
        return 'Não foi possível cadastrar os dados. Erro: ' . $e->getMessage();
    };
};

?>