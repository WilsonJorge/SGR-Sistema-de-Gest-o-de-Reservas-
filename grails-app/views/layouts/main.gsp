<%@ page import="grails.plugin.springsecurity.SpringSecurityService; projecto.intellica.hotel.Funcionario" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title> SGH-Dashboard</title>
    <asset:javascript src="jquery-3.5.1.min.js"/>
    <link rel="stylesheet" href="https://cdn.datatables.net/1.11.3/css/jquery.dataTables.min.css">
    <script src="https://cdn.datatables.net/1.11.3/js/jquery.dataTables.min.js"></script>
    <!-- plugins:css -->
    <asset:stylesheet src="/assets/vendors/iconfonts/mdi/css/materialdesignicons.min.css"/>
    <asset:stylesheet src="/assets/vendors/iconfonts/ionicons/css/ionicons.css"/>

    <asset:stylesheet src="/assets/css/shared/style.css"/>
    <!-- endinject -->
    <!-- Layout styles -->
    <asset:stylesheet  src="/assets/css/demo_1/style.css"/>
    <!-- End Layout styles -->
    <asset:stylesheet src="/assets/images/favicon.png" />

    <!----WIZARD---->
    <!-- CSS Just for demo purpose, don't include it in your project -->
    <link href="assets/css/demo.css" rel="stylesheet" />
    <asset:stylesheet src="/css_wizard/demo.css" rel="stylesheet"/>
</head>
<body>
<div class="container-scroller">
    <nav class="navbar default-layout col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
        <div class="text-center navbar-brand-wrapper d-flex align-items-top justify-content-center">
            %{--LOGO--}%
            <g:link class="navbar-brand brand-logo" controller="#" action="#">

                <a class="navbar-brand brand-logo-mini" href="index.gsp">
                    <asset:image src="l" alt="logo" />
                </a>
            </g:link>
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
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link count-indicator" id="notificationDropdown" href="mailto:macuacuaw330@gmail.com">
                        <i class="mdi mdi-email-outline"></i>

                    </a>
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

                        <a class="dropdown-item" href="${createLink(controller: 'logout', action: 'index')}">Sign Out<i class="dropdown-item-icon ti-power-off"></i></a>
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

        <nav class="sidebar sidebar-offcanvas" id="sidebar">
            <ul class="nav" style="position: fixed;">
                <li class="nav-item nav-category">Menu</li>
                <li class="nav-item">
                    <a class="nav-link" href="${createLink(controller: 'menu', action: 'home')}">
                        <i class="menu-icon typcn typcn-document-text"></i>
                        <span class="menu-title">Dashboard</span>
                    </a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" data-toggle="collapse" href="#ui-basic3" aria-expanded="false" aria-controls="ui-basic3">
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
                    <a class="nav-link" data-toggle="collapse" href="#ui-basic2" aria-expanded="false" aria-controls="ui-basic2">
                        <i class="menu-icon typcn typcn-coffee"></i>
                        <span class="menu-title">Tipo de Quarto</span>
                        <i class="menu-arrow"></i>
                    </a>
                    <div class="collapse" id="ui-basic2">
                        <ul class="nav flex-column sub-menu">
                            <li class="nav-item">
                                <a class="nav-link" href="${createLink(controller: 'quartoTipo', action: 'create')}">Registar Categoria de Quartos</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="${createLink(controller: 'quartoTipo', action: 'index')}">Visualizar Categoria de Quartos</a>
                            </li>

                        </ul>
                    </div>
                </li>

                <li class="nav-item">
                    <a class="nav-link" data-toggle="collapse" href="#auth" aria-expanded="false" aria-controls="auth">
                        <i class="menu-icon typcn typcn-coffee"></i>
                        <span class="menu-title">Reservas</span>
                        <i class="menu-arrow"></i>
                    </a>
                    <div class="collapse" id="auth">
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
                    <a class="nav-link" data-toggle="collapse" href="#authl3" aria-expanded="false" aria-controls="authl3">
                        <i class="menu-icon typcn typcn-document-add"></i>
                        <span class="menu-title">Sistema</span>
                        <i class="menu-arrow"></i>
                    </a>
                    <div class="collapse" id="authl3">
                        <ul class="nav flex-column sub-menu">
                            <li class="nav-item">
                                <a class="nav-link" href="${createLink(controller: 'report', action: 'index')}">Relatorio de Reservas</a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link" href="${createLink(controller: 'report', action: 'receita')}">Relatorio de Receitas</a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link" href="${createLink(controller: 'report', action: 'hospede')}">Relatorio Hospedes</a>
                            </li>

                        </ul>
                    </div>
                </li>

                <li class="nav-item">
                    <a class="nav-link" data-toggle="collapse" href="#authh" aria-expanded="false" aria-controls="authh">
                        <i class="menu-icon typcn typcn-document-add"></i>
                        <span class="menu-title">Funcionario</span>
                        <i class="menu-arrow"></i>
                    </a>
                    <div class="collapse" id="authh">
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
                    <a class="nav-link" data-toggle="collapse" href="#authhh" aria-expanded="false" aria-controls="authhh">
                        <i class="menu-icon typcn typcn-coffee"></i>
                        <span class="menu-title">Hospede</span>
                        <i class="menu-arrow"></i>
                    </a>
                    <div class="collapse" id="authhh">
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

        </div>
        <!-- main-panel ends -->
    </div>
    <!-- page-body-wrapper ends -->
</div>

<asset:javascript src="/assets/vendors/js/vendor.bundle.base.js"/>

<asset:javascript src="/assets/js/demo_1/dashboard.js"/>
</body>
</html>