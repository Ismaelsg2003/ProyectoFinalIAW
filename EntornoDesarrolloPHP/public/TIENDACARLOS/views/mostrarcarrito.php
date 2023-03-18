<div class="container">
    <h2 style="text-align: center"> Carrito de la compra </h2><br><br>

      <?php
      if(!empty($_SESSION['carrito'])){
        echo " <table class='table'> <tr><th>Nombre</th> <th>Precio:</th><th>Descripcion</th><th>Procedencia</th></tr>";
        foreach ($data as $producto){
                      echo "<tr>
                      <td hidden>".$producto['id_producto']."</td>
                      <td>".$producto['nombre']."</td>
                      <td>".$producto['precio']." € </td>
                      <td>".$producto['descripcion']."</td>
                      <td>";if(($producto['procedencia'])==0){
                        echo "Nacional";
                      }else{
                        echo"Internacional";
                      }
                      echo "</tr>"; 
        }
        echo "</table>";
      }else{
        echo "<div class='alert alert-danger'><p style='text-align: center;'>El carrito de la compra esta vacio</p></div>";
      }
      ?>
</div>