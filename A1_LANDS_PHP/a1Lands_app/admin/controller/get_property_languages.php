<?php
		 
  require '../../config.php';
  require '../functions.php';
  
  $connect = connect($database);
  $check_access = check_access($connect);

  if ($check_access['user_role'] == 1 || $check_access['user_role'] == 2 || $check_access['user_role'] == 3){
	
	if (isset($_REQUEST['id'])) {
		$id = intval($_REQUEST['id']);	
		$query = "SELECT * FROM languages WHERE language_status = 1 AND language_code IN (SELECT tr_lang FROM tr_properties WHERE tr_property = $id) ORDER BY language_id ASC";
		$stmt = $connect->prepare( $query );
		$stmt->execute();
		$languages= $stmt->fetchAll(PDO::FETCH_ASSOC);
			
		?>

        <?php foreach($languages as $language): ?>

        <a class="btn btn-light btn-block" href="../controller/edit_property.php?lang=<?php echo $language['language_code']; ?>&id=<?php echo $id; ?>"><?php echo $language['language_name']; ?></a>
        <?php endforeach; ?>


<?php 

  }

}else{

header('Location:'.SITE_URL);

}
?>