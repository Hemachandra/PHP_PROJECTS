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

    try {
        $connect = connect($database);
        $connect->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION); // Enable error reporting

        if (!$connect) {
            header('Location: ./error.php');
        }

        $check_access = check_access($connect);

        if ($check_access['user_role'] == 1 || $check_access['user_role'] == 2) {

            if ($_SERVER['REQUEST_METHOD'] == 'POST') {
                echo "In post";

                try {
                    // First insert into pt_mandal
                    $statement = $connect->prepare("INSERT INTO pt_mandal (pt_mandal_id) VALUES (null)");
                    $statement->execute();

                    // Retrieve last inserted ID
                    $statement = $connect->prepare("SELECT LAST_INSERT_ID() AS id");
                    $statement->execute();
                    $row = $statement->fetch(PDO::FETCH_ASSOC);
                    $id = $row["id"];

                    // Prepare remaining data
                    $tr_lang = cleardata($_POST['tr_lang']);
                    $tr_name = cleardata($_POST['tr_name']);
                    $city_id = cleardata($_POST['city_id']);
                    $zone_id = cleardata($_POST['zone_id']);
                    $slug = convertSlug($_POST['tr_name']);

                    // Insert into tr_ptmandal
                    $sentence = $connect->prepare("INSERT INTO tr_ptmandal (tr_id, tr_mandal, tr_lang, tr_slug, tr_name, zone_id, city_id) VALUES (null, :tr_mandal, :tr_lang, :tr_slug, :tr_name, :zone_id, :city_id)");
                    $sentence->execute([
                        ':tr_mandal' => $id,
                        ':tr_lang' => $tr_lang,
                        ':tr_slug' => $slug,
                        ':tr_name' => $tr_name,
                        ':zone_id' => $zone_id,
                        ':city_id' => $city_id
                    ]);
                    echo "Inserted";

                } catch (PDOException $e) {
                    echo "Database error: " . $e->getMessage();
                }
            }
        } else {
            header('Location:' . SITE_URL);
        }
    } catch (Exception $e) {
        echo "Connection error: " . $e->getMessage();
    }
} else {
    header('Location: ./login.php');
} 


?>