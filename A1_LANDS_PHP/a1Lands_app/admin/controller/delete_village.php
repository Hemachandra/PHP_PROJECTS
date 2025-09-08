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

$id_village = cleardata($_GET['id']);

if(!$id_village){
	header('Location: ./home.php');
}

$check_access = check_access($connect);

if ($check_access['user_role'] == 1 || $check_access['user_role'] == 2){


$id_village = cleardata($_GET['id']);

$statement = $connect->prepare('DELETE FROM pt_village WHERE pt_village_id = :pt_village_id');
$statement->execute(array('pt_village_id' => $id_village));

$statement = $connect->prepare('DELETE FROM tr_ptvillage WHERE tr_village = :tr_village');
$statement->execute(array('tr_village' => $id_village));

header('Location: ' . $_SERVER['HTTP_REFERER']);

}else{

	header('Location:'.SITE_URL);
}

}else{
	
	header('Location: ./login.php');		
}


?>