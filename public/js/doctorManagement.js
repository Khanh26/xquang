const tbody = document.querySelector('#data-doctor');
function render(array) {
    let html = array.map((item) => {
        return `
        <tr>
            <td>${item.BS_HOTEN}</td>
            <td>${new Date(item.BS_NGAYSINH).getDate() + "/" + (new Date(item.BS_NGAYSINH).getMonth() + 1) + "/" + new Date(item.BS_NGAYSINH).getFullYear()}</td>
            <td>${item.CK_TEN}</td>
            <td>${item.NLV_TEN}</td>
            <td>${item.BS_TRANGTHAI == 1 ? '<p class="text-success">Đang hoạt động</p>' : '<p class="text-danger">Đã khoá</p>'}</td>
            <td>
            
            <button class="btn btn-${item.BS_TRANGTHAI == 1 ? 'danger' : 'success'} btnUpdateStatus" value="${item.BS_ID}-${item.BS_TRANGTHAI}"><i class="fas ${item.BS_TRANGTHAI == 1 ? 'fa-lock' : 'fa-lock-open'}"></i></button>
            <button class="btn btn-primary"><i class="fas fa-eye"></i></button>
            </td>
        </tr>
        `
    }).join('');
    return html;
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
    html = render(doctors)
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
}

document.querySelector('#btnReload').addEventListener('click', () => {
    getAll();
})
addEventBtn();
getAll();
