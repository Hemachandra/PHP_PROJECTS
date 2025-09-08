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

$id_partner = cleardata($_GET['id']);

if(!$id_partner){
	header('Location: ./home.php');
}

$check_access = check_access($connect);

if ($check_access['user_role'] == 1){

$id_partner = cleardata($_GET['id']);

$statement = $connect->prepare('DELETE FROM partners WHERE partner_id = :partner_id');
$statement->execute(array('partner_id' => $id_partner));

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