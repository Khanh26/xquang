<?php
if (file_exists("./core/Model.php'")) {
    require_once './core/Model.php';
} else {
    require_once '../../core/Model.php';
};
class Bacsi extends Model
{
    public function getAll()
    {
        $data = [];
        $queryBacsi = "SELECT * FROM `bacsi`, chuyenkhoa, noilamviec, quyen 
        WHERE bacsi.CK_ID = chuyenkhoa.CK_ID 
        AND bacsi.NLV_ID = noilamviec.NLV_ID 
        AND bacsi.QUYEN_ID = quyen.QUYEN_ID";

        $queryBangCap = "SELECT * FROM `bangcap`, noicapbang 
        WHERE bangcap.NCB_ID = noicapbang.NCB_ID 
        AND bangcap.BS_ID = ?";

        $bacsi = $this->find($queryBacsi);
        if ($bacsi) {
            foreach ($bacsi as $item) {
                $bangcap = $this->find($queryBangCap, [$item['BS_ID']]);
                if ($bangcap) {
                    $item['BANGCAP'] = $bangcap;
                    array_push($data, $item);
                } else {
                    return 'error';
                }
            }
            return $data;
        } else {
            return 'error';
        }
    }

    public function updateStatus($id, $status) {
        $queryUpdate = "UPDATE `bacsi` SET `BS_TRANGTHAI` = ? WHERE `bacsi`.`BS_ID` = ?";
        $bacsi = $this->update($queryUpdate,[$status, $id]);
        if($bacsi) {
            return true;
        } else {
            return false;
        }
    }
}
