<?php 
if(file_exists("./core/Model.php'")) {
    require_once './config/dbConnect.php';
} else {
    require_once '../../config/dbConnect.php';
}
class Model extends dbConnect {

    public function find($sql, $array = null) {
        $query = $this->connect()->prepare($sql);
        $query->setFetchMode(PDO::FETCH_ASSOC);
        if ($query->execute($array)) {
            return $query->fetchAll();
        } else {
            return false;
        }
    }

    public function update($sql, $array = null) {
        $query = $this->connect()->prepare($sql);
        $query->setFetchMode(PDO::FETCH_ASSOC);
        if ($query->execute($array)) {
            return true;
        } else {
            return false;
        }
    }

    public function findOne($sql, $array = null) {
        $query = $this->connect()->prepare($sql);
        $query->setFetchMode(PDO::FETCH_ASSOC);
        if ($query->execute($array)) {
            return $query->fetch();
        } else {
            return false;
        }
    }

    public function responseJson($data)
    {
        header('Content-Type: application/json; charset=utf-8');
        echo json_encode($data);
    }
}
