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

$id_pc = cleardata($_GET['id']);

if(!$id_pc){
	header('Location: ./home.php');
}

$check_access = check_access($connect);

if ($check_access['user_role'] == 1){

$id_pc = cleardata($_GET['id']);

$statement = $connect->prepare('DELETE FROM preferred_choice WHERE pc_id = :pc_id');
$statement->execute(array('pc_id' => $id_pc));

$statement = $connect->prepare('DELETE FROM tr_preferred_choice WHERE tr_pc = :tr_pc');
$statement->execute(array('tr_pc' => $id_pc));

header('Location: ' . $_SERVER['HTTP_REFERER']);

}elseif($check_access['user_role'] == 2){

	require '../views/denied.view.php';
	
}else{
	
	header('Location:'.SITE_URL);
}

}else{
	
	header('Location: ./login.php');		
}

?>