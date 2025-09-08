<?php 

/*--------------------*/
// Description: 
// codexhive
// 
/*--------------------*/

include_once '../../config.php';
include_once '../functions.php';

if(!isset($connect)){

	$connect = connect($database);
}

if (isAdmin($connect) || isAgent($connect) || isSubscriber($connect)){

 
$user = get_user_information($connect);
$user = $user['0'];

$check_access = check_access($connect);

if ($check_access['user_role'] == 2 || $check_access['user_role'] == 3){

require '../views/sidebar-editor.view.php';

}elseif($check_access['user_role'] == 1) {

require '../views/sidebar.view.php';

}

}else{

    header('Location:'.SITE_URL);
}

?>