 <!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Dashboard Template</title>
    %{--<meta name="layout" content="main"/>--}%
    <!-- plugins:css -->
    <asset:javascript src="jquery-3.5.1.min.js"/>
    <link rel="stylesheet" href="https://cdn.datatables.net/1.11.3/css/jquery.dataTables.min.css">
    <script src="https://cdn.datatables.net/1.11.3/js/jquery.dataTables.min.js"></script>
   <asset:stylesheet src="/assets/vendors/iconfonts/mdi/css/materialdesignicons.min.css"/>
    <asset:stylesheet src="/assets/vendors/iconfonts/ionicons/css/ionicons.css"/>

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

        </div>
        <div class="navbar-menu-wrapper d-flex align-items-center">
          <ul class="navbar-nav">
            <li class="nav-item font-weight-semibold d-none d-lg-block">Ajuda :+258 849465754</li>
            <li class="nav-item dropdown language-dropdown">
                <div class="d-inline-flex mr-0 mr-md-3">

                </div>

              </a>
            </li>
          </ul>

          <g:form class="ml-auto search-form d-none d-md-block" controller="menu" action="pesquisar">
            <div class="form-group">
                <input type="search" id="referenciaInput"  name="referenciaInput" class="form-control" placeholder="Search Here">

            </div>
           </g:form>

          <ul class="navbar-nav ml-auto">
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link count-indicator" id="notificationDropdown" href="mailto:macuacuaw330@gmail.com">
                <i class="mdi mdi-email-outline"></i>
                %{--<span class="count bg-success">3</span>--}%
              </a>

            </li>
            <li class="nav-item dropdown d-none d-xl-inline-block user-dropdown">
              <a class="nav-link dropdown-toggle" id="UserDropdown" href="#" data-toggle="dropdown" aria-expanded="false">
               <asset:image class="img-xs rounded-circle" src="face8.jpg" alt="Profile image"/></a>
              <div class="dropdown-menu dropdown-menu-right navbar-dropdown" aria-labelledby="UserDropdown">
                <div class="dropdown-header text-center">
                  <asset:image class="img-md rounded-circle" src="face8.jpg" alt="Profile image"/>
                  <p class="mb-1 mt-3 font-weight-semibold">Wilson Macuacua</p>
                  <p class="font-weight-light text-muted mb-0">macuacuaw330@gmail.com</p>
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

            <li class="nav-item nav-category">Main Menu</li>
            <li class="nav-item">
               <a class="nav-link" href="${createLink(controller: 'menu', action: 'home')}">
                <i class="menu-icon typcn typcn-document-text"></i>
                <span class="menu-title">Dashboard</span>
               </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" data-toggle="collapse" href="#ui-basic" aria-expanded="false" aria-controls="ui-basic">
                <i class="menu-icon typcn typcn-coffee"></i>
                <span class="menu-title">Quartos</span>
                <i class="menu-arrow"></i>
              </a>
              <div class="collapse" id="ui-basic">
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
              <a class="nav-link" data-toggle="collapse" href="#auth" aria-expanded="false" aria-controls="auth">
                <i class="menu-icon typcn typcn-document-add"></i>
                <span class="menu-title">Tipo de Quartos</span>
                <i class="menu-arrow"></i>
              </a>
              <div class="collapse" id="auth">
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
                <i class="menu-icon typcn typcn-document-add"></i>
                <span class="menu-title">Reserva</span>
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
                                <a class="nav-link" href="${createLink(controller: 'report', action: 'index')}">Relatorio das Reservas</a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link" href="${createLink(controller: 'report', action: 'receita')}">Relatorio das Receitas</a>
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
                <i class="menu-icon typcn typcn-document-add"></i>
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
            <!-- Page Title Header Starts-->
            <div class="row page-title-header">
              <div class="col-12">
                <div class="page-header">

                </div>
              </div>
              <div class="col-md-12">
                <div class="page-header-toolbar">

                  <div class="sort-wrapper">

                  </div>
                </div>
              </div>
            </div>
            <!-- Page Title Header Ends-->
            <div class="row">
              <div class="col-md-12 grid-margin">
                <div class="card">
                  <div class="card-body">
                    <div class="row">
                      <div class="col-lg-3 col-md-6">
                        <div class="d-flex">
                          <div class="wrapper">
                            <h3 class="mb-0 font-weight-semibold">${totalHospedes}</h3>
                             <h5 class="mb-0 font-weight-medium text-primary">Hospedes</h5>

                          </div>
                          <div class="wrapper my-auto ml-auto ml-lg-4">
                            <canvas height="50" width="100" id="stats-line-graph-1"></canvas>
                          </div>
                        </div>
                      </div>
                      <div class="col-lg-3 col-md-6 mt-md-0 mt-4">
                        <div class="d-flex">
                          <div class="wrapper">
                           <h3 class="mb-0 font-weight-semibold">${totalfuncionarios}</h3>
                           <h5 class="mb-0 font-weight-medium text-primary">Funcionarios</h5>

                          </div>
                          <div class="wrapper my-auto ml-auto ml-lg-4">
                            <canvas height="50" width="100" id="stats-line-graph-2"></canvas>
                          </div>
                        </div>
                      </div>
                      <div class="col-lg-3 col-md-6 mt-md-0 mt-4">
                        <div class="d-flex">
                          <div class="wrapper">
                                <h3 class="mb-0 font-weight-semibold">${totalreservas}</h3>
                                <h5 class="mb-0 font-weight-medium text-primary">Reservas</h5>

                          </div>
                          <div class="wrapper my-auto ml-auto ml-lg-4">
                            <canvas height="50" width="100" id="stats-line-graph-3"></canvas>
                          </div>
                        </div>
                      </div>
                      <div class="col-lg-3 col-md-6 mt-md-0 mt-4">
                        <div class="d-flex">
                          <div class="wrapper">
                            <h3 class="mb-0 font-weight-semibold">${totalValor}</h3>
                             <h5 class="mb-0 font-weight-medium text-primary">Facturamento</h5>

                          </div>
                          <div class="wrapper my-auto ml-auto ml-lg-4">
                            <canvas height="50" width="100" id="stats-line-graph-4"></canvas>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-md-8 grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">
                    <h4 class="card-title mb-0">Estatisticas das Reservas </h4>
                    <div class="d-flex flex-column flex-lg-row">
                      <p>Informações sobre as reservas Canceladas e Reservas Activas</p>
                      <ul class="nav nav-tabs sales-mini-tabs ml-lg-auto mb-4 mb-md-0" role="tablist">

                      </ul>
                    </div>
                    <div class="d-flex flex-column flex-lg-row">
                      <div class="data-wrapper d-flex mt-2 mt-lg-0">
                        <div class="wrapper pr-5">
                          <h5 class="mb-0">Reservas Activas</h5>
                          <div class="d-flex align-items-center">

                          </div>
                        </div>
                        <div class="wrapper">
                          <h5 class="mb-0">Reservas Canceladas</h5>
                          <div class="d-flex align-items-center">

                          </div>
                        </div>
                      </div>
                      <div class="ml-lg-auto" id="sales-statistics-legend"></div>
                    </div>
                    <canvas class="mt-5" height="120" id="myChart"></canvas>
                    %{--<canvas id="myChart"></canvas>--}%
                  </div>
                </div>
              </div>
              <div class="col-md-4 grid-margin stretch-card">
                <div class="card">
                  <div class="card-body d-flex flex-column">
                    <div class="wrapper">
                      <h4 class="card-title mb-0">Estatistica dos Quartos</h4>
                      <p>Quantidade dos Tipos de Quarto</p>
                      <div class="mb-4" id="net-profit-legend"></div>
                    </div>
                    <canvas class="my-auto mx-auto" height="250" id="myChartwill"></canvas>
                  </div>
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-md-12">
                <div class="row">
                  <div class="col-md-6 grid-margin stretch-card">
                    <div class="card">
                      <div class="card-body pb-0">
                        <div class="d-flex justify-content-between">
                          <h4 class="card-title mb-0">Quartos Disponiveis</h4>

                        </div>
                        <h3 class="font-weight-medium mb-4">${quartosDisponiveis}</h3>
                      </div>
                      <canvas class="mt-n4" height="90" id="total-revenue"></canva>
                    </div>
                  </div>
                  <div class="col-md-6 grid-margin stretch-card">
                    <div class="card">
                      <div class="card-body pb-0">
                        <div class="d-flex justify-content-between">
                          <h4 class="card-title mb-0">Quartos Ocupados</h4>

                        </div>
                        <h3 class="font-weight-medium">${quartosIndisponiveis}</h3>
                      </div>
                      <canvas class="mt-n3" height="90" id="total-transaction"></canva>
                    </div>
                  </div>

                  <div class="col-md-12 grid-margin">
                    <div class="card">
                      <div class="card-body">
                        <h4 class="card-title mb-0">Estatistica dos Tipos de Quarto </h4>
                        <div class="d-flex align-items-center justify-content-between w-100">
                          <p class="mb-0">Os quartos mais requisitados</p>
                        </div>
                        <div class="d-flex align-items-end">
                          <h3 class="mb-0 font-weight-semibold"></h3>
                          <br>
                          <h5 class="mb-0 font-weight-medium text-primary"></h5>

                        </div>
                       <canvas class="mt-4" height="120" id="chart"></canvas>

                      </div>
                    </div>
                  </div>

                  <div class="col-lg-12 grid-margin">
                    <div class="card">
                      <div class="card-body">
                        <h4 class="card-title mb-0">Estatistica das Reservas </h4>
                        <div class="d-flex align-items-center justify-content-between w-100">
                          <p class="mb-0">Reservas por mês de cada ano</p>
                        </div>
                        <div class="d-flex align-items-end">
                          <h3 class="mb-0 font-weight-semibold"></h3>
                          <br>
                          <h5 class="mb-0 font-weight-medium text-primary"></h5>

                        </div>
                       <canvas class="mt-4" height="120" id="chartLine"></canvas>

                      </div>
                    </div>
                  </div>

                  <div class="col-md-6 grid-margin stretch-card">
                    <div class="card">
                      <div class="card-body">
                        <div class="row">
                          <div class="col-md-6">
                            <div class="d-flex align-items-center pb-2">
                              <div class="dot-indicator bg-danger mr-2"></div>
                              <p class="mb-0">ADMIN Users</p>
                            </div>
                            <h4 class="font-weight-semibold">${totalUserAdmin}</h4>
                            <div class="progress progress-md">
                              <div class="progress-bar bg-danger" role="progressbar" style="width: 20%" aria-valuenow="20" aria-valuemin="0" aria-valuemax="78"></div>
                            </div>
                          </div>
                          <div class="col-md-6 mt-4 mt-md-0">
                            <div class="d-flex align-items-center pb-2">
                              <div class="dot-indicator bg-success mr-2"></div>
                              <p class="mb-0">Normal Users</p>
                            </div>
                            <h4 class="font-weight-semibold">${totalUserNormal}</h4>
                            <div class="progress progress-md">
                              <div class="progress-bar bg-success" role="progressbar" style="width: 40%" aria-valuenow="20" aria-valuemin="0" aria-valuemax="45"></div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="col-md-6 grid-margin stretch-card average-price-card">
                    <div class="card text-white">
                      <div class="card-body">
                        <div class="d-flex justify-content-between pb-2 align-items-center">
                          <h2 class="font-weight-semibold mb-0">${totalquartos}</h2>
                          <div class="icon-holder">
                            <i class="mdi mdi-briefcase-outline"></i>
                          </div>
                        </div>
                        <div class="d-flex justify-content-between">
                          <h5 class="font-weight-semibold mb-0">Quartos</h5>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-md-4">
                <div class="row">
                  <div class="col-md-12 grid-margin">
                    <div class="card">
                  </div>
                </div>
              </div>
            </div>
          </div>

          <!-- content-wrapper ends -->
          <!-- partial:partials/_footer.html -->
          <footer class="footer">
            <div class="container-fluid clearfix">
              <span class="text-muted d-block text-center text-sm-left d-sm-inline-block">Copyright © 2023 Intellica. All rights reserved.</span>
              <span class="float-none float-sm-right d-block mt-1 mt-sm-0 text-center">developed by Francisco and Wilson <i class="mdi mdi-heart text-danger"></i>
              </span>
            </div>
          </footer>
          <!-- partial -->
        </div>
        <!-- main-panel ends -->
      </div>
      <!-- page-body-wrapper ends -->
    </div>
    %{--<!-- container-scroller -->--}%
    %{--<!-- plugins:js -->--}%
<asset:javascript src="/assets/vendors/js/vendor.bundle.base.js"/>
<asset:javascript src="/assets/vendors/js/vendor.bundle.addons.js"/>
%{--<!-- endinject -->--}%
%{--<!-- Plugin js for this page-->--}%
%{--<!-- End plugin js for this page-->--}%
%{--<!-- inject:js -->--}%
<asset:javascript  src="/assets/js/shared/off-canvas.js"/>
<asset:javascript src="/assets/js/shared/misc.js"/>
%{--<!-- endinject -->--}%
%{--<!-- Custom js for this page-->--}%
<asset:javascript src="/assets/js/demo_1/dashboard.js"/>
%{--<!-- End custom js for this page-->--}%
    %{--<!-- End custom js for this page-->--}%
   <script>
    var ctx = document.getElementById('myChart').getContext('2d');
    var myChart = new Chart(ctx, {
        type: 'pie',
        data: {
            labels: ['Activas', 'Canceladas'],
            datasets: [{
                label: '# of Votes',
                data: [${reservasActivas}, ${reservasInactivo}],
                backgroundColor: [
                    'rgba(255, 156, 185)',
                    'rgba(62, 226, 194)',

                ],
                borderColor: [
                    'rgba(255, 99, 132, 1)',
                    'rgba(54, 162, 235, 1)',

                ],

            }]
        },
        options: {
            responsive: true,
            legend: {
                position: "bottom"
            },

        }

    });
</script>​
<script>

         var quantidadePorTipo = [
            <g:each in="${quantidadePorTipo}" var="item" status="i">
                { tipo: '${item[0]}', quantidade: ${item[1]} }${i < quantidadePorTipo.size() - 1 ? ',' : ''}
            </g:each>
        ];

       var labels = quantidadePorTipo.map(item => item.tipo);
        var data = quantidadePorTipo.map(item => item.quantidade);

            var ctx = document.getElementById('myChartwill').getContext('2d');
            var myChartwill = new Chart(ctx, {
                type: 'pie',
                data: {
                    labels: labels,
                    datasets: [{
                        label: 'My First Dataset',
                        data: data,
                        backgroundColor: [
                            'rgb(255, 99, 132)',
                            'rgb(54, 162, 235)',
                            'rgb(255, 205, 86)'
                            // Adicione mais cores aqui, se necessário
                        ],
                        hoverOffset: 4
                    }]
                },
                options: {
                    responsive: true,
                    legend: {
                        position: "bottom"
                    }
                }
            });
</script>

<script>
        // Suponha que a variável 'quantidadePorTipo' seja passada do controller para a view
            var resultadoRequisicao = [
                <g:each in="${resultadoRequisicao}" var="item" status="i">
                    { tipo: '${item[0]}', quantidade: ${item[1]} }${i < resultadoRequisicao.size() - 1 ? ',' : ''}
                </g:each>
            ];

            var labels = resultadoRequisicao.map(item => item.tipo);
            var data = resultadoRequisicao.map(item => item.quantidade);

            var ctx = document.getElementById('chart').getContext('2d');
            var chart = new Chart(ctx, {
                type: 'bar',
                data: {
                    labels: labels,
                    datasets: [{
                        label: 'Quartos',
                        data: data,
                        backgroundColor: 'rgba(54, 162, 235, 0.6)',
                        borderColor: 'rgba(54, 162, 235, 1)',
                        borderWidth: 2
                    }]
                },
                options: {
                    scales: {
                        y: {
                            beginAtZero: true
                        }
                    }
                }
            });

    var resultadoComparacaoReservas = [
        <g:each in="${resultadoComparacaoReservas}" var="item" status="i">
            { ano: ${item[0]}, mes: ${item[1]}, quantidade: ${item[2]} }${i < resultadoComparacaoReservas.size() - 1 ? ',' : ''}
        </g:each>
    ];

    var anos = [2021, 2022, 2023];
    var meses = ['Jan', 'Fev', 'Mar', 'Abr', 'Mai', 'Jun', 'Jul', 'Ago', 'Set', 'Out', 'Nov', 'Dez'];

    var datasets = anos.map(ano => {
        return {
            label: ano,
            data: meses.map(mes => {
                var item = resultadoComparacaoReservas.find(item => item.ano === ano && item.mes === meses.indexOf(mes) + 1);
                return item ? item.quantidade : 0;
            }),
            borderColor: getRandomColor(), // Defina uma função para gerar cores aleatórias
            backgroundColor: 'rgba(54, 162, 235, 0.2)',
            borderWidth: 2
        };
    });

    function getRandomColor() {
        var letters = '0123456789ABCDEF';
        var color = '#';
        for (var i = 0; i < 6; i++) {
            color += letters[Math.floor(Math.random() * 16)];
        }
        return color;
    }

    var ctx = document.getElementById('chartLine').getContext('2d');
    var chartLine = new Chart(ctx, {
        type: 'line',
        data: {
            labels: meses,
            datasets: datasets
        },
        options: {
            scales: {
                y: {
                    beginAtZero: true
                }
            }
        }
    });

</script>
 <script>
        var $j = jQuery.noConflict();

        $j(document).ready(function() {
            $j('#hospedesreservas').DataTable();
        });
    </script>
    %{--<script src="https://cdn.jsdelivr.net/npm/chart.js@4.2.0/dist/chart.umd.js"></script>--}%
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.1/Chart.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/apexcharts@3.28.0/dist/apexcharts.min.js"></script>
  </body>
</html>