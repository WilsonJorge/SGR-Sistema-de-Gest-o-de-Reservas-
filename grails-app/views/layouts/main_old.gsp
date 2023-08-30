<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title> SGH-Dashboard</title>
    <!-- plugins:css -->
    <asset:stylesheet src="/assets/vendors/iconfonts/mdi/css/materialdesignicons.min.css"/>
    <asset:stylesheet src="/assets/vendors/iconfonts/ionicons/css/ionicons.css"/>
    <asset:stylesheet src="/assets/vendors/iconfonts/typicons/src/font/typicons.css"/>
    <asset:stylesheet src="/assets/vendors/iconfonts/flag-icon-css/css/flag-icon.min.css"/>
    <asset:stylesheet src="/assets/vendors/css/vendor.bundle.base.css"/>
    <asset:stylesheet src="/assets/vendors/css/vendor.bundle.addons.css"/>
    <!-- endinject -->
    <!-- plugin css for this page -->
    <!-- End plugin css for this page -->
    <!-- inject:css -->
    <asset:stylesheet src="/assets/css/shared/style.css"/>
    <!-- endinject -->
    <!-- Layout styles -->
    <asset:stylesheet  src="/assets/css/demo_1/style.css"/>
    <!-- End Layout styles -->
    <asset:stylesheet src="/assets/images/favicon.png" />
</head>
<body>
<div class="container-scroller">
    <!-- partial:partials/_navbar.html -->
    <nav class="navbar default-layout col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
        <div class="text-center navbar-brand-wrapper d-flex align-items-top justify-content-center">
            %{--LOGO--}%
            <a class="navbar-brand brand-logo" href="index.gsp">
                %{--<asset:image src="" alt="logo" /> </a>--}%
                <a class="navbar-brand brand-logo-mini" href="index.gsp">
                    <asset:image src="l" alt="logo" /> </a>
        </div>
        <div class="navbar-menu-wrapper d-flex align-items-center">
            <ul class="navbar-nav">
                <li class="nav-item font-weight-semibold d-none d-lg-block">Ajuda: +258849465754</li>
                <li class="nav-item dropdown language-dropdown">
                    <a class="nav-link dropdown-toggle px-2 d-flex align-items-center" id="LanguageDropdown" href="#" data-toggle="dropdown" aria-expanded="false">
                        <div class="d-inline-flex mr-0 mr-md-3">
                            <div class="flag-icon-holder">
                                <i class="#"></i>
                            </div>
                        </div>
                        %{--<span class="profile-text font-weight-medium d-none d-md-block">Portugues</span>--}%
                    </a>
                    <div class="dropdown-menu dropdown-menu-left navbar-dropdown py-2" aria-labelledby="LanguageDropdown">


                    </div>
                </li>
            </ul>
            <form class="ml-auto search-form d-none d-md-block" action="#">
                <div class="form-group">
                    <input type="search" class="form-control" placeholder="Search Here">
                </div>
            </form>
            <ul class="navbar-nav ml-auto">
                <li class="nav-item dropdown">
                    <a class="nav-link count-indicator" id="messageDropdown" href="#" data-toggle="dropdown" aria-expanded="false">
                        <i class="mdi mdi-bell-outline"></i>
                        <span class="count">7</span>
                    </a>
                    <div class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list pb-0" aria-labelledby="messageDropdown">
                        <a class="dropdown-item py-3">
                            <p class="mb-0 font-weight-medium float-left">Tem  7  notificações por ver </p>
                            <span class="badge badge-pill badge-primary float-right">Ver Todas</span>
                        </a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item preview-item">
                            <div class="preview-thumbnail">
                                <asset:image src="#" alt="image" class="img-sm profile-pic"/> </div>
                            <div class="preview-item-content flex-grow py-2">
                                <p class="preview-subject ellipsis font-weight-medium text-dark">Sydney Madope</p>
                                <p class="font-weight-light small-text"> Bom dia, Desejo actualizar a minha reserva</p>
                            </div>
                        </a>
                        <a class="dropdown-item preview-item">
                            <div class="preview-thumbnail">
                                <asset:image src="#" alt="image" class="img-sm profile-pic"/></div>
                            <div class="preview-item-content flex-grow py-2">
                                <p class="preview-subject ellipsis font-weight-medium text-dark">Ivan Petel</p>
                                <p class="font-weight-light small-text">Desejo cancelar a minha reserva</p>
                            </div>
                        </a>
                        <a class="dropdown-item preview-item">
                            <div class="preview-thumbnail">
                                <asset:image src="#" alt="image" class="img-sm profile-pic"/></div>
                            <div class="preview-item-content flex-grow py-2">
                                <p class="preview-subject ellipsis font-weight-medium text-dark">Firmino Massango</p>
                                <p class="font-weight-light small-text">Fomos bem recebidos no Hotel,Obrigado</p>
                            </div>
                        </a>
                    </div>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link count-indicator" id="notificationDropdown" href="#" data-toggle="dropdown">
                        <i class="mdi mdi-email-outline"></i>
                        <span class="count bg-success">3</span>
                    </a>
                    <div class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list pb-0" aria-labelledby="notificationDropdown">
                        <a class="dropdown-item py-3 border-bottom">
                            <p class="mb-0 font-weight-medium float-left">Tem 3 Notificações </p>
                            <span class="badge badge-pill badge-primary float-right">Ver Todas</span>
                        </a>
                        <a class="dropdown-item preview-item py-3">
                            <div class="preview-thumbnail">
                                <i class="mdi mdi-alert m-auto text-primary"></i>
                            </div>
                            <div class="preview-item-content">
                                <h6 class="preview-subject font-weight-normal text-dark mb-1">Erro da Aplicação</h6>
                                <p class="font-weight-light small-text mb-0"> ver </p>
                            </div>
                        </a>
                        <a class="dropdown-item preview-item py-3">
                            <div class="preview-thumbnail">
                                <i class="mdi mdi-airballoon m-auto text-primary"></i>
                            </div>
                            <div class="preview-item-content">
                                <h6 class="preview-subject font-weight-normal text-dark mb-1">Foi feita Uma Nova Reserva</h6>
                                <p class="font-weight-light small-text mb-0">  ha 2 dias </p>
                            </div>
                        </a>
                    </div>
                </li>
                <li class="nav-item dropdown d-none d-xl-inline-block user-dropdown">
                    <a class="nav-link dropdown-toggle" id="UserDropdown" href="#" data-toggle="dropdown" aria-expanded="false">
                        <asset:image class="img-xs rounded-circle" src="face8.jpg" alt="Profile image"/> </a>
                    <div class="dropdown-menu dropdown-menu-right navbar-dropdown" aria-labelledby="UserDropdown">
                        <div class="dropdown-header text-center">
                            <asset:image class="img-md rounded-circle" src="face8.jpg" alt="Profile image"/>
                            <p class="mb-1 mt-3 font-weight-semibold">Wilson Macuacua</p>
                            <p class="font-weight-light text-muted mb-0">macuacuaw@gmail.com</p>
                        </div>
                        <a class="dropdown-item">My Profile <span class="badge badge-pill badge-danger">1</span><i class="dropdown-item-icon ti-dashboard"></i></a>

                        <a class="dropdown-item">Sign Out<i class="dropdown-item-icon ti-power-off"></i></a>
                    </div>
                </li>
            </ul>
            <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-toggle="offcanvas">
                <span class="mdi mdi-menu"></span>
            </button>
        </div>
    </nav>
    <!-- partial -->
    <div class="container-fluid page-body-wrapper">
        <!-- partial:partials/_sidebar.html -->
        <nav class="sidebar sidebar-offcanvas" id="sidebar">
            <ul class="nav">
                <li class="nav-item nav-profile">
                    <a href="#" class="nav-link">
                        <div class="profile-image">
                            <asset:image class="img-xs rounded-circle" src="face8.jpg" alt="profile image"/>
                            <div class="dot-indicator bg-success"></div>
                        </div>
                        <div class="text-wrapper">
                            <p class="profile-name">Wilson Macuacua</p>
                            <p class="designation">Admin</p>
                        </div>
                    </a>
                </li>
                <li class="nav-item nav-category">Menu</li>
                <li class="nav-item">
                    <a class="nav-link" href="${createLink(controller: 'menu', action: 'home')}">
                        <i class="menu-icon typcn typcn-document-text"></i>
                        <span class="menu-title">Dashboard</span>
                    </a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" data-toggle="collapse" href="#ui-basic3" aria-expanded="false" aria-controls="ui-basic">
                        <i class="menu-icon typcn typcn-coffee"></i>
                        <span class="menu-title">Quartos</span>
                        <i class="menu-arrow"></i>
                    </a>
                    <div class="collapse" id="ui-basic3">
                        <ul class="nav flex-column sub-menu">
                            <li class="nav-item">
                                <a class="nav-link" href="${createLink(controller: 'quarto', action: 'create')}">Registar Quartos</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="${createLink(controller: 'quarto', action: 'index')}">Visualizar Quartos</a>
                            </li>

                        </ul>
                    </div>
                </li>

                <li class="nav-item">
                    <a class="nav-link" data-toggle="collapse" href="#ui-basic2" aria-expanded="false" aria-controls="ui-basic">
                        <i class="menu-icon typcn typcn-coffee"></i>
                        <span class="menu-title">Tipo de Quarto</span>
                        <i class="menu-arrow"></i>
                    </a>
                    <div class="collapse" id="ui-basic2">
                        <ul class="nav flex-column sub-menu">
                            <li class="nav-item">
                                <a class="nav-link" href="${createLink(controller: 'tipoQuarto', action: 'create')}">Registar Categoria de Quartos</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="${createLink(controller: 'tipoQuarto', action: 'index')}">Visualizar Categoria de Quartos</a>
                            </li>

                        </ul>
                    </div>
                </li>

                <li class="nav-item">
                    <a class="nav-link" data-toggle="collapse" href="#ui-basic" aria-expanded="false" aria-controls="ui-basic">
                        <i class="menu-icon typcn typcn-coffee"></i>
                        <span class="menu-title">Reservas</span>
                        <i class="menu-arrow"></i>
                    </a>
                    <div class="collapse" id="ui-basic">
                        <ul class="nav flex-column sub-menu">
                            <li class="nav-item">
                                <a class="nav-link" href="${createLink(controller: 'reserva', action: 'create')}">Registar Reserva</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="${createLink(controller: 'reserva', action: 'index')}">Visualizar Reservas</a>
                            </li>

                        </ul>
                    </div>
                </li>

                <li class="nav-item">
                    <a class="nav-link" data-toggle="collapse" href="#auth" aria-expanded="false" aria-controls="auth">
                        <i class="menu-icon typcn typcn-document-add"></i>
                        <span class="menu-title">Funcionario</span>
                        <i class="menu-arrow"></i>
                    </a>
                    <div class="collapse" id="auth">
                        <ul class="nav flex-column sub-menu">
                            <li class="nav-item">
                                <a class="nav-link" href="${createLink(controller: 'funcionario', action: 'create')}">Cadastrar Funcionario</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="${createLink(controller: 'funcionario', action: 'index')}">Visualizar Funcionario</a>
                        </ul>
                    </div>
                </li>

                <li class="nav-item">
                    <a class="nav-link" data-toggle="collapse" href="#ui-basic1" aria-expanded="false" aria-controls="ui-basic">
                        <i class="menu-icon typcn typcn-coffee"></i>
                        <span class="menu-title">Hospede</span>
                        <i class="menu-arrow"></i>
                    </a>
                    <div class="collapse" id="ui-basic1">
                        <ul class="nav flex-column sub-menu">
                            <li class="nav-item">
                                <a class="nav-link" href="${createLink(controller: 'hospede', action: 'create')}">Cadastrar Hospede</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="${createLink(controller: 'hospede', action: 'index')}">Visualizar Hospede</a>
                            </li>

                        </ul>
                    </div>
                </li>
            </ul>
        </nav>
        <!-- partial -->
        <div class="main-panel">
            <div class="content-wrapper">
                <!-- Page Title Header Starts-->
                <div>
                    <div>
                        <div>

                        </div>
                    </div>

                </div>
                <!-- Page Title Header Ends-->
                <div class="row">

                    <g:layoutBody/>
                </div>

                <div >
                    <div>
                        <div>
                            <div>
                                <div>


                                </div>
                            </div>
                            <div>
                                <div>
                                    <div>


                                    </div>

                                </div>
                            </div>
                            <div>
                                <div>
                                    <div>

                                        <div>


                                        </div>


                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                    <div>
                        <div>
                            <div>
                                <div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
            <!-- content-wrapper ends -->
            <!-- partial:partials/_footer.html -->

            <!-- partial -->
        </div>
        <!-- main-panel ends -->
    </div>
    <!-- page-body-wrapper ends -->
</div>
<!-- container-scroller -->
<!-- plugins:js -->
<asset:javascript src="/assets/vendors/js/vendor.bundle.base.js"/>
<asset:javascript src="/assets/vendors/js/vendor.bundle.addons.js"/>
<!-- endinject -->
<!-- Plugin js for this page-->
<!-- End plugin js for this page-->
<!-- inject:js -->
<asset:javascript  src="/assets/js/shared/off-canvas.js"/>
<asset:javascript src="/assets/js/shared/misc.js"/>
<!-- endinject -->
<!-- Custom js for this page-->
<asset:javascript src="/assets/js/demo_1/dashboard.js"/>
<!-- End custom js for this page-->
</body>
</html>




%{--<!doctype html>--}%
%{--<html lang="en" class="no-js">--}%
%{--<head>--}%
    %{--<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>--}%
    %{--<meta http-equiv="X-UA-Compatible" content="IE=edge"/>--}%
    %{--<title>--}%
        %{--<g:layoutTitle default="Grails"/>--}%
    %{--</title>--}%
    %{--<meta name="viewport" content="width=device-width, initial-scale=1"/>--}%
    %{--<asset:link rel="icon" href="favicon.ico" type="image/x-ico" />--}%

    %{--<asset:stylesheet src="application.css"/>--}%

    %{--<g:layoutHead/>--}%
%{--</head>--}%
%{--<body>--}%

    %{--<div class="navbar navbar-default navbar-static-top" role="navigation">--}%
        %{--<div class="container">--}%
            %{--<div class="navbar-header">--}%
                %{--<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">--}%
                    %{--<span class="sr-only">Toggle navigation</span>--}%
                    %{--<span class="icon-bar"></span>--}%
                    %{--<span class="icon-bar"></span>--}%
                    %{--<span class="icon-bar"></span>--}%
                %{--</button>--}%
                %{--<a class="navbar-brand" href="/#">--}%
		    %{--<asset:image src="grails.svg" alt="Grails Logo"/>--}%
                %{--</a>--}%
            %{--</div>--}%
            %{--<div class="navbar-collapse collapse" aria-expanded="false" style="height: 0.8px;">--}%
                %{--<ul class="nav navbar-nav navbar-right">--}%
                    %{--<g:pageProperty name="page.nav" />--}%
                %{--</ul>--}%
            %{--</div>--}%
        %{--</div>--}%
    %{--</div>--}%

    %{--<g:layoutBody/>--}%

    %{--<div class="footer" role="contentinfo"></div>--}%

    %{--<div id="spinner" class="spinner" style="display:none;">--}%
        %{--<g:message code="spinner.alt" default="Loading&hellip;"/>--}%
    %{--</div>--}%

    %{--<asset:javascript src="application.js"/>--}%

%{--</body>--}%
%{--</html>--}%
