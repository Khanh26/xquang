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
        $queryBacsi = "SELECT * FROM `bacsi`, chuyenkhoa, noilamviec, quyen, phuongxa, quanhuyen, tinhtp
        WHERE bacsi.CK_ID = chuyenkhoa.CK_ID 
        AND bacsi.NLV_ID = noilamviec.NLV_ID 
        AND bacsi.QUYEN_ID = quyen.QUYEN_ID
        AND bacsi.PX_ID = phuongxa.PX_ID
        AND phuongxa.QH_ID = quanhuyen.QH_ID
        AND quanhuyen.TINHTP_ID = tinhtp.TINHTP_ID";

        $queryBangCap = "SELECT * FROM `bangcap`, noicapbang, chuyennganh
        WHERE bangcap.NCB_ID = noicapbang.NCB_ID
        AND bangcap.CN_ID = chuyennganh.CN_ID
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

    public function updateStatus($id, $status)
    {
        $queryUpdate = "UPDATE `bacsi` SET `BS_TRANGTHAI` = ? WHERE `bacsi`.`BS_ID` = ?";
        $bacsi = $this->update($queryUpdate, [$status, $id]);
        if ($bacsi) {
            return true;
        } else {
            return false;
        }
    }

    public function getOne($id)
    {
        $data = [];
        $queryBacsi = "SELECT * FROM `bacsi`, chuyenkhoa, noilamviec, quyen, phuongxa, quanhuyen, tinhtp 
        WHERE bacsi.CK_ID = chuyenkhoa.CK_ID 
        AND bacsi.NLV_ID = noilamviec.NLV_ID 
        AND bacsi.QUYEN_ID = quyen.QUYEN_ID
        AND bacsi.PX_ID = phuongxa.PX_ID
        AND phuongxa.QH_ID = quanhuyen.QH_ID
        AND quanhuyen.TINHTP_ID = tinhtp.TINHTP_ID
        AND bacsi.BS_ID = ?";

        $queryBangCap = "SELECT * FROM `bangcap`, noicapbang, chuyennganh, phuongxa, quanhuyen, tinhtp
        WHERE bangcap.NCB_ID = noicapbang.NCB_ID
        AND bangcap.CN_ID = chuyennganh.CN_ID
        AND noicapbang.PX_ID = phuongxa.PX_ID
        AND phuongxa.QH_ID = quanhuyen.QH_ID
        AND quanhuyen.TINHTP_ID = tinhtp.TINHTP_ID
        AND bangcap.BS_ID = ?";

        $bacsi = $this->findOne($queryBacsi, [$id]);
        if ($bacsi) {
            $bangcap = $this->find($queryBangCap, [$bacsi['BS_ID']]);
            if ($bangcap) {
                $bacsi['BANGCAP'] = $bangcap;
                array_push($data, $bacsi);
            } else {
                return 'error';
            }
            return $data[0];
        } else {
            return 'error';
        }
    }
}
