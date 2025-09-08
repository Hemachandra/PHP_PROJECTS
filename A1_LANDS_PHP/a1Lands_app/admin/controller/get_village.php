<?php

require '../../config.php';
require '../functions.php';

$connect = connect($database);

$check_access = check_access($connect);

if ($check_access['user_role'] == 1 || $check_access['user_role'] == 2 || $check_access['user_role'] == 3){

if($_POST['mandal_id'])
{
	$city_id = $_POST['mandal_id'];

	$stmt = $connect->prepare("SELECT pt_village.*,tr_ptvillage.tr_name AS tr_name FROM pt_village,tr_ptvillage WHERE pt_village.pt_village_id = tr_ptvillage.tr_village AND  pt_village_mandal = :mandal_id GROUP BY tr_ptvillage.tr_village");
	$stmt->execute(array(':mandal_id' => $city_id));
	?>
	<option value="">Select Mandal</option>
	<?php
	while($row=$stmt->fetch(PDO::FETCH_ASSOC))
	{
		?>
		<option value="<?php echo $row['pt_village_id']; ?>"><?php echo $row['tr_name']; ?></option>
		<?php
	}
}

}else{

	header('Location:'.SITE_URL);

}
?>