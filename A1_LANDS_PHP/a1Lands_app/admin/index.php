<?php 

/*--------------------*/
// Description: 
// codexhive
// 
/*--------------------*/

require '../config.php';
require './functions.php';

$connect = connect($database);

if (isAdmin($connect) || isAgent($connect)){

    header('Location: ./controller/home.php');

}else{
    
    header('Location: ./controller/login.php');
}



?>