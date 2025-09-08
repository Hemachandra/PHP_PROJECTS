<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>

ERROR - 2023-05-02 00:16:04 --> Query error: Table 'u649349862_school630.conference_sections' doesn't exist - Invalid query: SELECT `conferences`.*, `classes`.`class`, `sections`.`section`, `for_create`.`name` as `create_for_name`, `for_create`.`surname` as `create_for_surname`, `for_create`.`employee_id` as `for_create_employee_id`, `for_create_role`.`name` as `for_create_role_name`
FROM `conference_sections`
JOIN `conferences` ON `conferences`.`id` = `conference_sections`.`conference_id`
JOIN `class_sections` ON `class_sections`.`id` = `conference_sections`.`cls_section_id`
JOIN `classes` ON `classes`.`id` = `class_sections`.`class_id`
JOIN `sections` ON `sections`.`id` = `class_sections`.`section_id`
JOIN `staff` as `for_create` ON `for_create`.`id` = `conferences`.`staff_id`
JOIN `staff_roles` ON `staff_roles`.`staff_id` = `for_create`.`id`
JOIN `roles` as `for_create_role` ON `for_create_role`.`id` = `staff_roles`.`role_id`
WHERE `class_sections`.`class_id` = '11'
AND `class_sections`.`section_id` = '12'
AND `conferences`.`session_id` = '18'
ORDER BY DATE(`conferences`.`date`) DESC, `conferences`.`date` DESC
ERROR - 2023-05-02 01:29:29 --> Query error: Table 'u649349862_school630.conference_sections' doesn't exist - Invalid query: SELECT `conferences`.*, `classes`.`class`, `sections`.`section`, `for_create`.`name` as `create_for_name`, `for_create`.`surname` as `create_for_surname`, `for_create`.`employee_id` as `for_create_employee_id`, `for_create_role`.`name` as `for_create_role_name`
FROM `conference_sections`
JOIN `conferences` ON `conferences`.`id` = `conference_sections`.`conference_id`
JOIN `class_sections` ON `class_sections`.`id` = `conference_sections`.`cls_section_id`
JOIN `classes` ON `classes`.`id` = `class_sections`.`class_id`
JOIN `sections` ON `sections`.`id` = `class_sections`.`section_id`
JOIN `staff` as `for_create` ON `for_create`.`id` = `conferences`.`staff_id`
JOIN `staff_roles` ON `staff_roles`.`staff_id` = `for_create`.`id`
JOIN `roles` as `for_create_role` ON `for_create_role`.`id` = `staff_roles`.`role_id`
WHERE `class_sections`.`class_id` = '11'
AND `class_sections`.`section_id` = '13'
AND `conferences`.`session_id` = '18'
ORDER BY DATE(`conferences`.`date`) DESC, `conferences`.`date` DESC
ERROR - 2023-05-02 02:58:00 --> Query error: Table 'u649349862_school630.conference_sections' doesn't exist - Invalid query: SELECT `conferences`.*, `classes`.`class`, `sections`.`section`, `for_create`.`name` as `create_for_name`, `for_create`.`surname` as `create_for_surname`, `for_create`.`employee_id` as `for_create_employee_id`, `for_create_role`.`name` as `for_create_role_name`
FROM `conference_sections`
JOIN `conferences` ON `conferences`.`id` = `conference_sections`.`conference_id`
JOIN `class_sections` ON `class_sections`.`id` = `conference_sections`.`cls_section_id`
JOIN `classes` ON `classes`.`id` = `class_sections`.`class_id`
JOIN `sections` ON `sections`.`id` = `class_sections`.`section_id`
JOIN `staff` as `for_create` ON `for_create`.`id` = `conferences`.`staff_id`
JOIN `staff_roles` ON `staff_roles`.`staff_id` = `for_create`.`id`
JOIN `roles` as `for_create_role` ON `for_create_role`.`id` = `staff_roles`.`role_id`
WHERE `class_sections`.`class_id` = '11'
AND `class_sections`.`section_id` = '12'
AND `conferences`.`session_id` = '18'
ORDER BY DATE(`conferences`.`date`) DESC, `conferences`.`date` DESC
ERROR - 2023-05-02 03:02:08 --> Query error: Table 'u649349862_school630.conference_sections' doesn't exist - Invalid query: SELECT `conferences`.*, `classes`.`class`, `sections`.`section`, `for_create`.`name` as `create_for_name`, `for_create`.`surname` as `create_for_surname`, `for_create`.`employee_id` as `for_create_employee_id`, `for_create_role`.`name` as `for_create_role_name`
FROM `conference_sections`
JOIN `conferences` ON `conferences`.`id` = `conference_sections`.`conference_id`
JOIN `class_sections` ON `class_sections`.`id` = `conference_sections`.`cls_section_id`
JOIN `classes` ON `classes`.`id` = `class_sections`.`class_id`
JOIN `sections` ON `sections`.`id` = `class_sections`.`section_id`
JOIN `staff` as `for_create` ON `for_create`.`id` = `conferences`.`staff_id`
JOIN `staff_roles` ON `staff_roles`.`staff_id` = `for_create`.`id`
JOIN `roles` as `for_create_role` ON `for_create_role`.`id` = `staff_roles`.`role_id`
WHERE `class_sections`.`class_id` = '11'
AND `class_sections`.`section_id` = '12'
AND `conferences`.`session_id` = '18'
ORDER BY DATE(`conferences`.`date`) DESC, `conferences`.`date` DESC
ERROR - 2023-05-02 03:02:09 --> Query error: Table 'u649349862_school630.conference_sections' doesn't exist - Invalid query: SELECT `conferences`.*, `classes`.`class`, `sections`.`section`, `for_create`.`name` as `create_for_name`, `for_create`.`surname` as `create_for_surname`, `for_create`.`employee_id` as `for_create_employee_id`, `for_create_role`.`name` as `for_create_role_name`
FROM `conference_sections`
JOIN `conferences` ON `conferences`.`id` = `conference_sections`.`conference_id`
JOIN `class_sections` ON `class_sections`.`id` = `conference_sections`.`cls_section_id`
JOIN `classes` ON `classes`.`id` = `class_sections`.`class_id`
JOIN `sections` ON `sections`.`id` = `class_sections`.`section_id`
JOIN `staff` as `for_create` ON `for_create`.`id` = `conferences`.`staff_id`
JOIN `staff_roles` ON `staff_roles`.`staff_id` = `for_create`.`id`
JOIN `roles` as `for_create_role` ON `for_create_role`.`id` = `staff_roles`.`role_id`
WHERE `class_sections`.`class_id` = '11'
AND `class_sections`.`section_id` = '12'
AND `conferences`.`session_id` = '18'
ORDER BY DATE(`conferences`.`date`) DESC, `conferences`.`date` DESC
ERROR - 2023-05-02 03:09:24 --> Query error: Table 'u649349862_school630.conference_sections' doesn't exist - Invalid query: SELECT `conferences`.*, `classes`.`class`, `sections`.`section`, `for_create`.`name` as `create_for_name`, `for_create`.`surname` as `create_for_surname`, `for_create`.`employee_id` as `for_create_employee_id`, `for_create_role`.`name` as `for_create_role_name`
FROM `conference_sections`
JOIN `conferences` ON `conferences`.`id` = `conference_sections`.`conference_id`
JOIN `class_sections` ON `class_sections`.`id` = `conference_sections`.`cls_section_id`
JOIN `classes` ON `classes`.`id` = `class_sections`.`class_id`
JOIN `sections` ON `sections`.`id` = `class_sections`.`section_id`
JOIN `staff` as `for_create` ON `for_create`.`id` = `conferences`.`staff_id`
JOIN `staff_roles` ON `staff_roles`.`staff_id` = `for_create`.`id`
JOIN `roles` as `for_create_role` ON `for_create_role`.`id` = `staff_roles`.`role_id`
WHERE `class_sections`.`class_id` = '11'
AND `class_sections`.`section_id` = '12'
AND `conferences`.`session_id` = '18'
ORDER BY DATE(`conferences`.`date`) DESC, `conferences`.`date` DESC
ERROR - 2023-05-02 03:13:54 --> Query error: Table 'u649349862_school630.conference_sections' doesn't exist - Invalid query: SELECT `conferences`.*, `classes`.`class`, `sections`.`section`, `for_create`.`name` as `create_for_name`, `for_create`.`surname` as `create_for_surname`, `for_create`.`employee_id` as `for_create_employee_id`, `for_create_role`.`name` as `for_create_role_name`
FROM `conference_sections`
JOIN `conferences` ON `conferences`.`id` = `conference_sections`.`conference_id`
JOIN `class_sections` ON `class_sections`.`id` = `conference_sections`.`cls_section_id`
JOIN `classes` ON `classes`.`id` = `class_sections`.`class_id`
JOIN `sections` ON `sections`.`id` = `class_sections`.`section_id`
JOIN `staff` as `for_create` ON `for_create`.`id` = `conferences`.`staff_id`
JOIN `staff_roles` ON `staff_roles`.`staff_id` = `for_create`.`id`
JOIN `roles` as `for_create_role` ON `for_create_role`.`id` = `staff_roles`.`role_id`
WHERE `class_sections`.`class_id` = '11'
AND `class_sections`.`section_id` = '12'
AND `conferences`.`session_id` = '18'
ORDER BY DATE(`conferences`.`date`) DESC, `conferences`.`date` DESC
ERROR - 2023-05-02 03:13:58 --> Severity: Warning --> Undefined variable $resp /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 833
ERROR - 2023-05-02 03:13:58 --> Severity: Warning --> Undefined variable $resp /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 833
ERROR - 2023-05-02 03:19:04 --> Query error: Table 'u649349862_school630.conference_sections' doesn't exist - Invalid query: SELECT `conferences`.*, `classes`.`class`, `sections`.`section`, `for_create`.`name` as `create_for_name`, `for_create`.`surname` as `create_for_surname`, `for_create`.`employee_id` as `for_create_employee_id`, `for_create_role`.`name` as `for_create_role_name`
FROM `conference_sections`
JOIN `conferences` ON `conferences`.`id` = `conference_sections`.`conference_id`
JOIN `class_sections` ON `class_sections`.`id` = `conference_sections`.`cls_section_id`
JOIN `classes` ON `classes`.`id` = `class_sections`.`class_id`
JOIN `sections` ON `sections`.`id` = `class_sections`.`section_id`
JOIN `staff` as `for_create` ON `for_create`.`id` = `conferences`.`staff_id`
JOIN `staff_roles` ON `staff_roles`.`staff_id` = `for_create`.`id`
JOIN `roles` as `for_create_role` ON `for_create_role`.`id` = `staff_roles`.`role_id`
WHERE `class_sections`.`class_id` = '11'
AND `class_sections`.`section_id` = '12'
AND `conferences`.`session_id` = '18'
ORDER BY DATE(`conferences`.`date`) DESC, `conferences`.`date` DESC
ERROR - 2023-05-02 03:20:07 --> Query error: Table 'u649349862_school630.conference_sections' doesn't exist - Invalid query: SELECT `conferences`.*, `classes`.`class`, `sections`.`section`, `for_create`.`name` as `create_for_name`, `for_create`.`surname` as `create_for_surname`, `for_create`.`employee_id` as `for_create_employee_id`, `for_create_role`.`name` as `for_create_role_name`
FROM `conference_sections`
JOIN `conferences` ON `conferences`.`id` = `conference_sections`.`conference_id`
JOIN `class_sections` ON `class_sections`.`id` = `conference_sections`.`cls_section_id`
JOIN `classes` ON `classes`.`id` = `class_sections`.`class_id`
JOIN `sections` ON `sections`.`id` = `class_sections`.`section_id`
JOIN `staff` as `for_create` ON `for_create`.`id` = `conferences`.`staff_id`
JOIN `staff_roles` ON `staff_roles`.`staff_id` = `for_create`.`id`
JOIN `roles` as `for_create_role` ON `for_create_role`.`id` = `staff_roles`.`role_id`
WHERE `class_sections`.`class_id` = '11'
AND `class_sections`.`section_id` = '13'
AND `conferences`.`session_id` = '18'
ORDER BY DATE(`conferences`.`date`) DESC, `conferences`.`date` DESC
ERROR - 2023-05-02 03:20:13 --> Severity: Warning --> Undefined variable $resp /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 833
ERROR - 2023-05-02 03:20:13 --> Severity: Warning --> Undefined variable $resp /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 833
ERROR - 2023-05-02 03:24:18 --> Query error: Table 'u649349862_school630.conference_sections' doesn't exist - Invalid query: SELECT `conferences`.*, `classes`.`class`, `sections`.`section`, `for_create`.`name` as `create_for_name`, `for_create`.`surname` as `create_for_surname`, `for_create`.`employee_id` as `for_create_employee_id`, `for_create_role`.`name` as `for_create_role_name`
FROM `conference_sections`
JOIN `conferences` ON `conferences`.`id` = `conference_sections`.`conference_id`
JOIN `class_sections` ON `class_sections`.`id` = `conference_sections`.`cls_section_id`
JOIN `classes` ON `classes`.`id` = `class_sections`.`class_id`
JOIN `sections` ON `sections`.`id` = `class_sections`.`section_id`
JOIN `staff` as `for_create` ON `for_create`.`id` = `conferences`.`staff_id`
JOIN `staff_roles` ON `staff_roles`.`staff_id` = `for_create`.`id`
JOIN `roles` as `for_create_role` ON `for_create_role`.`id` = `staff_roles`.`role_id`
WHERE `class_sections`.`class_id` = '11'
AND `class_sections`.`section_id` = '13'
AND `conferences`.`session_id` = '18'
ORDER BY DATE(`conferences`.`date`) DESC, `conferences`.`date` DESC
ERROR - 2023-05-02 03:24:22 --> Query error: Table 'u649349862_school630.conference_sections' doesn't exist - Invalid query: SELECT `conferences`.*, `classes`.`class`, `sections`.`section`, `for_create`.`name` as `create_for_name`, `for_create`.`surname` as `create_for_surname`, `for_create`.`employee_id` as `for_create_employee_id`, `for_create_role`.`name` as `for_create_role_name`
FROM `conference_sections`
JOIN `conferences` ON `conferences`.`id` = `conference_sections`.`conference_id`
JOIN `class_sections` ON `class_sections`.`id` = `conference_sections`.`cls_section_id`
JOIN `classes` ON `classes`.`id` = `class_sections`.`class_id`
JOIN `sections` ON `sections`.`id` = `class_sections`.`section_id`
JOIN `staff` as `for_create` ON `for_create`.`id` = `conferences`.`staff_id`
JOIN `staff_roles` ON `staff_roles`.`staff_id` = `for_create`.`id`
JOIN `roles` as `for_create_role` ON `for_create_role`.`id` = `staff_roles`.`role_id`
WHERE `class_sections`.`class_id` = '11'
AND `class_sections`.`section_id` = '13'
AND `conferences`.`session_id` = '18'
ORDER BY DATE(`conferences`.`date`) DESC, `conferences`.`date` DESC
ERROR - 2023-05-02 03:26:25 --> Severity: Warning --> Undefined variable $resp /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 833
ERROR - 2023-05-02 03:26:25 --> Severity: Warning --> Undefined variable $resp /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 833
ERROR - 2023-05-02 03:27:48 --> Query error: Table 'u649349862_school630.conference_sections' doesn't exist - Invalid query: SELECT `conferences`.*, `classes`.`class`, `sections`.`section`, `for_create`.`name` as `create_for_name`, `for_create`.`surname` as `create_for_surname`, `for_create`.`employee_id` as `for_create_employee_id`, `for_create_role`.`name` as `for_create_role_name`
FROM `conference_sections`
JOIN `conferences` ON `conferences`.`id` = `conference_sections`.`conference_id`
JOIN `class_sections` ON `class_sections`.`id` = `conference_sections`.`cls_section_id`
JOIN `classes` ON `classes`.`id` = `class_sections`.`class_id`
JOIN `sections` ON `sections`.`id` = `class_sections`.`section_id`
JOIN `staff` as `for_create` ON `for_create`.`id` = `conferences`.`staff_id`
JOIN `staff_roles` ON `staff_roles`.`staff_id` = `for_create`.`id`
JOIN `roles` as `for_create_role` ON `for_create_role`.`id` = `staff_roles`.`role_id`
WHERE `class_sections`.`class_id` = '11'
AND `class_sections`.`section_id` = '13'
AND `conferences`.`session_id` = '18'
ORDER BY DATE(`conferences`.`date`) DESC, `conferences`.`date` DESC
ERROR - 2023-05-02 03:31:40 --> Query error: Table 'u649349862_school630.conference_sections' doesn't exist - Invalid query: SELECT `conferences`.*, `classes`.`class`, `sections`.`section`, `for_create`.`name` as `create_for_name`, `for_create`.`surname` as `create_for_surname`, `for_create`.`employee_id` as `for_create_employee_id`, `for_create_role`.`name` as `for_create_role_name`
FROM `conference_sections`
JOIN `conferences` ON `conferences`.`id` = `conference_sections`.`conference_id`
JOIN `class_sections` ON `class_sections`.`id` = `conference_sections`.`cls_section_id`
JOIN `classes` ON `classes`.`id` = `class_sections`.`class_id`
JOIN `sections` ON `sections`.`id` = `class_sections`.`section_id`
JOIN `staff` as `for_create` ON `for_create`.`id` = `conferences`.`staff_id`
JOIN `staff_roles` ON `staff_roles`.`staff_id` = `for_create`.`id`
JOIN `roles` as `for_create_role` ON `for_create_role`.`id` = `staff_roles`.`role_id`
WHERE `class_sections`.`class_id` = '11'
AND `class_sections`.`section_id` = '12'
AND `conferences`.`session_id` = '18'
ORDER BY DATE(`conferences`.`date`) DESC, `conferences`.`date` DESC
ERROR - 2023-05-02 03:31:42 --> Query error: Table 'u649349862_school630.conference_sections' doesn't exist - Invalid query: SELECT `conferences`.*, `classes`.`class`, `sections`.`section`, `for_create`.`name` as `create_for_name`, `for_create`.`surname` as `create_for_surname`, `for_create`.`employee_id` as `for_create_employee_id`, `for_create_role`.`name` as `for_create_role_name`
FROM `conference_sections`
JOIN `conferences` ON `conferences`.`id` = `conference_sections`.`conference_id`
JOIN `class_sections` ON `class_sections`.`id` = `conference_sections`.`cls_section_id`
JOIN `classes` ON `classes`.`id` = `class_sections`.`class_id`
JOIN `sections` ON `sections`.`id` = `class_sections`.`section_id`
JOIN `staff` as `for_create` ON `for_create`.`id` = `conferences`.`staff_id`
JOIN `staff_roles` ON `staff_roles`.`staff_id` = `for_create`.`id`
JOIN `roles` as `for_create_role` ON `for_create_role`.`id` = `staff_roles`.`role_id`
WHERE `class_sections`.`class_id` = '11'
AND `class_sections`.`section_id` = '12'
AND `conferences`.`session_id` = '18'
ORDER BY DATE(`conferences`.`date`) DESC, `conferences`.`date` DESC
ERROR - 2023-05-02 03:31:50 --> Severity: Warning --> Undefined variable $resp /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 833
ERROR - 2023-05-02 03:31:50 --> Severity: Warning --> Undefined variable $resp /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 833
ERROR - 2023-05-02 03:32:05 --> Query error: Table 'u649349862_school630.conference_sections' doesn't exist - Invalid query: SELECT `conferences`.*, `classes`.`class`, `sections`.`section`, `for_create`.`name` as `create_for_name`, `for_create`.`surname` as `create_for_surname`, `for_create`.`employee_id` as `for_create_employee_id`, `for_create_role`.`name` as `for_create_role_name`
FROM `conference_sections`
JOIN `conferences` ON `conferences`.`id` = `conference_sections`.`conference_id`
JOIN `class_sections` ON `class_sections`.`id` = `conference_sections`.`cls_section_id`
JOIN `classes` ON `classes`.`id` = `class_sections`.`class_id`
JOIN `sections` ON `sections`.`id` = `class_sections`.`section_id`
JOIN `staff` as `for_create` ON `for_create`.`id` = `conferences`.`staff_id`
JOIN `staff_roles` ON `staff_roles`.`staff_id` = `for_create`.`id`
JOIN `roles` as `for_create_role` ON `for_create_role`.`id` = `staff_roles`.`role_id`
WHERE `class_sections`.`class_id` = '11'
AND `class_sections`.`section_id` = '13'
AND `conferences`.`session_id` = '18'
ORDER BY DATE(`conferences`.`date`) DESC, `conferences`.`date` DESC
ERROR - 2023-05-02 03:35:25 --> Query error: Table 'u649349862_school630.conference_sections' doesn't exist - Invalid query: SELECT `conferences`.*, `classes`.`class`, `sections`.`section`, `for_create`.`name` as `create_for_name`, `for_create`.`surname` as `create_for_surname`, `for_create`.`employee_id` as `for_create_employee_id`, `for_create_role`.`name` as `for_create_role_name`
FROM `conference_sections`
JOIN `conferences` ON `conferences`.`id` = `conference_sections`.`conference_id`
JOIN `class_sections` ON `class_sections`.`id` = `conference_sections`.`cls_section_id`
JOIN `classes` ON `classes`.`id` = `class_sections`.`class_id`
JOIN `sections` ON `sections`.`id` = `class_sections`.`section_id`
JOIN `staff` as `for_create` ON `for_create`.`id` = `conferences`.`staff_id`
JOIN `staff_roles` ON `staff_roles`.`staff_id` = `for_create`.`id`
JOIN `roles` as `for_create_role` ON `for_create_role`.`id` = `staff_roles`.`role_id`
WHERE `class_sections`.`class_id` = '11'
AND `class_sections`.`section_id` = '13'
AND `conferences`.`session_id` = '18'
ORDER BY DATE(`conferences`.`date`) DESC, `conferences`.`date` DESC
ERROR - 2023-05-02 03:35:33 --> Query error: Table 'u649349862_school630.conference_sections' doesn't exist - Invalid query: SELECT `conferences`.*, `classes`.`class`, `sections`.`section`, `for_create`.`name` as `create_for_name`, `for_create`.`surname` as `create_for_surname`, `for_create`.`employee_id` as `for_create_employee_id`, `for_create_role`.`name` as `for_create_role_name`
FROM `conference_sections`
JOIN `conferences` ON `conferences`.`id` = `conference_sections`.`conference_id`
JOIN `class_sections` ON `class_sections`.`id` = `conference_sections`.`cls_section_id`
JOIN `classes` ON `classes`.`id` = `class_sections`.`class_id`
JOIN `sections` ON `sections`.`id` = `class_sections`.`section_id`
JOIN `staff` as `for_create` ON `for_create`.`id` = `conferences`.`staff_id`
JOIN `staff_roles` ON `staff_roles`.`staff_id` = `for_create`.`id`
JOIN `roles` as `for_create_role` ON `for_create_role`.`id` = `staff_roles`.`role_id`
WHERE `class_sections`.`class_id` = '11'
AND `class_sections`.`section_id` = '13'
AND `conferences`.`session_id` = '18'
ORDER BY DATE(`conferences`.`date`) DESC, `conferences`.`date` DESC
ERROR - 2023-05-02 03:37:31 --> Query error: Table 'u649349862_school630.conference_sections' doesn't exist - Invalid query: SELECT `conferences`.*, `classes`.`class`, `sections`.`section`, `for_create`.`name` as `create_for_name`, `for_create`.`surname` as `create_for_surname`, `for_create`.`employee_id` as `for_create_employee_id`, `for_create_role`.`name` as `for_create_role_name`
FROM `conference_sections`
JOIN `conferences` ON `conferences`.`id` = `conference_sections`.`conference_id`
JOIN `class_sections` ON `class_sections`.`id` = `conference_sections`.`cls_section_id`
JOIN `classes` ON `classes`.`id` = `class_sections`.`class_id`
JOIN `sections` ON `sections`.`id` = `class_sections`.`section_id`
JOIN `staff` as `for_create` ON `for_create`.`id` = `conferences`.`staff_id`
JOIN `staff_roles` ON `staff_roles`.`staff_id` = `for_create`.`id`
JOIN `roles` as `for_create_role` ON `for_create_role`.`id` = `staff_roles`.`role_id`
WHERE `class_sections`.`class_id` = '11'
AND `class_sections`.`section_id` = '12'
AND `conferences`.`session_id` = '18'
ORDER BY DATE(`conferences`.`date`) DESC, `conferences`.`date` DESC
ERROR - 2023-05-02 03:39:11 --> Query error: Table 'u649349862_school630.conference_sections' doesn't exist - Invalid query: SELECT `conferences`.*, `classes`.`class`, `sections`.`section`, `for_create`.`name` as `create_for_name`, `for_create`.`surname` as `create_for_surname`, `for_create`.`employee_id` as `for_create_employee_id`, `for_create_role`.`name` as `for_create_role_name`
FROM `conference_sections`
JOIN `conferences` ON `conferences`.`id` = `conference_sections`.`conference_id`
JOIN `class_sections` ON `class_sections`.`id` = `conference_sections`.`cls_section_id`
JOIN `classes` ON `classes`.`id` = `class_sections`.`class_id`
JOIN `sections` ON `sections`.`id` = `class_sections`.`section_id`
JOIN `staff` as `for_create` ON `for_create`.`id` = `conferences`.`staff_id`
JOIN `staff_roles` ON `staff_roles`.`staff_id` = `for_create`.`id`
JOIN `roles` as `for_create_role` ON `for_create_role`.`id` = `staff_roles`.`role_id`
WHERE `class_sections`.`class_id` = '11'
AND `class_sections`.`section_id` = '13'
AND `conferences`.`session_id` = '18'
ORDER BY DATE(`conferences`.`date`) DESC, `conferences`.`date` DESC
ERROR - 2023-05-02 03:40:23 --> Query error: Table 'u649349862_school630.conference_sections' doesn't exist - Invalid query: SELECT `conferences`.*, `classes`.`class`, `sections`.`section`, `for_create`.`name` as `create_for_name`, `for_create`.`surname` as `create_for_surname`, `for_create`.`employee_id` as `for_create_employee_id`, `for_create_role`.`name` as `for_create_role_name`
FROM `conference_sections`
JOIN `conferences` ON `conferences`.`id` = `conference_sections`.`conference_id`
JOIN `class_sections` ON `class_sections`.`id` = `conference_sections`.`cls_section_id`
JOIN `classes` ON `classes`.`id` = `class_sections`.`class_id`
JOIN `sections` ON `sections`.`id` = `class_sections`.`section_id`
JOIN `staff` as `for_create` ON `for_create`.`id` = `conferences`.`staff_id`
JOIN `staff_roles` ON `staff_roles`.`staff_id` = `for_create`.`id`
JOIN `roles` as `for_create_role` ON `for_create_role`.`id` = `staff_roles`.`role_id`
WHERE `class_sections`.`class_id` = '11'
AND `class_sections`.`section_id` = '13'
AND `conferences`.`session_id` = '18'
ORDER BY DATE(`conferences`.`date`) DESC, `conferences`.`date` DESC
ERROR - 2023-05-02 03:41:18 --> Query error: Table 'u649349862_school630.conference_sections' doesn't exist - Invalid query: SELECT `conferences`.*, `classes`.`class`, `sections`.`section`, `for_create`.`name` as `create_for_name`, `for_create`.`surname` as `create_for_surname`, `for_create`.`employee_id` as `for_create_employee_id`, `for_create_role`.`name` as `for_create_role_name`
FROM `conference_sections`
JOIN `conferences` ON `conferences`.`id` = `conference_sections`.`conference_id`
JOIN `class_sections` ON `class_sections`.`id` = `conference_sections`.`cls_section_id`
JOIN `classes` ON `classes`.`id` = `class_sections`.`class_id`
JOIN `sections` ON `sections`.`id` = `class_sections`.`section_id`
JOIN `staff` as `for_create` ON `for_create`.`id` = `conferences`.`staff_id`
JOIN `staff_roles` ON `staff_roles`.`staff_id` = `for_create`.`id`
JOIN `roles` as `for_create_role` ON `for_create_role`.`id` = `staff_roles`.`role_id`
WHERE `class_sections`.`class_id` = '11'
AND `class_sections`.`section_id` = '13'
AND `conferences`.`session_id` = '18'
ORDER BY DATE(`conferences`.`date`) DESC, `conferences`.`date` DESC
ERROR - 2023-05-02 03:41:30 --> Query error: Table 'u649349862_school630.conference_sections' doesn't exist - Invalid query: SELECT `conferences`.*, `classes`.`class`, `sections`.`section`, `for_create`.`name` as `create_for_name`, `for_create`.`surname` as `create_for_surname`, `for_create`.`employee_id` as `for_create_employee_id`, `for_create_role`.`name` as `for_create_role_name`
FROM `conference_sections`
JOIN `conferences` ON `conferences`.`id` = `conference_sections`.`conference_id`
JOIN `class_sections` ON `class_sections`.`id` = `conference_sections`.`cls_section_id`
JOIN `classes` ON `classes`.`id` = `class_sections`.`class_id`
JOIN `sections` ON `sections`.`id` = `class_sections`.`section_id`
JOIN `staff` as `for_create` ON `for_create`.`id` = `conferences`.`staff_id`
JOIN `staff_roles` ON `staff_roles`.`staff_id` = `for_create`.`id`
JOIN `roles` as `for_create_role` ON `for_create_role`.`id` = `staff_roles`.`role_id`
WHERE `class_sections`.`class_id` = '11'
AND `class_sections`.`section_id` = '13'
AND `conferences`.`session_id` = '18'
ORDER BY DATE(`conferences`.`date`) DESC, `conferences`.`date` DESC
ERROR - 2023-05-02 03:41:45 --> Query error: Table 'u649349862_school630.conference_sections' doesn't exist - Invalid query: SELECT `conferences`.*, `classes`.`class`, `sections`.`section`, `for_create`.`name` as `create_for_name`, `for_create`.`surname` as `create_for_surname`, `for_create`.`employee_id` as `for_create_employee_id`, `for_create_role`.`name` as `for_create_role_name`
FROM `conference_sections`
JOIN `conferences` ON `conferences`.`id` = `conference_sections`.`conference_id`
JOIN `class_sections` ON `class_sections`.`id` = `conference_sections`.`cls_section_id`
JOIN `classes` ON `classes`.`id` = `class_sections`.`class_id`
JOIN `sections` ON `sections`.`id` = `class_sections`.`section_id`
JOIN `staff` as `for_create` ON `for_create`.`id` = `conferences`.`staff_id`
JOIN `staff_roles` ON `staff_roles`.`staff_id` = `for_create`.`id`
JOIN `roles` as `for_create_role` ON `for_create_role`.`id` = `staff_roles`.`role_id`
WHERE `class_sections`.`class_id` = '11'
AND `class_sections`.`section_id` = '12'
AND `conferences`.`session_id` = '18'
ORDER BY DATE(`conferences`.`date`) DESC, `conferences`.`date` DESC
ERROR - 2023-05-02 03:42:59 --> Query error: Table 'u649349862_school630.conference_sections' doesn't exist - Invalid query: SELECT `conferences`.*, `classes`.`class`, `sections`.`section`, `for_create`.`name` as `create_for_name`, `for_create`.`surname` as `create_for_surname`, `for_create`.`employee_id` as `for_create_employee_id`, `for_create_role`.`name` as `for_create_role_name`
FROM `conference_sections`
JOIN `conferences` ON `conferences`.`id` = `conference_sections`.`conference_id`
JOIN `class_sections` ON `class_sections`.`id` = `conference_sections`.`cls_section_id`
JOIN `classes` ON `classes`.`id` = `class_sections`.`class_id`
JOIN `sections` ON `sections`.`id` = `class_sections`.`section_id`
JOIN `staff` as `for_create` ON `for_create`.`id` = `conferences`.`staff_id`
JOIN `staff_roles` ON `staff_roles`.`staff_id` = `for_create`.`id`
JOIN `roles` as `for_create_role` ON `for_create_role`.`id` = `staff_roles`.`role_id`
WHERE `class_sections`.`class_id` = '11'
AND `class_sections`.`section_id` = '12'
AND `conferences`.`session_id` = '18'
ORDER BY DATE(`conferences`.`date`) DESC, `conferences`.`date` DESC
ERROR - 2023-05-02 03:43:51 --> Query error: Table 'u649349862_school630.conference_sections' doesn't exist - Invalid query: SELECT `conferences`.*, `classes`.`class`, `sections`.`section`, `for_create`.`name` as `create_for_name`, `for_create`.`surname` as `create_for_surname`, `for_create`.`employee_id` as `for_create_employee_id`, `for_create_role`.`name` as `for_create_role_name`
FROM `conference_sections`
JOIN `conferences` ON `conferences`.`id` = `conference_sections`.`conference_id`
JOIN `class_sections` ON `class_sections`.`id` = `conference_sections`.`cls_section_id`
JOIN `classes` ON `classes`.`id` = `class_sections`.`class_id`
JOIN `sections` ON `sections`.`id` = `class_sections`.`section_id`
JOIN `staff` as `for_create` ON `for_create`.`id` = `conferences`.`staff_id`
JOIN `staff_roles` ON `staff_roles`.`staff_id` = `for_create`.`id`
JOIN `roles` as `for_create_role` ON `for_create_role`.`id` = `staff_roles`.`role_id`
WHERE `class_sections`.`class_id` = '11'
AND `class_sections`.`section_id` = '13'
AND `conferences`.`session_id` = '18'
ORDER BY DATE(`conferences`.`date`) DESC, `conferences`.`date` DESC
ERROR - 2023-05-02 03:47:43 --> Query error: Table 'u649349862_school630.conference_sections' doesn't exist - Invalid query: SELECT `conferences`.*, `classes`.`class`, `sections`.`section`, `for_create`.`name` as `create_for_name`, `for_create`.`surname` as `create_for_surname`, `for_create`.`employee_id` as `for_create_employee_id`, `for_create_role`.`name` as `for_create_role_name`
FROM `conference_sections`
JOIN `conferences` ON `conferences`.`id` = `conference_sections`.`conference_id`
JOIN `class_sections` ON `class_sections`.`id` = `conference_sections`.`cls_section_id`
JOIN `classes` ON `classes`.`id` = `class_sections`.`class_id`
JOIN `sections` ON `sections`.`id` = `class_sections`.`section_id`
JOIN `staff` as `for_create` ON `for_create`.`id` = `conferences`.`staff_id`
JOIN `staff_roles` ON `staff_roles`.`staff_id` = `for_create`.`id`
JOIN `roles` as `for_create_role` ON `for_create_role`.`id` = `staff_roles`.`role_id`
WHERE `class_sections`.`class_id` = '11'
AND `class_sections`.`section_id` = '12'
AND `conferences`.`session_id` = '18'
ORDER BY DATE(`conferences`.`date`) DESC, `conferences`.`date` DESC
ERROR - 2023-05-02 03:48:21 --> Query error: Table 'u649349862_school630.conference_sections' doesn't exist - Invalid query: SELECT `conferences`.*, `classes`.`class`, `sections`.`section`, `for_create`.`name` as `create_for_name`, `for_create`.`surname` as `create_for_surname`, `for_create`.`employee_id` as `for_create_employee_id`, `for_create_role`.`name` as `for_create_role_name`
FROM `conference_sections`
JOIN `conferences` ON `conferences`.`id` = `conference_sections`.`conference_id`
JOIN `class_sections` ON `class_sections`.`id` = `conference_sections`.`cls_section_id`
JOIN `classes` ON `classes`.`id` = `class_sections`.`class_id`
JOIN `sections` ON `sections`.`id` = `class_sections`.`section_id`
JOIN `staff` as `for_create` ON `for_create`.`id` = `conferences`.`staff_id`
JOIN `staff_roles` ON `staff_roles`.`staff_id` = `for_create`.`id`
JOIN `roles` as `for_create_role` ON `for_create_role`.`id` = `staff_roles`.`role_id`
WHERE `class_sections`.`class_id` = '11'
AND `class_sections`.`section_id` = '12'
AND `conferences`.`session_id` = '18'
ORDER BY DATE(`conferences`.`date`) DESC, `conferences`.`date` DESC
ERROR - 2023-05-02 03:48:30 --> Query error: Table 'u649349862_school630.conference_sections' doesn't exist - Invalid query: SELECT `conferences`.*, `classes`.`class`, `sections`.`section`, `for_create`.`name` as `create_for_name`, `for_create`.`surname` as `create_for_surname`, `for_create`.`employee_id` as `for_create_employee_id`, `for_create_role`.`name` as `for_create_role_name`
FROM `conference_sections`
JOIN `conferences` ON `conferences`.`id` = `conference_sections`.`conference_id`
JOIN `class_sections` ON `class_sections`.`id` = `conference_sections`.`cls_section_id`
JOIN `classes` ON `classes`.`id` = `class_sections`.`class_id`
JOIN `sections` ON `sections`.`id` = `class_sections`.`section_id`
JOIN `staff` as `for_create` ON `for_create`.`id` = `conferences`.`staff_id`
JOIN `staff_roles` ON `staff_roles`.`staff_id` = `for_create`.`id`
JOIN `roles` as `for_create_role` ON `for_create_role`.`id` = `staff_roles`.`role_id`
WHERE `class_sections`.`class_id` = '11'
AND `class_sections`.`section_id` = '12'
AND `conferences`.`session_id` = '18'
ORDER BY DATE(`conferences`.`date`) DESC, `conferences`.`date` DESC
ERROR - 2023-05-02 03:49:57 --> Query error: Table 'u649349862_school630.conference_sections' doesn't exist - Invalid query: SELECT `conferences`.*, `classes`.`class`, `sections`.`section`, `for_create`.`name` as `create_for_name`, `for_create`.`surname` as `create_for_surname`, `for_create`.`employee_id` as `for_create_employee_id`, `for_create_role`.`name` as `for_create_role_name`
FROM `conference_sections`
JOIN `conferences` ON `conferences`.`id` = `conference_sections`.`conference_id`
JOIN `class_sections` ON `class_sections`.`id` = `conference_sections`.`cls_section_id`
JOIN `classes` ON `classes`.`id` = `class_sections`.`class_id`
JOIN `sections` ON `sections`.`id` = `class_sections`.`section_id`
JOIN `staff` as `for_create` ON `for_create`.`id` = `conferences`.`staff_id`
JOIN `staff_roles` ON `staff_roles`.`staff_id` = `for_create`.`id`
JOIN `roles` as `for_create_role` ON `for_create_role`.`id` = `staff_roles`.`role_id`
WHERE `class_sections`.`class_id` = '11'
AND `class_sections`.`section_id` = '12'
AND `conferences`.`session_id` = '18'
ORDER BY DATE(`conferences`.`date`) DESC, `conferences`.`date` DESC
ERROR - 2023-05-02 03:54:03 --> Severity: Warning --> Undefined variable $resp /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 833
ERROR - 2023-05-02 03:54:03 --> Severity: Warning --> Undefined variable $resp /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 833
ERROR - 2023-05-02 04:03:43 --> Severity: Warning --> Undefined variable $resp /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 833
ERROR - 2023-05-02 04:03:43 --> Severity: Warning --> Undefined variable $resp /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 833
ERROR - 2023-05-02 04:05:04 --> Query error: Table 'u649349862_school630.conference_sections' doesn't exist - Invalid query: SELECT `conferences`.*, `classes`.`class`, `sections`.`section`, `for_create`.`name` as `create_for_name`, `for_create`.`surname` as `create_for_surname`, `for_create`.`employee_id` as `for_create_employee_id`, `for_create_role`.`name` as `for_create_role_name`
FROM `conference_sections`
JOIN `conferences` ON `conferences`.`id` = `conference_sections`.`conference_id`
JOIN `class_sections` ON `class_sections`.`id` = `conference_sections`.`cls_section_id`
JOIN `classes` ON `classes`.`id` = `class_sections`.`class_id`
JOIN `sections` ON `sections`.`id` = `class_sections`.`section_id`
JOIN `staff` as `for_create` ON `for_create`.`id` = `conferences`.`staff_id`
JOIN `staff_roles` ON `staff_roles`.`staff_id` = `for_create`.`id`
JOIN `roles` as `for_create_role` ON `for_create_role`.`id` = `staff_roles`.`role_id`
WHERE `class_sections`.`class_id` = '11'
AND `class_sections`.`section_id` = '12'
AND `conferences`.`session_id` = '18'
ORDER BY DATE(`conferences`.`date`) DESC, `conferences`.`date` DESC
ERROR - 2023-05-02 04:05:38 --> Query error: Table 'u649349862_school630.conference_sections' doesn't exist - Invalid query: SELECT `conferences`.*, `classes`.`class`, `sections`.`section`, `for_create`.`name` as `create_for_name`, `for_create`.`surname` as `create_for_surname`, `for_create`.`employee_id` as `for_create_employee_id`, `for_create_role`.`name` as `for_create_role_name`
FROM `conference_sections`
JOIN `conferences` ON `conferences`.`id` = `conference_sections`.`conference_id`
JOIN `class_sections` ON `class_sections`.`id` = `conference_sections`.`cls_section_id`
JOIN `classes` ON `classes`.`id` = `class_sections`.`class_id`
JOIN `sections` ON `sections`.`id` = `class_sections`.`section_id`
JOIN `staff` as `for_create` ON `for_create`.`id` = `conferences`.`staff_id`
JOIN `staff_roles` ON `staff_roles`.`staff_id` = `for_create`.`id`
JOIN `roles` as `for_create_role` ON `for_create_role`.`id` = `staff_roles`.`role_id`
WHERE `class_sections`.`class_id` = '11'
AND `class_sections`.`section_id` = '12'
AND `conferences`.`session_id` = '18'
ORDER BY DATE(`conferences`.`date`) DESC, `conferences`.`date` DESC
ERROR - 2023-05-02 04:06:27 --> Query error: Table 'u649349862_school630.conference_sections' doesn't exist - Invalid query: SELECT `conferences`.*, `classes`.`class`, `sections`.`section`, `for_create`.`name` as `create_for_name`, `for_create`.`surname` as `create_for_surname`, `for_create`.`employee_id` as `for_create_employee_id`, `for_create_role`.`name` as `for_create_role_name`
FROM `conference_sections`
JOIN `conferences` ON `conferences`.`id` = `conference_sections`.`conference_id`
JOIN `class_sections` ON `class_sections`.`id` = `conference_sections`.`cls_section_id`
JOIN `classes` ON `classes`.`id` = `class_sections`.`class_id`
JOIN `sections` ON `sections`.`id` = `class_sections`.`section_id`
JOIN `staff` as `for_create` ON `for_create`.`id` = `conferences`.`staff_id`
JOIN `staff_roles` ON `staff_roles`.`staff_id` = `for_create`.`id`
JOIN `roles` as `for_create_role` ON `for_create_role`.`id` = `staff_roles`.`role_id`
WHERE `class_sections`.`class_id` = '11'
AND `class_sections`.`section_id` = '12'
AND `conferences`.`session_id` = '18'
ORDER BY DATE(`conferences`.`date`) DESC, `conferences`.`date` DESC
ERROR - 2023-05-02 04:06:32 --> Query error: Table 'u649349862_school630.conference_sections' doesn't exist - Invalid query: SELECT `conferences`.*, `classes`.`class`, `sections`.`section`, `for_create`.`name` as `create_for_name`, `for_create`.`surname` as `create_for_surname`, `for_create`.`employee_id` as `for_create_employee_id`, `for_create_role`.`name` as `for_create_role_name`
FROM `conference_sections`
JOIN `conferences` ON `conferences`.`id` = `conference_sections`.`conference_id`
JOIN `class_sections` ON `class_sections`.`id` = `conference_sections`.`cls_section_id`
JOIN `classes` ON `classes`.`id` = `class_sections`.`class_id`
JOIN `sections` ON `sections`.`id` = `class_sections`.`section_id`
JOIN `staff` as `for_create` ON `for_create`.`id` = `conferences`.`staff_id`
JOIN `staff_roles` ON `staff_roles`.`staff_id` = `for_create`.`id`
JOIN `roles` as `for_create_role` ON `for_create_role`.`id` = `staff_roles`.`role_id`
WHERE `class_sections`.`class_id` = '11'
AND `class_sections`.`section_id` = '12'
AND `conferences`.`session_id` = '18'
ORDER BY DATE(`conferences`.`date`) DESC, `conferences`.`date` DESC
ERROR - 2023-05-02 04:28:03 --> Query error: Table 'u649349862_school630.conference_sections' doesn't exist - Invalid query: SELECT `conferences`.*, `classes`.`class`, `sections`.`section`, `for_create`.`name` as `create_for_name`, `for_create`.`surname` as `create_for_surname`, `for_create`.`employee_id` as `for_create_employee_id`, `for_create_role`.`name` as `for_create_role_name`
FROM `conference_sections`
JOIN `conferences` ON `conferences`.`id` = `conference_sections`.`conference_id`
JOIN `class_sections` ON `class_sections`.`id` = `conference_sections`.`cls_section_id`
JOIN `classes` ON `classes`.`id` = `class_sections`.`class_id`
JOIN `sections` ON `sections`.`id` = `class_sections`.`section_id`
JOIN `staff` as `for_create` ON `for_create`.`id` = `conferences`.`staff_id`
JOIN `staff_roles` ON `staff_roles`.`staff_id` = `for_create`.`id`
JOIN `roles` as `for_create_role` ON `for_create_role`.`id` = `staff_roles`.`role_id`
WHERE `class_sections`.`class_id` = '11'
AND `class_sections`.`section_id` = '12'
AND `conferences`.`session_id` = '18'
ORDER BY DATE(`conferences`.`date`) DESC, `conferences`.`date` DESC
ERROR - 2023-05-02 04:28:25 --> Severity: Warning --> Undefined variable $resp /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 833
ERROR - 2023-05-02 04:28:25 --> Severity: Warning --> Undefined variable $resp /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 833
ERROR - 2023-05-02 04:35:07 --> Query error: Table 'u649349862_school630.conference_sections' doesn't exist - Invalid query: SELECT `conferences`.*, `classes`.`class`, `sections`.`section`, `for_create`.`name` as `create_for_name`, `for_create`.`surname` as `create_for_surname`, `for_create`.`employee_id` as `for_create_employee_id`, `for_create_role`.`name` as `for_create_role_name`
FROM `conference_sections`
JOIN `conferences` ON `conferences`.`id` = `conference_sections`.`conference_id`
JOIN `class_sections` ON `class_sections`.`id` = `conference_sections`.`cls_section_id`
JOIN `classes` ON `classes`.`id` = `class_sections`.`class_id`
JOIN `sections` ON `sections`.`id` = `class_sections`.`section_id`
JOIN `staff` as `for_create` ON `for_create`.`id` = `conferences`.`staff_id`
JOIN `staff_roles` ON `staff_roles`.`staff_id` = `for_create`.`id`
JOIN `roles` as `for_create_role` ON `for_create_role`.`id` = `staff_roles`.`role_id`
WHERE `class_sections`.`class_id` = '11'
AND `class_sections`.`section_id` = '12'
AND `conferences`.`session_id` = '18'
ORDER BY DATE(`conferences`.`date`) DESC, `conferences`.`date` DESC
ERROR - 2023-05-02 04:35:45 --> Query error: Table 'u649349862_school630.conference_sections' doesn't exist - Invalid query: SELECT `conferences`.*, `classes`.`class`, `sections`.`section`, `for_create`.`name` as `create_for_name`, `for_create`.`surname` as `create_for_surname`, `for_create`.`employee_id` as `for_create_employee_id`, `for_create_role`.`name` as `for_create_role_name`
FROM `conference_sections`
JOIN `conferences` ON `conferences`.`id` = `conference_sections`.`conference_id`
JOIN `class_sections` ON `class_sections`.`id` = `conference_sections`.`cls_section_id`
JOIN `classes` ON `classes`.`id` = `class_sections`.`class_id`
JOIN `sections` ON `sections`.`id` = `class_sections`.`section_id`
JOIN `staff` as `for_create` ON `for_create`.`id` = `conferences`.`staff_id`
JOIN `staff_roles` ON `staff_roles`.`staff_id` = `for_create`.`id`
JOIN `roles` as `for_create_role` ON `for_create_role`.`id` = `staff_roles`.`role_id`
WHERE `class_sections`.`class_id` = '11'
AND `class_sections`.`section_id` = '12'
AND `conferences`.`session_id` = '18'
ORDER BY DATE(`conferences`.`date`) DESC, `conferences`.`date` DESC
ERROR - 2023-05-02 04:39:51 --> Query error: Table 'u649349862_school630.conference_sections' doesn't exist - Invalid query: SELECT `conferences`.*, `classes`.`class`, `sections`.`section`, `for_create`.`name` as `create_for_name`, `for_create`.`surname` as `create_for_surname`, `for_create`.`employee_id` as `for_create_employee_id`, `for_create_role`.`name` as `for_create_role_name`
FROM `conference_sections`
JOIN `conferences` ON `conferences`.`id` = `conference_sections`.`conference_id`
JOIN `class_sections` ON `class_sections`.`id` = `conference_sections`.`cls_section_id`
JOIN `classes` ON `classes`.`id` = `class_sections`.`class_id`
JOIN `sections` ON `sections`.`id` = `class_sections`.`section_id`
JOIN `staff` as `for_create` ON `for_create`.`id` = `conferences`.`staff_id`
JOIN `staff_roles` ON `staff_roles`.`staff_id` = `for_create`.`id`
JOIN `roles` as `for_create_role` ON `for_create_role`.`id` = `staff_roles`.`role_id`
WHERE `class_sections`.`class_id` = '11'
AND `class_sections`.`section_id` = '13'
AND `conferences`.`session_id` = '18'
ORDER BY DATE(`conferences`.`date`) DESC, `conferences`.`date` DESC
ERROR - 2023-05-02 04:51:34 --> Query error: Table 'u649349862_school630.conference_sections' doesn't exist - Invalid query: SELECT `conferences`.*, `classes`.`class`, `sections`.`section`, `for_create`.`name` as `create_for_name`, `for_create`.`surname` as `create_for_surname`, `for_create`.`employee_id` as `for_create_employee_id`, `for_create_role`.`name` as `for_create_role_name`
FROM `conference_sections`
JOIN `conferences` ON `conferences`.`id` = `conference_sections`.`conference_id`
JOIN `class_sections` ON `class_sections`.`id` = `conference_sections`.`cls_section_id`
JOIN `classes` ON `classes`.`id` = `class_sections`.`class_id`
JOIN `sections` ON `sections`.`id` = `class_sections`.`section_id`
JOIN `staff` as `for_create` ON `for_create`.`id` = `conferences`.`staff_id`
JOIN `staff_roles` ON `staff_roles`.`staff_id` = `for_create`.`id`
JOIN `roles` as `for_create_role` ON `for_create_role`.`id` = `staff_roles`.`role_id`
WHERE `class_sections`.`class_id` = '11'
AND `class_sections`.`section_id` = '12'
AND `conferences`.`session_id` = '18'
ORDER BY DATE(`conferences`.`date`) DESC, `conferences`.`date` DESC
ERROR - 2023-05-02 04:53:29 --> Severity: Warning --> Undefined variable $resp /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 833
ERROR - 2023-05-02 04:53:29 --> Severity: Warning --> Undefined variable $resp /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 833
ERROR - 2023-05-02 05:36:00 --> Severity: Warning --> Undefined variable $resp /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 833
ERROR - 2023-05-02 05:36:00 --> Severity: Warning --> Undefined variable $resp /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 833
ERROR - 2023-05-02 05:36:05 --> Severity: Warning --> Undefined variable $resp /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 833
ERROR - 2023-05-02 05:36:05 --> Severity: Warning --> Undefined variable $resp /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 833
ERROR - 2023-05-02 05:36:06 --> Severity: Warning --> Undefined variable $resp /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 833
ERROR - 2023-05-02 05:36:06 --> Severity: Warning --> Undefined variable $resp /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 833
ERROR - 2023-05-02 05:37:37 --> Query error: Table 'u649349862_school630.conference_sections' doesn't exist - Invalid query: SELECT `conferences`.*, `classes`.`class`, `sections`.`section`, `for_create`.`name` as `create_for_name`, `for_create`.`surname` as `create_for_surname`, `for_create`.`employee_id` as `for_create_employee_id`, `for_create_role`.`name` as `for_create_role_name`
FROM `conference_sections`
JOIN `conferences` ON `conferences`.`id` = `conference_sections`.`conference_id`
JOIN `class_sections` ON `class_sections`.`id` = `conference_sections`.`cls_section_id`
JOIN `classes` ON `classes`.`id` = `class_sections`.`class_id`
JOIN `sections` ON `sections`.`id` = `class_sections`.`section_id`
JOIN `staff` as `for_create` ON `for_create`.`id` = `conferences`.`staff_id`
JOIN `staff_roles` ON `staff_roles`.`staff_id` = `for_create`.`id`
JOIN `roles` as `for_create_role` ON `for_create_role`.`id` = `staff_roles`.`role_id`
WHERE `class_sections`.`class_id` = '11'
AND `class_sections`.`section_id` = '12'
AND `conferences`.`session_id` = '18'
ORDER BY DATE(`conferences`.`date`) DESC, `conferences`.`date` DESC
ERROR - 2023-05-02 07:42:55 --> Query error: Table 'u649349862_school630.conference_sections' doesn't exist - Invalid query: SELECT `conferences`.*, `classes`.`class`, `sections`.`section`, `for_create`.`name` as `create_for_name`, `for_create`.`surname` as `create_for_surname`, `for_create`.`employee_id` as `for_create_employee_id`, `for_create_role`.`name` as `for_create_role_name`
FROM `conference_sections`
JOIN `conferences` ON `conferences`.`id` = `conference_sections`.`conference_id`
JOIN `class_sections` ON `class_sections`.`id` = `conference_sections`.`cls_section_id`
JOIN `classes` ON `classes`.`id` = `class_sections`.`class_id`
JOIN `sections` ON `sections`.`id` = `class_sections`.`section_id`
JOIN `staff` as `for_create` ON `for_create`.`id` = `conferences`.`staff_id`
JOIN `staff_roles` ON `staff_roles`.`staff_id` = `for_create`.`id`
JOIN `roles` as `for_create_role` ON `for_create_role`.`id` = `staff_roles`.`role_id`
WHERE `class_sections`.`class_id` = '11'
AND `class_sections`.`section_id` = '12'
AND `conferences`.`session_id` = '18'
ORDER BY DATE(`conferences`.`date`) DESC, `conferences`.`date` DESC
ERROR - 2023-05-02 07:43:24 --> Severity: Warning --> Undefined variable $resp /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 833
ERROR - 2023-05-02 07:43:24 --> Severity: Warning --> Undefined variable $resp /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 833
ERROR - 2023-05-02 08:24:50 --> Query error: Table 'u649349862_school630.conference_sections' doesn't exist - Invalid query: SELECT `conferences`.*, `classes`.`class`, `sections`.`section`, `for_create`.`name` as `create_for_name`, `for_create`.`surname` as `create_for_surname`, `for_create`.`employee_id` as `for_create_employee_id`, `for_create_role`.`name` as `for_create_role_name`
FROM `conference_sections`
JOIN `conferences` ON `conferences`.`id` = `conference_sections`.`conference_id`
JOIN `class_sections` ON `class_sections`.`id` = `conference_sections`.`cls_section_id`
JOIN `classes` ON `classes`.`id` = `class_sections`.`class_id`
JOIN `sections` ON `sections`.`id` = `class_sections`.`section_id`
JOIN `staff` as `for_create` ON `for_create`.`id` = `conferences`.`staff_id`
JOIN `staff_roles` ON `staff_roles`.`staff_id` = `for_create`.`id`
JOIN `roles` as `for_create_role` ON `for_create_role`.`id` = `staff_roles`.`role_id`
WHERE `class_sections`.`class_id` = '11'
AND `class_sections`.`section_id` = '12'
AND `conferences`.`session_id` = '18'
ORDER BY DATE(`conferences`.`date`) DESC, `conferences`.`date` DESC
ERROR - 2023-05-02 09:27:12 --> Query error: Table 'u649349862_school630.conference_sections' doesn't exist - Invalid query: SELECT `conferences`.*, `classes`.`class`, `sections`.`section`, `for_create`.`name` as `create_for_name`, `for_create`.`surname` as `create_for_surname`, `for_create`.`employee_id` as `for_create_employee_id`, `for_create_role`.`name` as `for_create_role_name`
FROM `conference_sections`
JOIN `conferences` ON `conferences`.`id` = `conference_sections`.`conference_id`
JOIN `class_sections` ON `class_sections`.`id` = `conference_sections`.`cls_section_id`
JOIN `classes` ON `classes`.`id` = `class_sections`.`class_id`
JOIN `sections` ON `sections`.`id` = `class_sections`.`section_id`
JOIN `staff` as `for_create` ON `for_create`.`id` = `conferences`.`staff_id`
JOIN `staff_roles` ON `staff_roles`.`staff_id` = `for_create`.`id`
JOIN `roles` as `for_create_role` ON `for_create_role`.`id` = `staff_roles`.`role_id`
WHERE `class_sections`.`class_id` = '11'
AND `class_sections`.`section_id` = '13'
AND `conferences`.`session_id` = '18'
ORDER BY DATE(`conferences`.`date`) DESC, `conferences`.`date` DESC
ERROR - 2023-05-02 11:26:50 --> Severity: Warning --> Undefined variable $resp /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 833
ERROR - 2023-05-02 11:26:50 --> Severity: Warning --> Undefined variable $resp /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 833
ERROR - 2023-05-02 11:47:23 --> Query error: Table 'u649349862_school630.conference_sections' doesn't exist - Invalid query: SELECT `conferences`.*, `classes`.`class`, `sections`.`section`, `for_create`.`name` as `create_for_name`, `for_create`.`surname` as `create_for_surname`, `for_create`.`employee_id` as `for_create_employee_id`, `for_create_role`.`name` as `for_create_role_name`
FROM `conference_sections`
JOIN `conferences` ON `conferences`.`id` = `conference_sections`.`conference_id`
JOIN `class_sections` ON `class_sections`.`id` = `conference_sections`.`cls_section_id`
JOIN `classes` ON `classes`.`id` = `class_sections`.`class_id`
JOIN `sections` ON `sections`.`id` = `class_sections`.`section_id`
JOIN `staff` as `for_create` ON `for_create`.`id` = `conferences`.`staff_id`
JOIN `staff_roles` ON `staff_roles`.`staff_id` = `for_create`.`id`
JOIN `roles` as `for_create_role` ON `for_create_role`.`id` = `staff_roles`.`role_id`
WHERE `class_sections`.`class_id` = '11'
AND `class_sections`.`section_id` = '13'
AND `conferences`.`session_id` = '18'
ORDER BY DATE(`conferences`.`date`) DESC, `conferences`.`date` DESC
ERROR - 2023-05-02 12:37:20 --> Query error: Table 'u649349862_school630.conference_sections' doesn't exist - Invalid query: SELECT `conferences`.*, `classes`.`class`, `sections`.`section`, `for_create`.`name` as `create_for_name`, `for_create`.`surname` as `create_for_surname`, `for_create`.`employee_id` as `for_create_employee_id`, `for_create_role`.`name` as `for_create_role_name`
FROM `conference_sections`
JOIN `conferences` ON `conferences`.`id` = `conference_sections`.`conference_id`
JOIN `class_sections` ON `class_sections`.`id` = `conference_sections`.`cls_section_id`
JOIN `classes` ON `classes`.`id` = `class_sections`.`class_id`
JOIN `sections` ON `sections`.`id` = `class_sections`.`section_id`
JOIN `staff` as `for_create` ON `for_create`.`id` = `conferences`.`staff_id`
JOIN `staff_roles` ON `staff_roles`.`staff_id` = `for_create`.`id`
JOIN `roles` as `for_create_role` ON `for_create_role`.`id` = `staff_roles`.`role_id`
WHERE `class_sections`.`class_id` = '11'
AND `class_sections`.`section_id` = '13'
AND `conferences`.`session_id` = '18'
ORDER BY DATE(`conferences`.`date`) DESC, `conferences`.`date` DESC
ERROR - 2023-05-02 12:37:23 --> Query error: Table 'u649349862_school630.conference_sections' doesn't exist - Invalid query: SELECT `conferences`.*, `classes`.`class`, `sections`.`section`, `for_create`.`name` as `create_for_name`, `for_create`.`surname` as `create_for_surname`, `for_create`.`employee_id` as `for_create_employee_id`, `for_create_role`.`name` as `for_create_role_name`
FROM `conference_sections`
JOIN `conferences` ON `conferences`.`id` = `conference_sections`.`conference_id`
JOIN `class_sections` ON `class_sections`.`id` = `conference_sections`.`cls_section_id`
JOIN `classes` ON `classes`.`id` = `class_sections`.`class_id`
JOIN `sections` ON `sections`.`id` = `class_sections`.`section_id`
JOIN `staff` as `for_create` ON `for_create`.`id` = `conferences`.`staff_id`
JOIN `staff_roles` ON `staff_roles`.`staff_id` = `for_create`.`id`
JOIN `roles` as `for_create_role` ON `for_create_role`.`id` = `staff_roles`.`role_id`
WHERE `class_sections`.`class_id` = '11'
AND `class_sections`.`section_id` = '13'
AND `conferences`.`session_id` = '18'
ORDER BY DATE(`conferences`.`date`) DESC, `conferences`.`date` DESC
ERROR - 2023-05-02 13:14:19 --> Query error: Table 'u649349862_school630.conference_sections' doesn't exist - Invalid query: SELECT `conferences`.*, `classes`.`class`, `sections`.`section`, `for_create`.`name` as `create_for_name`, `for_create`.`surname` as `create_for_surname`, `for_create`.`employee_id` as `for_create_employee_id`, `for_create_role`.`name` as `for_create_role_name`
FROM `conference_sections`
JOIN `conferences` ON `conferences`.`id` = `conference_sections`.`conference_id`
JOIN `class_sections` ON `class_sections`.`id` = `conference_sections`.`cls_section_id`
JOIN `classes` ON `classes`.`id` = `class_sections`.`class_id`
JOIN `sections` ON `sections`.`id` = `class_sections`.`section_id`
JOIN `staff` as `for_create` ON `for_create`.`id` = `conferences`.`staff_id`
JOIN `staff_roles` ON `staff_roles`.`staff_id` = `for_create`.`id`
JOIN `roles` as `for_create_role` ON `for_create_role`.`id` = `staff_roles`.`role_id`
WHERE `class_sections`.`class_id` = '11'
AND `class_sections`.`section_id` = '13'
AND `conferences`.`session_id` = '18'
ORDER BY DATE(`conferences`.`date`) DESC, `conferences`.`date` DESC
ERROR - 2023-05-02 13:16:38 --> Query error: Table 'u649349862_school630.conference_sections' doesn't exist - Invalid query: SELECT `conferences`.*, `classes`.`class`, `sections`.`section`, `for_create`.`name` as `create_for_name`, `for_create`.`surname` as `create_for_surname`, `for_create`.`employee_id` as `for_create_employee_id`, `for_create_role`.`name` as `for_create_role_name`
FROM `conference_sections`
JOIN `conferences` ON `conferences`.`id` = `conference_sections`.`conference_id`
JOIN `class_sections` ON `class_sections`.`id` = `conference_sections`.`cls_section_id`
JOIN `classes` ON `classes`.`id` = `class_sections`.`class_id`
JOIN `sections` ON `sections`.`id` = `class_sections`.`section_id`
JOIN `staff` as `for_create` ON `for_create`.`id` = `conferences`.`staff_id`
JOIN `staff_roles` ON `staff_roles`.`staff_id` = `for_create`.`id`
JOIN `roles` as `for_create_role` ON `for_create_role`.`id` = `staff_roles`.`role_id`
WHERE `class_sections`.`class_id` = '11'
AND `class_sections`.`section_id` = '13'
AND `conferences`.`session_id` = '18'
ORDER BY DATE(`conferences`.`date`) DESC, `conferences`.`date` DESC
