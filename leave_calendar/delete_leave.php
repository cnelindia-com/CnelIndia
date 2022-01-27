<?php
include('config.php');

$data_para = $_REQUEST;
$ticket_user_id = $data_para['ticket_user_id'];

$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => base_url.'api.php?action=leave_delete&key='.$api_token,
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => '',
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 0,
  CURLOPT_FOLLOWLOCATION => true,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => 'POST',
  CURLOPT_POSTFIELDS => array('ticket_user_id' => $ticket_user_id),
  CURLOPT_HTTPHEADER => array(
    'Cookie: PHPSESSID=05694b4cb480ea5c72d523645e468f92'
  ),
));

$response = curl_exec($curl);

curl_close($curl);
$response = json_decode($response);
echo $response->message;
die();
?>
?>