<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>

ERROR - 2023-09-10 01:43:29 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-09-10 01:43:47 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-09-10 01:56:32 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-09-10 01:56:41 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-09-10 02:21:53 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-09-10 02:22:17 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-09-10 02:22:20 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-09-10 03:01:52 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-09-10 03:09:55 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-09-10 04:55:05 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-09-10 05:11:07 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-09-10 06:15:33 --> Severity: Warning --> Undefined variable $resp /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 833
ERROR - 2023-09-10 06:15:33 --> Severity: Warning --> Undefined variable $resp /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 833
ERROR - 2023-09-10 06:32:08 --> 404 Page Not Found: gateway/Stylecss/index
ERROR - 2023-09-10 06:32:34 --> Severity: Warning --> Undefined variable $resp /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 833
ERROR - 2023-09-10 06:32:34 --> Severity: Warning --> Undefined variable $resp /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 833
ERROR - 2023-09-10 06:41:53 --> Query error: Table 'u649349862_school630.conference_sections' doesn't exist - Invalid query: SELECT `conferences`.*, `classes`.`class`, `sections`.`section`, `for_create`.`name` as `create_for_name`, `for_create`.`surname` as `create_for_surname`, `for_create`.`employee_id` as `for_create_employee_id`, `for_create_role`.`name` as `for_create_role_name`
FROM `conference_sections`
JOIN `conferences` ON `conferences`.`id` = `conference_sections`.`conference_id`
JOIN `class_sections` ON `class_sections`.`id` = `conference_sections`.`cls_section_id`
JOIN `classes` ON `classes`.`id` = `class_sections`.`class_id`
JOIN `sections` ON `sections`.`id` = `class_sections`.`section_id`
JOIN `staff` as `for_create` ON `for_create`.`id` = `conferences`.`staff_id`
JOIN `staff_roles` ON `staff_roles`.`staff_id` = `for_create`.`id`
JOIN `roles` as `for_create_role` ON `for_create_role`.`id` = `staff_roles`.`role_id`
WHERE `class_sections`.`class_id` = '7'
AND `class_sections`.`section_id` = '6'
AND `conferences`.`session_id` = '18'
ORDER BY DATE(`conferences`.`date`) DESC, `conferences`.`date` DESC
ERROR - 2023-09-10 06:43:17 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-09-10 07:36:31 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-09-10 07:48:03 --> Severity: Warning --> Undefined variable $resp /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 833
ERROR - 2023-09-10 07:48:03 --> Severity: Warning --> Undefined variable $resp /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 833
ERROR - 2023-09-10 09:12:09 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-09-10 09:16:10 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-09-10 09:42:54 --> 404 Page Not Found: gateway/Stylecss/index
ERROR - 2023-09-10 09:43:52 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-09-10 09:43:56 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-09-10 10:27:50 --> Severity: Warning --> Undefined variable $resp /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 833
ERROR - 2023-09-10 10:27:50 --> Severity: Warning --> Undefined variable $resp /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 833
ERROR - 2023-09-10 11:44:12 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-09-10 12:11:50 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-09-10 12:55:10 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-09-10 13:13:10 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-09-10 13:13:17 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-09-10 13:13:31 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-09-10 13:16:23 --> 404 Page Not Found: gateway/Stylecss/index
ERROR - 2023-09-10 14:05:26 --> Severity: Warning --> Undefined variable $resp /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 833
ERROR - 2023-09-10 14:05:26 --> Severity: Warning --> Undefined variable $resp /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 833
ERROR - 2023-09-10 14:17:06 --> Severity: error --> Exception: Division by zero /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/Webservice.php 2006
ERROR - 2023-09-10 17:02:06 --> 404 Page Not Found: gateway/Stylecss/index
ERROR - 2023-09-10 17:04:23 --> Severity: Warning --> Trying to access array offset on value of type null /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/gateway/Paytm.php 94
ERROR - 2023-09-10 17:04:23 --> Severity: Warning --> Attempt to read property "fine_amount" on null /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/gateway/Paytm.php 94
ERROR - 2023-09-10 17:04:23 --> Severity: Warning --> Trying to access array offset on value of type null /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/gateway/Paytm.php 94
ERROR - 2023-09-10 17:04:23 --> Severity: Warning --> Trying to access array offset on value of type null /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/gateway/Paytm.php 97
ERROR - 2023-09-10 17:04:23 --> Severity: Warning --> Trying to access array offset on value of type null /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/gateway/Paytm.php 100
ERROR - 2023-09-10 17:04:23 --> Severity: Warning --> Attempt to read property "fine_amount" on null /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/gateway/Paytm.php 100
ERROR - 2023-09-10 17:04:23 --> Severity: Warning --> Trying to access array offset on value of type null /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/gateway/Paytm.php 107
ERROR - 2023-09-10 17:04:23 --> Severity: Warning --> Trying to access array offset on value of type null /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/gateway/Paytm.php 108
ERROR - 2023-09-10 17:04:23 --> Severity: Warning --> Trying to access array offset on value of type null /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/gateway/Paytm.php 111
ERROR - 2023-09-10 17:04:23 --> Query error: You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 1 - Invalid query: SELECT feetype.* FROM `fee_groups_feetype` join feetype on (feetype.id=fee_groups_feetype.feetype_id) WHERE fee_groups_feetype.id = 
ERROR - 2023-09-10 17:06:30 --> 404 Page Not Found: gateway/Stylecss/index
ERROR - 2023-09-10 17:07:06 --> 404 Page Not Found: gateway/Stylecss/index
ERROR - 2023-09-10 17:08:20 --> Severity: Warning --> Trying to access array offset on value of type null /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/gateway/Paytm.php 94
ERROR - 2023-09-10 17:08:20 --> Severity: Warning --> Attempt to read property "fine_amount" on null /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/gateway/Paytm.php 94
ERROR - 2023-09-10 17:08:20 --> Severity: Warning --> Trying to access array offset on value of type null /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/gateway/Paytm.php 94
ERROR - 2023-09-10 17:08:20 --> Severity: Warning --> Trying to access array offset on value of type null /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/gateway/Paytm.php 97
ERROR - 2023-09-10 17:08:20 --> Severity: Warning --> Trying to access array offset on value of type null /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/gateway/Paytm.php 100
ERROR - 2023-09-10 17:08:20 --> Severity: Warning --> Attempt to read property "fine_amount" on null /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/gateway/Paytm.php 100
ERROR - 2023-09-10 17:08:20 --> Severity: Warning --> Trying to access array offset on value of type null /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/gateway/Paytm.php 107
ERROR - 2023-09-10 17:08:20 --> Severity: Warning --> Trying to access array offset on value of type null /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/gateway/Paytm.php 108
ERROR - 2023-09-10 17:08:20 --> Severity: Warning --> Trying to access array offset on value of type null /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/gateway/Paytm.php 111
ERROR - 2023-09-10 17:08:20 --> Query error: You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 1 - Invalid query: SELECT feetype.* FROM `fee_groups_feetype` join feetype on (feetype.id=fee_groups_feetype.feetype_id) WHERE fee_groups_feetype.id = 
ERROR - 2023-09-10 17:09:02 --> 404 Page Not Found: gateway/Stylecss/index
ERROR - 2023-09-10 17:10:20 --> Severity: Warning --> Trying to access array offset on value of type null /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/gateway/Paytm.php 94
ERROR - 2023-09-10 17:10:20 --> Severity: Warning --> Attempt to read property "fine_amount" on null /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/gateway/Paytm.php 94
ERROR - 2023-09-10 17:10:20 --> Severity: Warning --> Trying to access array offset on value of type null /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/gateway/Paytm.php 94
ERROR - 2023-09-10 17:10:20 --> Severity: Warning --> Trying to access array offset on value of type null /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/gateway/Paytm.php 97
ERROR - 2023-09-10 17:10:20 --> Severity: Warning --> Trying to access array offset on value of type null /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/gateway/Paytm.php 100
ERROR - 2023-09-10 17:10:20 --> Severity: Warning --> Attempt to read property "fine_amount" on null /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/gateway/Paytm.php 100
ERROR - 2023-09-10 17:10:20 --> Severity: Warning --> Trying to access array offset on value of type null /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/gateway/Paytm.php 107
ERROR - 2023-09-10 17:10:20 --> Severity: Warning --> Trying to access array offset on value of type null /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/gateway/Paytm.php 108
ERROR - 2023-09-10 17:10:20 --> Severity: Warning --> Trying to access array offset on value of type null /home/u649349862/domains/amelitian.com/public_html/api/application/controllers/gateway/Paytm.php 111
ERROR - 2023-09-10 17:10:20 --> Query error: You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 1 - Invalid query: SELECT feetype.* FROM `fee_groups_feetype` join feetype on (feetype.id=fee_groups_feetype.feetype_id) WHERE fee_groups_feetype.id = 
