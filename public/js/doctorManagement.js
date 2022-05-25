const tbody = document.querySelector('#data-doctor');
const modalBody = document.querySelector('#modal-view-doctor');
function renderTable(array) {
    let html = array.map((item) => {
        return `
        <tr>
            <td>${item.BS_HOTEN}</td>
            <td>${new Date(item.BS_NGAYSINH).getDate() + "/" + (new Date(item.BS_NGAYSINH).getMonth() + 1) + "/" + new Date(item.BS_NGAYSINH).getFullYear()}</td>
            <td>${item.CK_TEN}</td>
            <td>${item.NLV_TEN}</td>
            <td>${item.BS_TRANGTHAI == 1 ? '<p class="text-success">Đang hoạt động</p>' : '<p class="text-danger">Đã khoá</p>'}</td>
            <td>
            
            <button class="btn btn-${item.BS_TRANGTHAI == 1 ? 'danger' : 'success'} btnUpdateStatus" value="${item.BS_ID}-${item.BS_TRANGTHAI}" title="Cập nhật trạng thái"><i class="fas ${item.BS_TRANGTHAI == 1 ? 'fa-lock' : 'fa-lock-open'}"></i></button>
            <button class="btn btn-primary btnView" value="${item.BS_ID}" data-toggle="modal" data-target="#viewDoctor" title="Xem chi tiết"><i class="fas fa-eye"></i></button>
            </td>
        </tr>
        `
    }).join('');
    return html;
}

function renderDetail(doctor) {
    let htmlBC = doctor.BANGCAP.map((item) => {
        return `
        <h6>Chuyên ngành: ${item.CN_TEN}</h6>
        <div class="ml-5">
            <div class="row">
                <h6 class="col col-4">Số hiệu:</h6>
                <p class="col col-6 ml-auto">${item.SOHIEU}</p>
            </div>
            <div class="row">
                <h6 class="col col-4">Ngày cấp:</h6>
                <p class="col col-6 ml-auto">${new Date(item.NGAYCAP).getDate() + "/" + (new Date(item.NGAYCAP).getMonth() + 1) + "/" + new Date(item.NGAYCAP).getFullYear()}</p>
            </div>
            <div class="row">
                <h6 class="col col-4">Nơi cấp:</h6>
                <p class="col col-6 ml-auto">${item.NCB_TEN}, ${item.NCB_DIACHI}, ${item.PX_TEN}, ${item.QH_TEN}, ${item.TINHTP_TEN}</p>
            </div>
            <div class="row">
                <h6 class="col col-4">Email nơi cấp:</h6>
                <p class="col col-6 ml-auto">${item.NCB_EMAIL}</p>
            </div>
            <div class="row">
                <h6 class="col col-4">SĐT nơi cấp:</h6>
                <p class="col col-6 ml-auto">${item.NCB_SDT}</p>
            </div>
        </div>
        `
    }).join('<hr width="70%">');

    let htmlDoctor = `
    <div class="container-fluid">
        <h5 class="text-center mb-4">Thông tin cá nhân</h5>
        <div class="row">
            <h6 class="col col-4">Họ tên:</h6>
            <p class="col col-6 ml-auto">${doctor.BS_HOTEN}</p>
        </div>
        <div class="row">
            <h6 class="col col-4">Ngày sinh:</h6>
            <p class="col col-6 ml-auto">${new Date(doctor.BS_NGAYSINH).getDate() + "/" + (new Date(doctor.BS_NGAYSINH).getMonth() + 1) + "/" + new Date(doctor.BS_NGAYSINH).getFullYear()}</p>
        </div>
        <div class="row">
            <h6 class="col col-4">Giới tính:</h6>
            <p class="col col-6 ml-auto">${doctor.BS_GIOITINH}</p>
        </div>
        <div class="row">
            <h6 class="col col-4">Địa chỉ:</h6>
            <p class="col col-6 ml-auto">${doctor.BS_DIACHI}, ${doctor.PX_TEN}, ${doctor.QH_TEN}, ${doctor.TINHTP_TEN}</p>
        </div>
        <div class="row">
            <h6 class="col col-4">Số điện thoại:</h6>
            <p class="col col-6 ml-auto">${doctor.BS_SDT}</p>
        </div>
        <div class="row">
            <h6 class="col col-4">Chuyên khoa:</h6>
            <p class="col col-6 ml-auto">${doctor.CK_TEN}</p>
        </div>
        <div class="row">
            <h6 class="col col-4">Nơi làm việc:</h6>
            <p class="col col-6 ml-auto">${doctor.NLV_TEN}</p>
        </div>
        <hr>
        <h5 class="text-center mb-4">Bằng cấp</h5>
        ${htmlBC}
        <hr>
        <h5 class="text-center mb-4">Tài khoản</h5>
        <div class="row">
            <h6 class="col col-4">Nơi làm việc:</h6>
            <p class="col col-6 ml-auto text-${doctor.BS_TRANGTHAI == 1 ? 'success' : 'danger'}">${doctor.BS_TRANGTHAI == 1 ? 'Đang hoạt động' : 'Đã khoá'}</p>
        </div>
    </div>
    `
    return htmlDoctor;
}

async function viewDetail(value) {
    loading('#modal-view-doctor');
    const doctor = await fetch(`${baseSite}api/bacsi/Bacsi_one.php/?id=${value}`)
        .then(response => response.json())
        .then(data => {
            return data;
        })
        .catch(error => {
            console.log(error);
        });
    modalBody.innerHTML = renderDetail(doctor);
}


async function updateStatus(string) {
    const array = string.split('-');
    if (confirm(`Bạn có muốn thay đổi không?`)) {
        let status = array[1] == 1 ? 0 : 1;
        formData = new FormData;
        formData.append('id', array[0]);
        formData.append('status', status);

        const isUpdate = await fetch(`${baseSite}api/bacsi/DoiTrangThai.php`, {
            method: 'POST',
            body: formData,
        }).then(response => response.json())
            .then(data => {
                return data;
            })
            .catch(error => {
                console.log(error);
            });
        if (isUpdate.message == 'success') {
            getAll();
            if (array[1] == 1) {
                Toast.fire({
                    icon: 'success',
                    title: 'Khoá tài tài khoản thành công!'
                });
            } else {
                Toast.fire({
                    icon: 'success',
                    title: 'Mở tài khoản thành công!'
                });
            }

        } else {
            getAll();
            if (array[1] == 1) {
                Toast.fire({
                    icon: 'error',
                    title: 'Khoá tài tài khoản Thất bại!'
                });
            } else {
                Toast.fire({
                    icon: 'error',
                    title: 'Mở đổi tài tài khoản Thất bại!'
                });
            }
        }
    }
}

async function getAll() {
    desTroyDataTables('#example1');
    loading('#data-doctor');
    const doctors = await fetch(`${baseSite}api/bacsi/Bacsi.php`)
        .then(response => response.json())
        .then(data => {
            return data;
        })
        .catch(error => {
            console.log(error);
        });
    html = renderTable(doctors)
    tbody.innerHTML = html;
    reload();
}


function reload() {
    dataTablesLoad('#example1', [
        null,
        null,
        { "width": "17%" },
        { "width": "15%" },
        { "width": "15%" },
        { "width": "15%" },
    ]);
    // checkBox();
}

function addEventBtn() {
    $('#example1').on('click', '.btnUpdateStatus', function () {
        updateStatus(this.value);
    });
    $('#example1').on('click', '.btnView', function () {
        viewDetail(this.value);
    });
}

document.querySelector('#btnReload').addEventListener('click', () => {
    getAll();
})
addEventBtn();
getAll();
