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