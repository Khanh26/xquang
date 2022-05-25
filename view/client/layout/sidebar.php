<aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="<?php $site->baseSite(); ?>" class="brand-link">
        <img src="<?php $site->public(); ?>/img/logo.jpg" alt="Medicine Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
        <span class="brand-text font-weight-light">Medicine</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">

        <!-- SidebarSearch Form -->
        <div class="form-inline">
            <div class="input-group" data-widget="sidebar-search">
                <input class="form-control form-control-sidebar" type="search" placeholder="Search" aria-label="Search">
                <div class="input-group-append">
                    <button class="btn btn-sidebar">
                        <i class="fas fa-search fa-fw"></i>
                    </button>
                </div>
            </div>
        </div>

        <!-- Sidebar Menu -->
        <nav class="mt-2">
            <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
                <!-- Add icons to the links using the .nav-icon class
             with font-awesome or any other icon font library -->

                <li class="nav-item">
                    <a href="<?php $site->baseSite(); ?>" class="nav-link <?php  echo $route->getCurrentRoute() == 'home' ? 'active' : ''?>">
                        <i class="nav-icon fas fa-home"></i>
                        <p>
                            Home
                        </p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="#" class="nav-link">
                        <i class="nav-icon fas fa-stethoscope"></i>
                        <p>
                            Quản lý chuẩn đoán
                            <i class="right fas fa-angle-left"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a href="/addPatient" class="nav-link">
                                <i class="fas fa-book-medical nav-icon ml-2"></i>
                                <p>Thêm bệnh nhân</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="/listPatient" class="nav-link">
                                <!-- <i class="nav-icon fas fa-users nav-icon ml-2"></i> -->
                                <i class="fas fa-hospital-user nav-icon ml-2"></i>
                                <p>Danh sách bệnh nhân</p>
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="nav-item">
                    <a href="#" class="nav-link">
                        <i class="nav-icon fab fa-elementor"></i>
                        <p>
                            Quản lý danh mục
                            <i class="right fas fa-angle-left"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a href="/admin/specialized" class="nav-link">
                                <i class="fas fa-user-tie nav-icon ml-2"></i>
                                <p>Quản lý chuyên ngành</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="/admin/specialist" class="nav-link {{tcs}}">
                                <i class="fas fa-briefcase-medical nav-icon ml-2"></i>
                                <p>Quản lý chuyên khoa</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="/admin/degree" class="nav-link {{tcs}}">
                                <i class="fas fa-certificate nav-icon ml-2"></i>
                                <p>Quản lý nơi cấp bằng</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="/admin/kindOfDegree" class="nav-link {{ts}}">
                                <!-- <i class="nav-icon fas fa-users nav-icon ml-2"></i> -->
                                <i class="fas fa-stamp nav-icon ml-2"></i>
                                <p>Quản lý loại nơi làm việc</p>
                            </a>
                        </li>
                    </ul>
                </li>

                <li class="nav-item">
                    <a href="<?php $site->baseSite();?>?router=quan-ly-bac-si" class="nav-link <?php  echo $route->getCurrentRoute() == 'quan-ly-bac-si' ? 'active' : ''?>">
                    <i class="fas fa-user-md nav-icon"></i>
                        <p>
                            Quản lý bác sĩ
                        </p>
                    </a>
                </li>

                <li class="nav-item">
                    <a href="<?php $site->baseSite() ?>/?router=quan-ly-mo-hinh" class="nav-link <?php  echo $route->getCurrentRoute() == 'quan-ly-mo-hinh' ? 'active' : ''?>">
                        <i class="fas fa-sitemap nav-icon"></i>
                        <p>
                            Quản lý mô hình
                        </p>
                    </a>
                </li>

                <li class="nav-item">
                    <a href="pages/gallery.html" class="nav-link">
                        <i class="nav-icon fas fa-chart-line"></i>
                        <p>
                            Báo cáo, thống kê
                        </p>
                    </a>
                </li>

            </ul>
        </nav>
        <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
</aside>