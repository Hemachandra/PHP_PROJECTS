<?php

require '../config.php';
require '../admin/functions.php';

$connect = connect($database);

if($_POST['city_id'])
{
	$city_id = $_POST['city_id'];

	$stmt = $connect->prepare("SELECT pt_zones.*,tr_ptzones.tr_name AS tr_name FROM pt_zones,tr_ptzones WHERE pt_zones.pt_zone_id = tr_ptzones.tr_zone AND  pt_zone_city = :city_id GROUP BY tr_ptzones.tr_zone");
	$stmt->execute(array(':city_id' => $city_id));
	?>
	<option value="">Select District</option>
	<?php
	while($row=$stmt->fetch(PDO::FETCH_ASSOC))
	{
		?>
		<option value="<?php echo $row['pt_zone_id']; ?>"><?php echo $row['tr_name']; ?></option>
		<?php
	}
}


?>