<?php
function conectar() {
    try {
        $conn = new PDO('mysql:host=' . HOST . '; charset=utf8mb4; dbname=' . DBNAME, USER, PASS);
//        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $conn->setAttribute (PDO::MYSQL_ATTR_USE_BUFFERED_QUERY, true);
    } catch (PDOException $e) {
        echo "Não foi possível conectar ao banco de dados. Erro: " . $e->getMessage();
        die();
    }
    return $conn;
}