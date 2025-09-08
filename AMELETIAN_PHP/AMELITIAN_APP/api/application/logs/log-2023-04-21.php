<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>

ERROR - 2023-04-21 09:06:37 --> 404 Page Not Found: gateway/Stylecss/index
ERROR - 2023-04-21 09:47:57 --> Query error: Table 'u649349862_school630.conference_sections' doesn't exist - Invalid query: SELECT `conferences`.*, `classes`.`class`, `sections`.`section`, `for_create`.`name` as `create_for_name`, `for_create`.`surname` as `create_for_surname`, `for_create`.`employee_id` as `for_create_employee_id`, `for_create_role`.`name` as `for_create_role_name`
FROM `conference_sections`
JOIN `conferences` ON `conferences`.`id` = `conference_sections`.`conference_id`
JOIN `class_sections` ON `class_sections`.`id` = `conference_sections`.`cls_section_id`
JOIN `classes` ON `classes`.`id` = `class_sections`.`class_id`
JOIN `sections` ON `sections`.`id` = `class_sections`.`section_id`
JOIN `staff` as `for_create` ON `for_create`.`id` = `conferences`.`staff_id`
JOIN `staff_roles` ON `staff_roles`.`staff_id` = `for_create`.`id`
JOIN `roles` as `for_create_role` ON `for_create_role`.`id` = `staff_roles`.`role_id`
WHERE `class_sections`.`class_id` = '2'
AND `class_sections`.`section_id` = '4'
AND `conferences`.`session_id` = '18'
ORDER BY DATE(`conferences`.`date`) DESC, `conferences`.`date` DESC
ERROR - 2023-04-21 09:49:58 --> Severity: Warning --> Trying to access array offset on value of type null /home/u649349862/domains/amelitian.com/public_html/api/application/models/Course_model.php 293
ERROR - 2023-04-21 09:49:58 --> Severity: Warning --> Trying to access array offset on value of type null /home/u649349862/domains/amelitian.com/public_html/api/application/models/Course_model.php 293
ERROR - 2023-04-21 09:49:58 --> Severity: Warning --> Trying to access array offset on value of type null /home/u649349862/domains/amelitian.com/public_html/api/application/models/Course_model.php 293
ERROR - 2023-04-21 09:49:58 --> Severity: Warning --> Trying to access array offset on value of type null /home/u649349862/domains/amelitian.com/public_html/api/application/models/Course_model.php 293
ERROR - 2023-04-21 09:50:02 --> Severity: Warning --> Trying to access array offset on value of type null /home/u649349862/domains/amelitian.com/public_html/api/application/models/Course_model.php 293
ERROR - 2023-04-21 09:50:02 --> Severity: Warning --> Trying to access array offset on value of type null /home/u649349862/domains/amelitian.com/public_html/api/application/models/Course_model.php 293
ERROR - 2023-04-21 09:50:02 --> Severity: Warning --> Trying to access array offset on value of type null /home/u649349862/domains/amelitian.com/public_html/api/application/models/Course_model.php 293
ERROR - 2023-04-21 09:50:02 --> Severity: Warning --> Trying to access array offset on value of type null /home/u649349862/domains/amelitian.com/public_html/api/application/models/Course_model.php 293
ERROR - 2023-04-21 10:31:58 --> 404 Page Not Found: gateway/Stylecss/index
ERROR - 2023-04-21 10:58:40 --> 404 Page Not Found: gateway/Stylecss/index
ERROR - 2023-04-21 11:15:19 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2005
ERROR - 2023-04-21 11:15:21 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2005
ERROR - 2023-04-21 11:15:26 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2005
ERROR - 2023-04-21 11:15:28 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2005
ERROR - 2023-04-21 11:15:30 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2005
ERROR - 2023-04-21 11:39:03 --> Severity: Warning --> Trying to access array offset on value of type null /home/u649349862/domains/amelitian.com/public_html/api/application/models/Course_model.php 29
ERROR - 2023-04-21 11:42:28 --> Severity: Warning --> Trying to access array offset on value of type null /home/u649349862/domains/amelitian.com/public_html/api/application/models/Course_model.php 29
