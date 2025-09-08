<?php

require '../core.php';

$secretKey = $settings['st_recaptchasecretkey'];

if ($_POST){

    $array = array('contactName' => '',
        'contactPhone' => '',
        'contactMessage' => '',
        'contactEmail' => '',
        'isChecked' => '',
        'recaptcha' => '',
        'error' => '');

    $verifyCaptcha = $_POST['recaptcha'];
    $verifyCaptcha = $_POST['recaptcha'];
    $propertyRef = filter_var($_POST["ref"], FILTER_SANITIZE_STRING);
    $propertyUrl = filter_var($_POST["url"], FILTER_SANITIZE_URL);
	$contactName = filter_var($_POST["name"], FILTER_SANITIZE_STRING);
	$contactPhone = filter_var($_POST["phone"], FILTER_SANITIZE_STRING);
	$contactMessage = filter_var($_POST["message"], FILTER_SANITIZE_STRING);
	$contactEmail = filter_var(strtolower($_POST['email']), FILTER_SANITIZE_STRING);
    $isChecked = $_POST['ischecked'];

    $recaptchaUrl = "https://www.google.com/recaptcha/api/siteverify?secret=$secretKey&response=$verifyCaptcha";
    
    $verify = json_decode(file_get_contents($recaptchaUrl));

    if (!$verify->success) {

            $array['recaptcha'] = $translation['tr_161'];

    }else{

        if (empty($contactName)) {
            $array['contactName'] = $translation['tr_159'];
        }

        if (empty($contactEmail)) {
            $array['contactEmail'] = $translation['tr_158'];
        } elseif (!filter_var($contactEmail, FILTER_VALIDATE_EMAIL)) {
            $array['contactEmail'] = $translation['tr_163'];
        }

        if (empty($contactPhone)) {
            $array['contactPhone'] = 'Invalid Phone';
        }

        if (empty($contactMessage)) {
            $array['contactMessage'] = $translation['tr_169'];
        }

        if (empty($isChecked) || $isChecked != 'true') {
            $array['isChecked'] = $translation['tr_173'];
        }

        $filterArray = array_filter($array);

        if (count($filterArray) != 0) {

                $array['error'] = $translation['tr_168'];
                echo json_encode($array);

        }else{


                // Get form data
                $user_name = $_POST['name'];
                $user_email = $_POST['email'];
                $user_phone = $_POST['phone'];
                $user_message = $_POST['message'];
                $link = $_POST['url'];

                // Prepare the SQL statement
                $statement = $connect->prepare("INSERT INTO leads (name, email, phone, msg, link) 
                                                VALUES (:name, :email, :phone, :msg, :link)");

                // Bind parameters and execute the query
                $statement->execute(array(
                    ':name' => $user_name,
                    ':email' => $user_email,
                    ':phone' => $user_phone,
                    ':msg' => $user_message,
                    ':link' => $link
                ));

          

        $array_content = array("{LOGO_URL}" => $urlPath->image($theme['th_logo']),
                               "{SITE_DOMAIN}" => $urlPath->home(), 
                               "{SITE_NAME}" => $translation['tr_1'], 
                               "{USER_NAME}" => $contactName, 
                               "{USER_EMAIL}" => $contactEmail, 
                               "{USER_PHONE}" => $contactPhone, 
                               "{USER_MESSAGE}" => $contactMessage,
                               "{PROPERTY_REFERENCE}" => $propertyRef, 
                               "{PROPERTY_URL}" => $propertyUrl
                                );

        $emailTemplate = getEmailTemplate($connect, 5);

        if ($emailTemplate) {

            $emailContent = json_decode($emailTemplate['email_content'],true);

            $mail = sendMail($array_content, $emailContent[0]['message'], $settings['st_recipientemail'], $emailTemplate['email_fromname'], $emailContent[0]['subject'], $emailTemplate['email_plaintext']);

            if ($mail == TRUE) {

                echo json_encode($array);

            }else{

                $array['error'] = $translation['tr_168'];
                echo json_encode($array);
            }

        }else{
                
                $array['error'] = $translation['tr_168'];
                echo json_encode($array);
        }

      }
    }
}

?>