<?php
require_once __DIR__ . '../../../model/Bacsi.php';
$Bacsi = new Bacsi();
if(isset($_POST['id']) && isset($_POST['status'])) {
    if($Bacsi->updateStatus($_POST['id'],$_POST['status'])) {
        $Bacsi->responseJson(['message' => 'success']);
    } else {
        $Bacsi->responseJson(['message' => 'error']);
    }
} else {
    $Bacsi->responseJson(['message' => 'error']);
}