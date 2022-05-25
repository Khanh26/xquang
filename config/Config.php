<?php 
class Config {
    public $baseSite = 'http://localhost/predictMedicine';
    public function baseSite() {
        echo  $this->baseSite;
    }
    public function public() {
        echo  $this->baseSite.'/public';
    }
}
?>