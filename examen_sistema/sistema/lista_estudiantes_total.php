<?php
include "privacidad.php";

include "../conexion.php";




?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <link rel="stylesheet" href="cssb/bootstrap.min.css">
  <link rel="stylesheet" href="css/style.css">
  <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0,maximun-scale=1.0,minimum-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <link rel="stylesheet" href="iconos/style.css">
  <title>Lista de cadetes colmil </title>
</head>

<body>
  <?php include "header.php" ?>
  <?php include "logo.php" ?>

  <header>
    <div class="menu">
      <a href="#" class="btn"><span class="icon-list"></span>Menu</a>

    </div>
    <nav>
      <ul>



        <li> <a href="registro_alumnos.php"><span class="icon-home"></span></span>REGISTRAR CADETE</a></li>
        </div>
        <li> <a href="menu_navegacion.php"><span class="icon-home"></span></span>ATRAS</a></li>
        </div>

      </ul>
    </nav>


  </header>


  <div class="contenedor1">
    <h2 class="titulo">LISTA DE CATEDES COLMIL</h2>
    <div class="container w-100">
      <input type="text" class="buscador form-control float-right w-50 mb-3" name="busqueda" id="busqueda" placeholder="buscar">


    </div>




    <div class="tablas" id="datos">



    </div>

    <script src="js/jquery-3.4.0.min.js"></script>
    <script src="js/formulario.js"></script>
</body>

</html>