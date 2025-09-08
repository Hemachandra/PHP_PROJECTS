<?php 

/*--------------------*/
// Description: 
// codexhive
// 
/*--------------------*/

session_start();
if (isset($_SESSION['user_email'])){
    
    
require '../../config.php';
require '../functions.php';
require '../views/header.view.php';


$connect = connect($database);
if(!$connect){
	header('Location: ./error.php');
	} 

$id_city = cleardata($_GET['id']);

if(!$id_city){
	header('Location: ./home.php');
}

$check_access = check_access($connect);

if ($check_access['user_role'] == 1 || $check_access['user_role'] == 2){


$id_city = cleardata($_GET['id']);

$statement = $connect->prepare('DELETE FROM pt_mandal WHERE pt_mandal_id = :pt_mandal_id');
$statement->execute(array('pt_mandal_id' => $id_city));

$statement = $connect->prepare('DELETE FROM tr_ptmandal WHERE tr_mandal = :tr_city');
$statement->execute(array('tr_mandal' => $id_city));

header('Location: ' . $_SERVER['HTTP_REFERER']);

}else{

	header('Location:'.SITE_URL);
}

}else{
	
	header('Location: ./login.php');		
}


?>