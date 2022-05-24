<?php 
class Config {
    public $baseSite = 'http://localhost/xquang';
    public function baseSite() {
        echo  $this->baseSite;
    }
    public function public() {
        echo  $this->baseSite.'/public';
    }
}
?>