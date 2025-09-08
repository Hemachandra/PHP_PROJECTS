<?php

require '../../config.php';
require '../functions.php';

$connect = connect($database);

$check_access = check_access($connect);

if ($check_access['user_role'] == 1 || $check_access['user_role'] == 2 || $check_access['user_role'] == 3){

if($_POST['zone_id'])
{
	$zone_id = $_POST['zone_id'];

	$stmt = $connect->prepare("SELECT pt_mandal.*,tr_ptmandal.tr_name AS tr_name FROM pt_mandal,tr_ptmandal WHERE pt_mandal.pt_mandal_id = tr_ptmandal.tr_mandal AND  zone_id = :zone_id GROUP BY tr_ptmandal.tr_mandal");
	$stmt->execute(array(':zone_id' => $zone_id));
	?>
	<option value="">Select Mandal</option>
	<?php
	while($row=$stmt->fetch(PDO::FETCH_ASSOC))
	{
		?>
		<option value="<?php echo $row['pt_mandal_id']; ?>"><?php echo $row['tr_name']; ?></option>
		<?php
	}
}

}else{

	header('Location:'.SITE_URL);

}
?>