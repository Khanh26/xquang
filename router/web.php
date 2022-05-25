<?php
require_once __DIR__.'../../core/Router.php';
$route = new Route();
$route->add('quan-ly-bac-si','doctorManagement.php');
$route->add('quan-ly-mo-hinh','modelManagement.php');
$route->add('test','test.php');
// $route->add('','doctorManagement.php');