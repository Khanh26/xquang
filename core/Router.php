<?php
require_once '../config/Config.php';
require_once '../router/web.php';
class Route
{
    public $Route = [];

    public function add($nameRoute, $view)
    {
        array_push($this->Route, [
            'nameRoute' => trim($nameRoute),
            'fileView' => trim($view),
        ]);
    }

    public function getAll()
    {
        return $this->Route;
    }

    public function getFileViewByName($nameRoute)
    {
        foreach ($this->Route as $key => $value) {
            if ($value['nameRoute'] == $nameRoute) {
                return $value['fileView'];
            }
        }
    }

    public function isExistRoute($nameRoute)
    {
        foreach ($this->Route as $key => $value) {
            if ($value['nameRoute'] == $nameRoute) {
                return true;
            }
        }
        return false;
    }

    public function getCurrentRoute()
    {
        if (isset($_GET['router'])) {
            return $_GET['router'];
        } else {
            return 'home';
        }
    }

    public function viewClient($nameRoute)
    {
        if ($this->isExistRoute($nameRoute) && file_exists('./view/client/' . $this->getFileViewByName($nameRoute))) {
            $site = new Config();
            $route = new Route();
            include_once './view/client/' . $this->getFileViewByName($nameRoute);
        } else {

            include_once './view/error/page404.php';
        }
    }

    public function viewAdmin($nameRoute)
    {
        if ($this->isExistRoute($nameRoute) && file_exists('../view/admin/' . $this->getFileViewByName($nameRoute))) {
            $site = new Config();
            $route = new Route();
            include_once '../view/admin/' . $this->getFileViewByName($nameRoute);
        } else {

            include_once '../view/error/page404.php';
        }
    }
}
