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
	header ('Location: ./error.php');
}


$id = id_mandal($_GET['id']);

if ( empty($_GET["lang"]) && empty($_GET["id"]) ) {
	header('Location: ./home.php');
}

$check_access = check_access($connect);

if ($check_access['user_role'] == 1 || $check_access['user_role'] == 2){


	if ($_SERVER['REQUEST_METHOD'] == 'POST'){

		$pt_mandal_id = cleardata($_POST['pt_mandal_id']);
		$pt_mandal_featured = cleardata($_POST['pt_mandal_featured']);

		$imagefile = explode(".", $_FILES["pt_mandal_image"]["name"]);

		$image_save = $_POST['pt_mandal_image_save'];
		$pt_mandal_image = $_FILES['pt_mandal_image'];

		if (empty($pt_mandal_image['name'])) {
			$pt_mandal_image = $image_save;
		} else{
			$imagefile = explode(".", $_FILES["pt_mandal_image"]["name"]);
			$renamefile = round(microtime(true)) . '.' . end($imagefile);
			$image_upload = '../../images/';
			move_uploaded_file($_FILES['pt_mandal_image']['tmp_name'], $image_upload . 'mandal_' . $renamefile);
			$pt_mandal_image = 'mandal_' . $renamefile;
		}


		$statment = $connect->prepare("UPDATE pt_mandal SET pt_mandal_id = :pt_mandal_id, pt_mandal_featured = :pt_mandal_featured, pt_mandal_image = :pt_mandal_image WHERE pt_mandal_id = :pt_mandal_id");

		$statment->execute(array(

			':pt_mandal_id' => $pt_mandal_id,
			':pt_mandal_featured' => $pt_mandal_featured,
			':pt_mandal_image' => $pt_mandal_image
		));

		$tr_name = cleardata($_POST['tr_name']);
		$tr_mandal = cleardata($_POST['tr_mandal']);
		$tr_id = cleardata($_POST['tr_id']);
		$tr_lang = cleardata($_POST['tr_lang']);
		$tr_slug = cleardata($_POST['tr_slug']);
		$city_id = cleardata($_POST['city_id']);
		$zone_id = cleardata($_POST['zone_id']);

		$slug = convertSlug($_POST['tr_slug']);

		$sentence = $connect->prepare("UPDATE tr_ptmandal SET tr_slug = :tr_slug, tr_name = :tr_name, zone_id = :zone_id, city_id = :city_id WHERE tr_id = :tr_id AND tr_lang = :tr_lang AND tr_mandal = :tr_mandal");

		$sentence->execute(array(

			':tr_slug' => $slug,
			':tr_name' => $tr_name,
			':tr_id' => $tr_id,
			':tr_lang' => $tr_lang,
			':tr_mandal' => $tr_mandal,
			':city_id' => $city_id,
			':zone_id' => $zone_id

		));

		header('Location: ' . $_SERVER['HTTP_REFERER']);

	}else{

		$id_mandal = id_mandal($_GET['id']);

		$lang = lang($_GET['lang']);

		$mandal = get_mandal_per_id_by_language($connect, $id_mandal, $lang);

		if (!$mandal){
			header('Location: ./home.php');
		}

		$mandal = $mandal['0'];
		$states = get_all_cities($connect);
		$zones = get_all_zones($connect);
		$languages = get_languages_by_mandal($connect, $id_mandal);
		$activelanguages = get_languages_not_mandal($connect, $id_mandal);

		require '../views/edit.mandal.view.php';

	}

}else{

	header('Location:'.SITE_URL);
}

require '../views/footer.view.php';

} else {
header('Location: ./login.php');		
}


?>