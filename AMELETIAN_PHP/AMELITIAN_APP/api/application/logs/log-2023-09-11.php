<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>

ERROR - 2023-09-11 01:47:37 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-09-11 01:58:45 --> Severity: Warning --> Undefined variable $resp /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 833
ERROR - 2023-09-11 01:58:45 --> Severity: Warning --> Undefined variable $resp /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 833
ERROR - 2023-09-11 01:58:48 --> Severity: Warning --> Undefined variable $resp /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 833
ERROR - 2023-09-11 02:52:54 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-09-11 04:52:17 --> Query error: Table 'u649349862_school630.conference_sections' doesn't exist - Invalid query: SELECT `conferences`.*, `classes`.`class`, `sections`.`section`, `for_create`.`name` as `create_for_name`, `for_create`.`surname` as `create_for_surname`, `for_create`.`employee_id` as `for_create_employee_id`, `for_create_role`.`name` as `for_create_role_name`
FROM `conference_sections`
JOIN `conferences` ON `conferences`.`id` = `conference_sections`.`conference_id`
JOIN `class_sections` ON `class_sections`.`id` = `conference_sections`.`cls_section_id`
JOIN `classes` ON `classes`.`id` = `class_sections`.`class_id`
JOIN `sections` ON `sections`.`id` = `class_sections`.`section_id`
JOIN `staff` as `for_create` ON `for_create`.`id` = `conferences`.`staff_id`
JOIN `staff_roles` ON `staff_roles`.`staff_id` = `for_create`.`id`
JOIN `roles` as `for_create_role` ON `for_create_role`.`id` = `staff_roles`.`role_id`
WHERE `class_sections`.`class_id` = '12'
AND `class_sections`.`section_id` = '36'
AND `conferences`.`session_id` = '18'
ORDER BY DATE(`conferences`.`date`) DESC, `conferences`.`date` DESC
ERROR - 2023-09-11 04:53:01 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-09-11 04:53:05 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-09-11 04:53:18 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-09-11 04:53:18 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-09-11 04:53:22 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-09-11 04:54:04 --> 404 Page Not Found: gateway/Stylecss/index
ERROR - 2023-09-11 04:54:58 --> Query error: Table 'u649349862_school630.conference_sections' doesn't exist - Invalid query: SELECT `conferences`.*, `classes`.`class`, `sections`.`section`, `for_create`.`name` as `create_for_name`, `for_create`.`surname` as `create_for_surname`, `for_create`.`employee_id` as `for_create_employee_id`, `for_create_role`.`name` as `for_create_role_name`
FROM `conference_sections`
JOIN `conferences` ON `conferences`.`id` = `conference_sections`.`conference_id`
JOIN `class_sections` ON `class_sections`.`id` = `conference_sections`.`cls_section_id`
JOIN `classes` ON `classes`.`id` = `class_sections`.`class_id`
JOIN `sections` ON `sections`.`id` = `class_sections`.`section_id`
JOIN `staff` as `for_create` ON `for_create`.`id` = `conferences`.`staff_id`
JOIN `staff_roles` ON `staff_roles`.`staff_id` = `for_create`.`id`
JOIN `roles` as `for_create_role` ON `for_create_role`.`id` = `staff_roles`.`role_id`
WHERE `class_sections`.`class_id` = '11'
AND `class_sections`.`section_id` = '18'
AND `conferences`.`session_id` = '18'
ORDER BY DATE(`conferences`.`date`) DESC, `conferences`.`date` DESC
ERROR - 2023-09-11 04:57:49 --> Query error: Table 'u649349862_school630.conference_sections' doesn't exist - Invalid query: SELECT `conferences`.*, `classes`.`class`, `sections`.`section`, `for_create`.`name` as `create_for_name`, `for_create`.`surname` as `create_for_surname`, `for_create`.`employee_id` as `for_create_employee_id`, `for_create_role`.`name` as `for_create_role_name`
FROM `conference_sections`
JOIN `conferences` ON `conferences`.`id` = `conference_sections`.`conference_id`
JOIN `class_sections` ON `class_sections`.`id` = `conference_sections`.`cls_section_id`
JOIN `classes` ON `classes`.`id` = `class_sections`.`class_id`
JOIN `sections` ON `sections`.`id` = `class_sections`.`section_id`
JOIN `staff` as `for_create` ON `for_create`.`id` = `conferences`.`staff_id`
JOIN `staff_roles` ON `staff_roles`.`staff_id` = `for_create`.`id`
JOIN `roles` as `for_create_role` ON `for_create_role`.`id` = `staff_roles`.`role_id`
WHERE `class_sections`.`class_id` = '8'
AND `class_sections`.`section_id` = '44'
AND `conferences`.`session_id` = '18'
ORDER BY DATE(`conferences`.`date`) DESC, `conferences`.`date` DESC
ERROR - 2023-09-11 04:58:05 --> Severity: Warning --> Undefined variable $resp /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 833
ERROR - 2023-09-11 04:58:05 --> Severity: Warning --> Undefined variable $resp /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 833
ERROR - 2023-09-11 04:58:18 --> Severity: Warning --> Undefined variable $resp /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 833
ERROR - 2023-09-11 04:58:18 --> Severity: Warning --> Undefined variable $resp /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 833
ERROR - 2023-09-11 06:09:11 --> Severity: Warning --> Undefined variable $resp /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 833
ERROR - 2023-09-11 06:09:11 --> Severity: Warning --> Undefined variable $resp /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 833
ERROR - 2023-09-11 06:09:14 --> Severity: Warning --> Undefined variable $resp /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 833
ERROR - 2023-09-11 06:09:18 --> Severity: Warning --> Undefined variable $resp /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 833
ERROR - 2023-09-11 06:13:44 --> Severity: Warning --> Undefined variable $resp /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 833
ERROR - 2023-09-11 06:13:44 --> Severity: Warning --> Undefined variable $resp /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 833
ERROR - 2023-09-11 09:12:04 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-09-11 09:12:57 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-09-11 09:42:08 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-09-11 10:09:13 --> Severity: Warning --> Undefined variable $resp /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 833
ERROR - 2023-09-11 10:09:13 --> Severity: Warning --> Undefined variable $resp /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 833
ERROR - 2023-09-11 12:02:21 --> 404 Page Not Found: gateway/Stylecss/index
ERROR - 2023-09-11 12:02:33 --> Query error: Table 'u649349862_school630.conference_sections' doesn't exist - Invalid query: SELECT `conferences`.*, `classes`.`class`, `sections`.`section`, `for_create`.`name` as `create_for_name`, `for_create`.`surname` as `create_for_surname`, `for_create`.`employee_id` as `for_create_employee_id`, `for_create_role`.`name` as `for_create_role_name`
FROM `conference_sections`
JOIN `conferences` ON `conferences`.`id` = `conference_sections`.`conference_id`
JOIN `class_sections` ON `class_sections`.`id` = `conference_sections`.`cls_section_id`
JOIN `classes` ON `classes`.`id` = `class_sections`.`class_id`
JOIN `sections` ON `sections`.`id` = `class_sections`.`section_id`
JOIN `staff` as `for_create` ON `for_create`.`id` = `conferences`.`staff_id`
JOIN `staff_roles` ON `staff_roles`.`staff_id` = `for_create`.`id`
JOIN `roles` as `for_create_role` ON `for_create_role`.`id` = `staff_roles`.`role_id`
WHERE `class_sections`.`class_id` = '8'
AND `class_sections`.`section_id` = '44'
AND `conferences`.`session_id` = '18'
ORDER BY DATE(`conferences`.`date`) DESC, `conferences`.`date` DESC
ERROR - 2023-09-11 12:02:38 --> Query error: Table 'u649349862_school630.conference_sections' doesn't exist - Invalid query: SELECT `conferences`.*, `classes`.`class`, `sections`.`section`, `for_create`.`name` as `create_for_name`, `for_create`.`surname` as `create_for_surname`, `for_create`.`employee_id` as `for_create_employee_id`, `for_create_role`.`name` as `for_create_role_name`
FROM `conference_sections`
JOIN `conferences` ON `conferences`.`id` = `conference_sections`.`conference_id`
JOIN `class_sections` ON `class_sections`.`id` = `conference_sections`.`cls_section_id`
JOIN `classes` ON `classes`.`id` = `class_sections`.`class_id`
JOIN `sections` ON `sections`.`id` = `class_sections`.`section_id`
JOIN `staff` as `for_create` ON `for_create`.`id` = `conferences`.`staff_id`
JOIN `staff_roles` ON `staff_roles`.`staff_id` = `for_create`.`id`
JOIN `roles` as `for_create_role` ON `for_create_role`.`id` = `staff_roles`.`role_id`
WHERE `class_sections`.`class_id` = '8'
AND `class_sections`.`section_id` = '44'
AND `conferences`.`session_id` = '18'
ORDER BY DATE(`conferences`.`date`) DESC, `conferences`.`date` DESC
ERROR - 2023-09-11 12:58:05 --> 404 Page Not Found: gateway/Stylecss/index
ERROR - 2023-09-11 14:10:54 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-09-11 14:14:15 --> Severity: Warning --> Undefined variable $resp /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 833
ERROR - 2023-09-11 14:14:15 --> Severity: Warning --> Undefined variable $resp /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 833
ERROR - 2023-09-11 16:06:39 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-09-11 17:28:43 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-09-11 17:29:24 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-09-11 17:29:34 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-09-11 21:27:24 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-09-11 23:46:22 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
