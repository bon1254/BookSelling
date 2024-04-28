var dataTable;

$(document).ready(function () {
    loadDataTable();
});

function loadDataTable() {
    dataTable = $('#tblData').DataTable({
        "ajax": { url: '/admin/company/getall' },
        "columns": [
            { data: 'name', "width": "15%" },
            { data: 'streetAddress', "width": "15%" },
            { data: 'city', "width": "15%"},
            { data: 'state', "width": "15%" },
            { data: 'phoneNumber', "width": "15%", className: 'dt-body-left' },
            {
                data: 'id',
                "render": function (data) {
                    return `<div class="w-75 btn-group" role="group">
                        <a href="/admin/company/upsert?id=${data}" class="btn btn-primary mx-2"><i class="bi bi-pencil-square"></i>編輯</a>
                        <a onClick=Delete('/admin/company/delete/${data}') class="btn btn-danger mx-2"><i class="bi bi-trash-fill"></i>刪除</a>
                        </div>`
                },
                "width": "25%"
            }
        ]
    });
}

function Delete(url) {
    Swal.fire({
        title: "是否確定刪除?",
        text: "你將無法復原此動作!",
        icon: "警告",
        showCancelButton: true,
        confirmButtonColor: "#3085d6",
        cancelButtonColor: "#d33",
        confirmButtonText: "是的，請刪除!",
        cancelButtonText: "不, 請取消!",
    }).then((result) => {
        if (result.isConfirmed) {
            $.ajax({
                url: url,
                type: 'DELETE',
                success: function (data) {
                    dataTable.ajax.reload();
                    toastr.success(data.message);
                }
            })
        }
    });
}