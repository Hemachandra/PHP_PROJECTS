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

if ($check_access['user_role'] == 1){


if ($_SERVER['REQUEST_METHOD'] == 'POST'){

$statment = $connect->prepare('INSERT INTO categories (category_id) VALUES (null)');

$statment->execute();

$statment = $connect->prepare('SELECT @@identity AS id');
$statment->execute();
$row = $statment->fetch(PDO::FETCH_ASSOC);
$id = $row["id"];

$tr_lang = cleardata($_POST['tr_lang']);
$tr_name = cleardata($_POST['tr_name']);

$slug = convertSlug($_POST['tr_name']);

$exists = get_category_slug($connect, $slug); 

if ($exists > 0)
{
$new_number = $exists + 1;
$slug = $slug."-".$new_number;

}else{

$slug = convertSlug($tr_name);
}

$sentence = $connect->prepare("INSERT INTO tr_categories (tr_id,tr_category,tr_lang,tr_slug,tr_name) VALUES (null, :tr_category, :tr_lang, :tr_slug, :tr_name)");

$sentence->execute(array(
':tr_category' => $id,
':tr_lang' => $tr_lang,
':tr_slug' => $slug,
':tr_name' => $tr_name

));


}

}elseif($check_access['user_role'] == 2){

	require '../views/denied.view.php';
	
}else{
	
	header('Location:'.SITE_URL);
}


}else {
header('Location: ./login.php');		
}


?>