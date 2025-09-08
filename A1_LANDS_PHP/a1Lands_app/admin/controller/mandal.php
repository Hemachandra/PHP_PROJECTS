<?php

/*--------------------*/
// Description: 
// codexhive
// 
/*--------------------*/

session_start();

require '../../config.php';
require '../functions.php';
require '../views/header.view.php';
require '../admin_config.php';

if (isset($_SESSION['user_email'])){

$connect = connect($database);
if(!$connect){

header('Location: ./error.php');

}

$check_access = check_access($connect);

if ($check_access['user_role'] == 1 || $check_access['user_role'] == 2){

$activelanguages = get_active_languages($connect);
$cities = get_all_cities($connect);
require '../views/mandal.view.php';

}else{

	header('Location:'.SITE_URL);

}

require '../views/footer.view.php';

}else{
	
	header('Location: ./login.php');	

}


?>