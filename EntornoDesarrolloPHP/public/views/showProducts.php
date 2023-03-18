<!--
    Vista que muestra los datos en forma de tabla. 
    Recibe los datos a mostrar a través del parámetro $data (utilizado en la función View::show).
-->
<div class="container">
    <h1 style="text-align: center;"> Listado de productos </h1><br><br>
    <table class="table">
        <tr><th>Nombre</th> <th>Precio:</th></tr>
        <?php
            foreach ($data as $article){
                $enlace='<a href="index.php?controller=ProductController&action=getProductById&id_product='.$article['id_producto'].'" style="color: orange;">Ver mas... </a>';
                $enlaceid='<a href="index.php?controller=ProductController&action=addCarrito&id_product='.$article['id_producto'].'" style="color: orange;">Añadir al carrito</a>';
                $enlaceborrar='<a href="index.php?controller=ProductController&action=borrarproducto&id_product='.$article['id_producto'].'" style="color: orange;">Borrar producto</a>';
                echo "<tr>
                      <td hidden>".$article['id_producto']."</td>
                      <td>".$article['nombre']."</td>
                      <td>".$article['precio']." € </td>
                      <td>".$enlace."</td>
                      <td>".$enlaceid."</td>
                      <td>";if(!empty($_SESSION['usuario'])){
                        echo $enlaceborrar;
                      }
                      echo"</td>
                      </tr>"; 
            }
            
        ?>
    </table>
</div>
