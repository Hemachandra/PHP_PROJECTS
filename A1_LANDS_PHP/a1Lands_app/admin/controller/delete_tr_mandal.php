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

$id = id_city($_GET['id']);

if ( empty($_GET["lang"]) && empty($_GET["id"]) ) {
	header('Location: ./home.php');
	}

$check_access = check_access($connect);

if ($check_access['user_role'] == 1 || $check_access['user_role'] == 2){


$id_city = cleardata($_GET['id']);
$lang = cleardata($_GET['lang']);

$statement = $connect->prepare('DELETE FROM tr_ptmandal WHERE tr_mandal = :tr_mandal AND tr_lang = :tr_lang');
$statement->execute(array('tr_mandal' => $id_city, 'tr_lang' => $lang));

header('Location: ' . $_SERVER['HTTP_REFERER']);

}else{

	header('Location:'.SITE_URL);
}

}else{
	
	header('Location: ./login.php');		
}


?>