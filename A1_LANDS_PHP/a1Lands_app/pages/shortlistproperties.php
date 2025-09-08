<?php

$userInfo = getUserInfo($connect);
$userFavorites = getUserFavorites($connect, $userInfo['user_id']);


require './pages/views/shortlistproperties.view.php';

?>