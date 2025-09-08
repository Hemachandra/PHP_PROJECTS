<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>

ERROR - 2023-04-01 08:18:44 --> 404 Page Not Found: gateway/Stylecss/index
ERROR - 2023-04-01 08:23:44 --> Severity: Warning --> Trying to access array offset on value of type null /home/u649349862/domains/amelitian.com/public_html/api/application/models/Course_model.php 29
ERROR - 2023-04-01 11:22:35 --> 404 Page Not Found: gateway/Stylecss/index
ERROR - 2023-04-01 11:24:40 --> 404 Page Not Found: gateway/Stylecss/index
ERROR - 2023-04-01 11:56:11 --> 404 Page Not Found: gateway/Stylecss/index
ERROR - 2023-04-01 11:59:24 --> Query error: Table 'u649349862_school630.conference_sections' doesn't exist - Invalid query: SELECT `conferences`.*, `classes`.`class`, `sections`.`section`, `for_create`.`name` as `create_for_name`, `for_create`.`surname` as `create_for_surname`, `for_create`.`employee_id` as `for_create_employee_id`, `for_create_role`.`name` as `for_create_role_name`
FROM `conference_sections`
JOIN `conferences` ON `conferences`.`id` = `conference_sections`.`conference_id`
JOIN `class_sections` ON `class_sections`.`id` = `conference_sections`.`cls_section_id`
JOIN `classes` ON `classes`.`id` = `class_sections`.`class_id`
JOIN `sections` ON `sections`.`id` = `class_sections`.`section_id`
JOIN `staff` as `for_create` ON `for_create`.`id` = `conferences`.`staff_id`
JOIN `staff_roles` ON `staff_roles`.`staff_id` = `for_create`.`id`
JOIN `roles` as `for_create_role` ON `for_create_role`.`id` = `staff_roles`.`role_id`
WHERE `class_sections`.`class_id` = '10'
AND `class_sections`.`section_id` = '6'
AND `conferences`.`session_id` = '18'
ORDER BY DATE(`conferences`.`date`) DESC, `conferences`.`date` DESC
ERROR - 2023-04-01 12:00:19 --> Severity: Warning --> Undefined variable $resp /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 833
ERROR - 2023-04-01 12:00:19 --> Severity: Warning --> Undefined variable $resp /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 833
