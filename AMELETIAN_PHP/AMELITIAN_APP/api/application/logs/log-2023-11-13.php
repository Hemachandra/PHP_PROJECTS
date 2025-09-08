<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>

ERROR - 2023-11-13 02:21:46 --> Query error: Table 'u649349862_school630.conference_sections' doesn't exist - Invalid query: SELECT `conferences`.*, `classes`.`class`, `sections`.`section`, `for_create`.`name` as `create_for_name`, `for_create`.`surname` as `create_for_surname`, `for_create`.`employee_id` as `for_create_employee_id`, `for_create_role`.`name` as `for_create_role_name`
FROM `conference_sections`
JOIN `conferences` ON `conferences`.`id` = `conference_sections`.`conference_id`
JOIN `class_sections` ON `class_sections`.`id` = `conference_sections`.`cls_section_id`
JOIN `classes` ON `classes`.`id` = `class_sections`.`class_id`
JOIN `sections` ON `sections`.`id` = `class_sections`.`section_id`
JOIN `staff` as `for_create` ON `for_create`.`id` = `conferences`.`staff_id`
JOIN `staff_roles` ON `staff_roles`.`staff_id` = `for_create`.`id`
JOIN `roles` as `for_create_role` ON `for_create_role`.`id` = `staff_roles`.`role_id`
WHERE `class_sections`.`class_id` = '12'
AND `class_sections`.`section_id` = '34'
AND `conferences`.`session_id` = '18'
ORDER BY DATE(`conferences`.`date`) DESC, `conferences`.`date` DESC
ERROR - 2023-11-13 02:22:10 --> Severity: Warning --> Undefined variable $resp /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 833
ERROR - 2023-11-13 02:22:10 --> Severity: Warning --> Undefined variable $resp /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 833
ERROR - 2023-11-13 03:09:46 --> Severity: Warning --> Undefined variable $resp /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 833
ERROR - 2023-11-13 03:09:46 --> Severity: Warning --> Undefined variable $resp /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 833
ERROR - 2023-11-13 03:10:41 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-11-13 03:10:45 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-11-13 03:10:55 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-11-13 03:11:19 --> 404 Page Not Found: gateway/Stylecss/index
ERROR - 2023-11-13 04:03:15 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-11-13 08:19:48 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-11-13 08:19:51 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-11-13 09:09:15 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-11-13 11:38:01 --> 404 Page Not Found: gateway/Stylecss/index
ERROR - 2023-11-13 11:40:16 --> Severity: Warning --> Trying to access array offset on value of type null /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/gateway/Paytm.php 94
ERROR - 2023-11-13 11:40:16 --> Severity: Warning --> Attempt to read property "fine_amount" on null /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/gateway/Paytm.php 94
ERROR - 2023-11-13 11:40:16 --> Severity: Warning --> Trying to access array offset on value of type null /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/gateway/Paytm.php 94
ERROR - 2023-11-13 11:40:16 --> Severity: Warning --> Trying to access array offset on value of type null /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/gateway/Paytm.php 97
ERROR - 2023-11-13 11:40:16 --> Severity: Warning --> Trying to access array offset on value of type null /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/gateway/Paytm.php 100
ERROR - 2023-11-13 11:40:16 --> Severity: Warning --> Attempt to read property "fine_amount" on null /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/gateway/Paytm.php 100
ERROR - 2023-11-13 11:40:16 --> Severity: Warning --> Trying to access array offset on value of type null /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/gateway/Paytm.php 107
ERROR - 2023-11-13 11:40:16 --> Severity: Warning --> Trying to access array offset on value of type null /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/gateway/Paytm.php 108
ERROR - 2023-11-13 11:40:16 --> Severity: Warning --> Trying to access array offset on value of type null /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/gateway/Paytm.php 111
ERROR - 2023-11-13 11:40:16 --> Query error: You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 1 - Invalid query: SELECT feetype.* FROM `fee_groups_feetype` join feetype on (feetype.id=fee_groups_feetype.feetype_id) WHERE fee_groups_feetype.id = 
ERROR - 2023-11-13 13:03:59 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-11-13 13:03:59 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-11-13 13:09:15 --> Query error: Table 'u649349862_school630.conference_sections' doesn't exist - Invalid query: SELECT `conferences`.*, `classes`.`class`, `sections`.`section`, `for_create`.`name` as `create_for_name`, `for_create`.`surname` as `create_for_surname`, `for_create`.`employee_id` as `for_create_employee_id`, `for_create_role`.`name` as `for_create_role_name`
FROM `conference_sections`
JOIN `conferences` ON `conferences`.`id` = `conference_sections`.`conference_id`
JOIN `class_sections` ON `class_sections`.`id` = `conference_sections`.`cls_section_id`
JOIN `classes` ON `classes`.`id` = `class_sections`.`class_id`
JOIN `sections` ON `sections`.`id` = `class_sections`.`section_id`
JOIN `staff` as `for_create` ON `for_create`.`id` = `conferences`.`staff_id`
JOIN `staff_roles` ON `staff_roles`.`staff_id` = `for_create`.`id`
JOIN `roles` as `for_create_role` ON `for_create_role`.`id` = `staff_roles`.`role_id`
WHERE `class_sections`.`class_id` = '8'
AND `class_sections`.`section_id` = '39'
AND `conferences`.`session_id` = '18'
ORDER BY DATE(`conferences`.`date`) DESC, `conferences`.`date` DESC
ERROR - 2023-11-13 14:17:02 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-11-13 14:17:13 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-11-13 15:20:36 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-11-13 16:29:34 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-11-13 16:31:51 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-11-13 16:33:59 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-11-13 16:34:05 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-11-13 16:34:09 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-11-13 16:34:13 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-11-13 16:34:17 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-11-13 16:34:21 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-11-13 16:34:26 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-11-13 16:34:34 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-11-13 16:34:36 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-11-13 23:46:00 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
