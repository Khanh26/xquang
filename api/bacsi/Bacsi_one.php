<?php
require_once __DIR__ . '../../../model/Bacsi.php';
$Bacsi = new Bacsi();
if(isset($_GET['id'])) {
    $Bacsi->responseJson($Bacsi->getOne($_GET['id']));
}