<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="<?php $site->public(); ?>/plugins/fontawesome-free/css/all.min.css">
    <link rel="shortcut icon" href="<?php $site->public(); ?>/img/logo.jpg">
    <!-- Theme style -->
    <link rel="stylesheet" href="<?php $site->public(); ?>/css/adminlte.min.css">
    <title>Quản trị</title>
</head>
<body>
    <!-- header -->
    <?php include_once './view/client/layout/header.php' ?>
    <!-- end header -->
    <!-- sidebar -->
    <?php include_once './view/client/layout/sidebar.php' ?>
    <!-- end sidebar -->
    <!-- content -->
    <div class="content">
        <div class="content-wrapper">
            <div class="content-header">
                <div class="container-fluid">
                    <div class="row mb-2">
                        <div class="col-sm-6">
                            <h1 class="m-0">Quản lý bác sĩ</h1>
                        </div><!-- /.col -->
                        <div class="col-sm-6">
                            <ol class="breadcrumb float-sm-right">
                                <li class="breadcrumb-item"><a href="<?php $site->baseSite(); ?>">Home</a></li>
                                <li class="breadcrumb-item active">Quản lý bác sĩ</li>
                            </ol>
                        </div><!-- /.col -->
                    </div><!-- /.row -->
                </div><!-- /.container-fluid -->
            </div>

            <div class="container-fluid">
                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <div class="row justify-content-between">
                                    <div class="col-sm-6 col-md-6">
                                        <!-- filter -->
                                        <!-- end filter -->
                                        <button class="btn btn-default mr-3" id="btnReload" title="Tải lại"><i class="fas fa-redo"></i></button>
                                    </div>

                                    <div class="col-sm-6 col-md-4">
                                        <div class="input-group">
                                            <input type="search" class="form-control" id="inputSearch" placeholder="Tìm kiếm">
                                            <div class="input-group-append">
                                                <button type="submit" class="btn btn-default" id="btnSearch">
                                                    <i class="fa fa-search"></i>
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="card">
                            <div class="card-body card-movie">
                                <table id="example1" class="table table-bordered table-striped">
                                    <thead>
                                        <tr>
                                            <th><input type="checkbox" id="checkAll"></th>
                                            <th>Họ tên</th>
                                            <th>Ngày sinh</th>
                                            <th>Chuyên khoa</th>
                                            <th>Nơi làm việc</th>
                                            <th></th>
                                            <!-- note create colum -->
                                        </tr>
                                    </thead>
                                    <tbody id="data-movie">

                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- end content -->
    <!-- footer -->
    <?php include_once './view/client/layout/footer.php' ?>
    <!-- end footer -->

    <!-- script -->
    <script src="<?php $site->public(); ?>/plugins/jquery/jquery.min.js"></script>
    <!-- Bootstrap 4 -->
    <script src="<?php $site->public(); ?>/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- overlayScrollbars -->
    <script src="<?php $site->public(); ?>/plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
    <!-- AdminLTE App -->
    <script src="<?php $site->public(); ?>/js/adminlte.min.js"></script>
    <script src="<?php $site->public(); ?>/plugins/bs-custom-file-input/bs-custom-file-input.min.js"></script>

    <!-- Bootstrap4 Duallistbox -->
    <script src="<?php $site->public(); ?>/plugins/bootstrap4-duallistbox/jquery.bootstrap-duallistbox.min.js"></script>
    <script src="<?php $site->public(); ?>/plugins/inputmask/jquery.inputmask.min.js"></script>
    <!-- SweetAlert2 -->
    <script src="<?php $site->public(); ?>/plugins/sweetalert2/sweetalert2.min.js"></script>
    <!-- DataTables  & Plugins -->
    <script src="<?php $site->public(); ?>/plugins/datatables/jquery.dataTables.min.js"></script>
    <script src="<?php $site->public(); ?>/plugins/datatables/jquery.dataTables.js"></script>
    <script src="<?php $site->public(); ?>/plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>
    <script src="<?php $site->public(); ?>/plugins/datatables-responsive/js/dataTables.responsive.min.js"></script>
    <script src="<?php $site->public(); ?>/plugins/datatables-responsive/js/responsive.bootstrap4.min.js"></script>
    <script src="<?php $site->public(); ?>/plugins/datatables-buttons/js/dataTables.buttons.min.js"></script>
    <script src="<?php $site->public(); ?>/plugins/datatables-buttons/js/buttons.bootstrap4.min.js"></script>
    <script src="<?php $site->public(); ?>/plugins/datatables-buttons/js/buttons.html5.min.js"></script>
    <script src="<?php $site->public(); ?>/plugins/datatables-buttons/js/buttons.print.min.js"></script>
    <script src="<?php $site->public(); ?>/plugins/datatables-buttons/js/buttons.colVis.min.js"></script>
    <!-- end script -->
</body>

</html>