<?php
if (session_status() === PHP_SESSION_NONE) {
    session_start();
}
require_once '../config/Config.php';
require_once '../router/web.php';
$site = new Config();
if (isset($_GET['router'])) {
    $route->viewAdmin($_GET['router']);
} else {
    include('../view/admin/home.php');
}
