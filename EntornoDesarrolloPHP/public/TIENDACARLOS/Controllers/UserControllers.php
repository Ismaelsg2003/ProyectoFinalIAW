<?php
class ControllerUsu{
   
public function showiniciosesion(){
    View::show("login");
}

public function validacioniniciosesion(){
    $errores=array();
    if(isset($_POST['iniciarsesion'])){
        if(!isset($_POST['usuario'])||strlen($_POST['usuario'])==0){
            $errores['usuario']="El nombre debe estar relleno";
        }
        if(!isset($_POST['contrasena'])||strlen($_POST['contrasena'])==0){
            $errores['contrasena']="La contrasena no puede estar vacia";
        }
        if(empty($errores)){
            include_once('models/usuarios.php');
            include_once('models/productos.php');
            $uDAO=new UsuarioDAO();
            if(empty($uDAO->getAllUsers($_POST['usuario'],$_POST['contrasena']))){
                $errores['general']="El usuario no esta registrado.";
                View::show("login",$errores);
            }else{
                $pDAO=new ProductoDAO();
                $products=$pDAO->getAllProducts();
                $pDAO=null;
                $_SESSION['usuario']=$_POST['usuario'];
                View::show("showProducts", $products);
            }
        }else{
            View::show("login",$errores);
        }
    }
}

public function cerrarsesion(){
    session_destroy();
    View::show("login");
}

}



?>