<?php 
require_once './config/dbConnect.php';
class Model extends dbConnect {
    public function responseJson($data)
    {
        header('Content-Type: application/json; charset=utf-8');
        echo json_encode($data);
    }
}
