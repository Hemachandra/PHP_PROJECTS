<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>

ERROR - 2023-09-22 00:43:58 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-09-22 00:44:21 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-09-22 00:44:24 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-09-22 02:48:53 --> Query error: Table 'u649349862_school630.conference_sections' doesn't exist - Invalid query: SELECT `conferences`.*, `classes`.`class`, `sections`.`section`, `for_create`.`name` as `create_for_name`, `for_create`.`surname` as `create_for_surname`, `for_create`.`employee_id` as `for_create_employee_id`, `for_create_role`.`name` as `for_create_role_name`
FROM `conference_sections`
JOIN `conferences` ON `conferences`.`id` = `conference_sections`.`conference_id`
JOIN `class_sections` ON `class_sections`.`id` = `conference_sections`.`cls_section_id`
JOIN `classes` ON `classes`.`id` = `class_sections`.`class_id`
JOIN `sections` ON `sections`.`id` = `class_sections`.`section_id`
JOIN `staff` as `for_create` ON `for_create`.`id` = `conferences`.`staff_id`
JOIN `staff_roles` ON `staff_roles`.`staff_id` = `for_create`.`id`
JOIN `roles` as `for_create_role` ON `for_create_role`.`id` = `staff_roles`.`role_id`
WHERE `class_sections`.`class_id` = '6'
AND `class_sections`.`section_id` = '28'
AND `conferences`.`session_id` = '18'
ORDER BY DATE(`conferences`.`date`) DESC, `conferences`.`date` DESC
ERROR - 2023-09-22 04:37:26 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-09-22 05:00:00 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-09-22 05:00:02 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-09-22 05:01:15 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-09-22 05:01:55 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-09-22 05:55:17 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-09-22 05:55:27 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-09-22 05:57:23 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-09-22 06:14:14 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-09-22 06:15:38 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-09-22 06:15:41 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-09-22 08:47:46 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-09-22 09:36:00 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-09-22 09:36:04 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-09-22 09:52:23 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-09-22 09:52:26 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-09-22 10:52:57 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-09-22 10:53:29 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-09-22 11:01:29 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-09-22 11:01:43 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-09-22 11:04:14 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-09-22 11:06:14 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-09-22 11:47:42 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-09-22 11:49:17 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-09-22 12:07:44 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-09-22 12:24:45 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-09-22 12:45:24 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-09-22 15:16:24 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-09-22 15:39:50 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-09-22 15:40:00 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-09-22 15:51:59 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-09-22 15:52:05 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-09-22 15:52:13 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-09-22 15:54:29 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-09-22 15:54:32 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-09-22 15:54:36 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-09-22 16:10:17 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-09-22 16:12:58 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-09-22 23:52:49 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
