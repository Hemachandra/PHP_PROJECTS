<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>

ERROR - 2024-01-28 03:11:01 --> Query error: Table 'u649349862_school630.conference_sections' doesn't exist - Invalid query: SELECT `conferences`.*, `classes`.`class`, `sections`.`section`, `for_create`.`name` as `create_for_name`, `for_create`.`surname` as `create_for_surname`, `for_create`.`employee_id` as `for_create_employee_id`, `for_create_role`.`name` as `for_create_role_name`
FROM `conference_sections`
JOIN `conferences` ON `conferences`.`id` = `conference_sections`.`conference_id`
JOIN `class_sections` ON `class_sections`.`id` = `conference_sections`.`cls_section_id`
JOIN `classes` ON `classes`.`id` = `class_sections`.`class_id`
JOIN `sections` ON `sections`.`id` = `class_sections`.`section_id`
JOIN `staff` as `for_create` ON `for_create`.`id` = `conferences`.`staff_id`
JOIN `staff_roles` ON `staff_roles`.`staff_id` = `for_create`.`id`
JOIN `roles` as `for_create_role` ON `for_create_role`.`id` = `staff_roles`.`role_id`
WHERE `class_sections`.`class_id` = '11'
AND `class_sections`.`section_id` = '16'
AND `conferences`.`session_id` = '18'
ORDER BY DATE(`conferences`.`date`) DESC, `conferences`.`date` DESC
ERROR - 2024-01-28 10:18:01 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2024-01-28 10:18:05 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2024-01-28 16:46:36 --> Severity: Warning --> Undefined variable $resp /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 833
ERROR - 2024-01-28 16:46:36 --> Severity: Warning --> Undefined variable $resp /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 833
ERROR - 2024-01-28 16:50:15 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2024-01-28 16:50:23 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2024-01-28 16:52:55 --> Severity: Warning --> Undefined variable $resp /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 833
ERROR - 2024-01-28 16:52:55 --> Severity: Warning --> Undefined variable $resp /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 833
ERROR - 2024-01-28 16:52:59 --> Severity: Warning --> Undefined variable $resp /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 833
