<?php
$payload = "username=www3&password=www";

$url = "https://rian-2007.000webhostapp.com/rest_android/login.php";

$ch1 = curl_init($url);
curl_setopt($ch1, CURLOPT_SSL_VERIFYHOST, 0);
curl_setopt($ch1, CURLOPT_SSL_VERIFYPEER, 0);
curl_setopt($ch1, CURLOPT_POST, 1);
curl_setopt($ch1, CURLOPT_POSTFIELDS, $payload);
curl_setopt($ch1, CURLOPT_RETURNTRANSFER, 1);
curl_setopt($ch1, CURLOPT_FOLLOWLOCATION, 1);
//curl_setopt($ch1, CURLOPT_HEADER, 1);
curl_setopt($ch1, CURLOPT_HTTPHEADER, array('Content-Type: application/x-www-form-urlencoded'));
$result = curl_exec($ch1);
echo $result;
curl_close($ch1);
?>