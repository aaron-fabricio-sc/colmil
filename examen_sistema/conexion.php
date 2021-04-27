<?php
    $host ='localhost';
    $user ='root';
    $passward ='';
    $bd ='colmil';

    $conection = @mysqli_connect($host,$user,$password,$bd);
    if(!$conection){

        echo "error";
    }
