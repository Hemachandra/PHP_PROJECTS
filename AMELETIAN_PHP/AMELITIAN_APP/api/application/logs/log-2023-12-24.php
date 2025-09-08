<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>

ERROR - 2023-12-24 03:08:32 --> Query error: Table 'u649349862_school630.conference_sections' doesn't exist - Invalid query: SELECT `conferences`.*, `classes`.`class`, `sections`.`section`, `for_create`.`name` as `create_for_name`, `for_create`.`surname` as `create_for_surname`, `for_create`.`employee_id` as `for_create_employee_id`, `for_create_role`.`name` as `for_create_role_name`
FROM `conference_sections`
JOIN `conferences` ON `conferences`.`id` = `conference_sections`.`conference_id`
JOIN `class_sections` ON `class_sections`.`id` = `conference_sections`.`cls_section_id`
JOIN `classes` ON `classes`.`id` = `class_sections`.`class_id`
JOIN `sections` ON `sections`.`id` = `class_sections`.`section_id`
JOIN `staff` as `for_create` ON `for_create`.`id` = `conferences`.`staff_id`
JOIN `staff_roles` ON `staff_roles`.`staff_id` = `for_create`.`id`
JOIN `roles` as `for_create_role` ON `for_create_role`.`id` = `staff_roles`.`role_id`
WHERE `class_sections`.`class_id` = '9'
AND `class_sections`.`section_id` = '52'
AND `conferences`.`session_id` = '18'
ORDER BY DATE(`conferences`.`date`) DESC, `conferences`.`date` DESC
ERROR - 2023-12-24 03:35:55 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-12-24 03:36:05 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-12-24 04:00:16 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-12-24 05:36:25 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-12-24 05:36:30 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-12-24 06:20:31 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-12-24 06:20:37 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-12-24 06:21:14 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-12-24 06:21:51 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-12-24 07:22:49 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-12-24 07:23:40 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-12-24 07:24:30 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-12-24 07:24:34 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-12-24 07:36:05 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-12-24 07:55:33 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-12-24 07:56:18 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-12-24 07:57:22 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-12-24 07:57:33 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-12-24 07:57:40 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-12-24 08:01:44 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-12-24 08:01:48 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-12-24 08:01:54 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-12-24 08:14:07 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-12-24 08:25:36 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-12-24 09:12:00 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-12-24 09:50:48 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-12-24 10:51:49 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-12-24 11:42:33 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-12-24 11:57:09 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-12-24 11:57:18 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-12-24 12:02:07 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-12-24 12:09:00 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-12-24 12:53:36 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-12-24 14:22:17 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-12-24 14:22:20 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-12-24 14:23:23 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-12-24 14:37:51 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-12-24 14:42:31 --> Query error: Table 'u649349862_school630.conference_sections' doesn't exist - Invalid query: SELECT `conferences`.*, `classes`.`class`, `sections`.`section`, `for_create`.`name` as `create_for_name`, `for_create`.`surname` as `create_for_surname`, `for_create`.`employee_id` as `for_create_employee_id`, `for_create_role`.`name` as `for_create_role_name`
FROM `conference_sections`
JOIN `conferences` ON `conferences`.`id` = `conference_sections`.`conference_id`
JOIN `class_sections` ON `class_sections`.`id` = `conference_sections`.`cls_section_id`
JOIN `classes` ON `classes`.`id` = `class_sections`.`class_id`
JOIN `sections` ON `sections`.`id` = `class_sections`.`section_id`
JOIN `staff` as `for_create` ON `for_create`.`id` = `conferences`.`staff_id`
JOIN `staff_roles` ON `staff_roles`.`staff_id` = `for_create`.`id`
JOIN `roles` as `for_create_role` ON `for_create_role`.`id` = `staff_roles`.`role_id`
WHERE `class_sections`.`class_id` = '11'
AND `class_sections`.`section_id` = '19'
AND `conferences`.`session_id` = '18'
ORDER BY DATE(`conferences`.`date`) DESC, `conferences`.`date` DESC
ERROR - 2023-12-24 14:46:48 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-12-24 16:43:50 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-12-24 16:44:26 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-12-24 17:43:11 --> Query error: Table 'u649349862_school630.conference_sections' doesn't exist - Invalid query: SELECT `conferences`.*, `classes`.`class`, `sections`.`section`, `for_create`.`name` as `create_for_name`, `for_create`.`surname` as `create_for_surname`, `for_create`.`employee_id` as `for_create_employee_id`, `for_create_role`.`name` as `for_create_role_name`
FROM `conference_sections`
JOIN `conferences` ON `conferences`.`id` = `conference_sections`.`conference_id`
JOIN `class_sections` ON `class_sections`.`id` = `conference_sections`.`cls_section_id`
JOIN `classes` ON `classes`.`id` = `class_sections`.`class_id`
JOIN `sections` ON `sections`.`id` = `class_sections`.`section_id`
JOIN `staff` as `for_create` ON `for_create`.`id` = `conferences`.`staff_id`
JOIN `staff_roles` ON `staff_roles`.`staff_id` = `for_create`.`id`
JOIN `roles` as `for_create_role` ON `for_create_role`.`id` = `staff_roles`.`role_id`
WHERE `class_sections`.`class_id` = '9'
AND `class_sections`.`section_id` = '54'
AND `conferences`.`session_id` = '18'
ORDER BY DATE(`conferences`.`date`) DESC, `conferences`.`date` DESC
