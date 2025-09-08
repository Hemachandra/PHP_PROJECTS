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

$connect = connect($database);
if(!$connect){
	header('Location: ./error.php');
	} 

$check_access = check_access($connect);

if ($check_access['user_role'] == 1 || $check_access['user_role'] == 2){

if ($_SERVER['REQUEST_METHOD'] == 'POST'){

	$pt_village_mandal = cleardata($_POST['mandal_id']);
	$city_id = cleardata($_POST['city_id']);
	$zone_id = cleardata($_POST['zone_id']);
	$mandal_id = cleardata($_POST['mandal_id']);

	$statment = $connect->prepare(
		'INSERT INTO pt_village (pt_village_id,pt_village_mandal) VALUES (null, :pt_village_mandal)'
		);

	$statment->execute(array(
		':pt_village_mandal' => $pt_village_mandal
		));

$statment = $connect->prepare('SELECT @@identity AS id');
$statment->execute();
$row = $statment->fetch(PDO::FETCH_ASSOC);
$id = $row["id"];

$tr_lang = cleardata($_POST['tr_lang']);
$tr_name = cleardata($_POST['tr_name']);
$slug = convertSlug($_POST['tr_name']);

$sentence = $connect->prepare("INSERT INTO tr_ptvillage (tr_id,tr_village,tr_lang,tr_slug,tr_name,city_id,zone_id,mandal_id) VALUES (null, :tr_village, :tr_lang, :tr_slug, :tr_name, :city_id, :zone_id, :mandal_id)");

$sentence->execute(array(
		':tr_village' => $id,
		':tr_lang' => $tr_lang,
		':tr_slug' => $slug,
		':tr_name' => $tr_name,
		':city_id' => $city_id,
		':zone_id' => $zone_id,
		':mandal_id' => $mandal_id
		));

}

}else{

	header('Location:'.SITE_URL);

}

    
}else {
		header('Location: ./login.php');		
		}


?>