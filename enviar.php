<?php
	$correodestino = strip_tags($_POST["direccion"]);
	$t=strip_tags($_POST["tab"]);


	require 'PHPMailer/PHPMailerAutoload.php';
	
	$mail = new PHPMailer();

	$mail->isSMTP();
	$mail->SMTPAuth = true;
	$mail->SMTPSecure = 'tls';
	$mail->Host = 'smtp.gmail.com';
	$mail->Port = 587;
	$mail->SMTPOptions = array(
		'ssl' => array(
		'verify_peer' => false,
		'verify_peer_name' => false,
		'allow_self_signed' => true
		)
	);
	
	$mail->Username = 'testmetodosnumericosraices@gmail.com'; //Correo de donde enviaremos los correos
	$mail->Password = 'TestMetodosNumericosRaices0912873465'; // Password del correo de envío
	
	$mail->setFrom('testmetodosnumericosraices@gmail.com', 'Test Vocacional');//emisor
	$mail->addAddress($correodestino, 'Receptor'); //Correo receptor
	
	$mail->Subject = 'Resultados de su Test';

	
    $array = explode("#", $t);
    $can=count($array);

    $i=0;
    $contenido="";
	while ($i< $can) {
		$contenido=$contenido.$array[$i] ."\n";
		$i++;
	}

	$mail->Body = $contenido;
	
	if($mail->send()) {
		echo "\n Correo enviado ";
	}else{
		echo "\nError al enviar correo";
	}



?>

