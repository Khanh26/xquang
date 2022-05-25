<?php
require_once __DIR__ . '../../../model/Bacsi.php';
$Bacsi = new Bacsi();
$Bacsi->responseJson($Bacsi->getAll());