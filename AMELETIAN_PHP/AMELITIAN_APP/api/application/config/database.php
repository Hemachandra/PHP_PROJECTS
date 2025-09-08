<?php

defined('BASEPATH') OR exit('No direct script access allowed');


$active_group = 'default';
$query_builder = TRUE;

$db['default'] = array(
    'dsn' => '',
	'hostname' => 'localhost',
	
	'username' => 'u649349862_school630',
	'password' => 'Admin@123',
	'database' => 'u649349862_school630',
	
// 	'username' => 'u461990160_amelitian',
// 	'password' => '8>$Wfz?Dd',
// 	'database' => 'u461990160_amelitian',
    'dbdriver' => 'mysqli',
    'dbprefix' => '',
    'pconnect' => FALSE,
    'db_debug' => (ENVIRONMENT !== 'prodcution'),
    'cache_on' => FALSE,
    'cachedir' => '',
    'char_set' => 'utf8',
    'dbcollat' => 'utf8_general_ci',
    'swap_pre' => '',
    'encrypt' => FALSE,
    'compress' => FALSE,
    'stricton' => FALSE,
    'failover' => array(),
    'save_queries' => TRUE
);
