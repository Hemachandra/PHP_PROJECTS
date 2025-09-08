<?php 

/*--------------------*/
// Description: 
// codexhive
// 
/*--------------------*/

session_start();
if (isset($_SESSION['user_email'])) {

    require '../../config.php';
    require '../functions.php';
    require '../views/header.view.php';

    $connect = connect($database);
    if (!$connect) {
        header('Location: ./error.php');
        exit();
    }

    $id = isset($_GET['id']) ? id_village($_GET['id']) : null;
    $lang = isset($_GET['lang']) ? $_GET['lang'] : null;

    // Check for necessary parameters
    if (empty($lang) || empty($id)) {
        header('Location: ./home.php');
        exit();
    }

    $check_access = check_access($connect);

    if ($check_access['user_role'] == 1 || $check_access['user_role'] == 2) {

        if ($_SERVER['REQUEST_METHOD'] == 'POST') {
            try {
                $pt_village_id = cleardata($_POST['pt_village_id']);
                $pt_village_mandal = cleardata($_POST['pt_village_mandal']);
                $city_id = cleardata($_POST['city_id']);
                $zone_id = cleardata($_POST['zone_id']);
                $mandal_id = cleardata($_POST['pt_village_mandal']);

                // Update pt_village table
                $statement = $connect->prepare(
                    'UPDATE pt_village SET pt_village_mandal = :pt_village_mandal WHERE pt_village_id = :pt_village_id'
                );

                $statement->execute([
                    ':pt_village_id' => $pt_village_id,
                    ':pt_village_mandal' => $pt_village_mandal
                ]);

                // Update tr_ptvillage table
                $tr_name = cleardata($_POST['tr_name']);
                $tr_village = cleardata($_POST['tr_village']);
                $tr_id = cleardata($_POST['tr_id']);
                $tr_lang = cleardata($_POST['tr_lang']);
                $slug = convertSlug($_POST['tr_slug']);

                $sentence = $connect->prepare(
                    "UPDATE tr_ptvillage SET tr_slug = :tr_slug, tr_name = :tr_name, tr_lang = :tr_lang , tr_village = :tr_village 
                    , city_id = :city_id , zone_id = :zone_id , mandal_id = :mandal_id
                    WHERE tr_id = :tr_id"
                );

                $sentence->execute([
                    ':tr_slug' => $slug,
                    ':tr_name' => $tr_name,
                    ':tr_id' => $tr_id,
                    ':tr_lang' => $tr_lang,
                    ':tr_village' => $tr_village,
                    ':city_id' => $city_id,
                    ':zone_id' => $zone_id,
                    ':mandal_id' => $mandal_id
                ]);
				

                header('Location: ' . $_SERVER['HTTP_REFERER']);
                exit();

            } catch (Exception $e) {
                die('Error: ' . $e->getMessage());
            }

        } else {

            $id_village = id_village($_GET['id']);
            $lang = lang($_GET['lang']);

            $village = get_village_per_id_by_language($connect, $id_village, $lang);

            if (!$village) {
                header('Location: ./home.php');
                exit();
            }

            $village = $village[0];
            $languages = get_languages_by_village($connect, $id_village);
            $activelanguages = get_languages_not_village($connect, $id_village);
            $mandals = get_all_mandal($connect);
            $states = get_all_cities($connect);
            $zones = get_all_zones($connect);

            require '../views/edit.village.view.php';
        }

    } else {
        header('Location:' . SITE_URL);
        exit();
    }

    require '../views/footer.view.php';

} else {
    header('Location: ./login.php');
    exit();
}

?>
