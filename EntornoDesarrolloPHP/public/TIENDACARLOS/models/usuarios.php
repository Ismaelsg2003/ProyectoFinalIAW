<?php
require_once 'db/db.php';

class UsuarioDAO{
    public $db_con;
    public function __construct(){
        $this->db_con=Database::connect();
    }
    public function getAllUsers($usuario,$contrasena){
        $stmt=$this->db_con->prepare("select * from Users where nombreusuario='$usuario' and contrasenausuario='$contrasena'");
        $stmt->setFetchMode(PDO::FETCH_ASSOC);
        $stmt->execute();
        return $stmt->fetchAll();
    }
}

?>