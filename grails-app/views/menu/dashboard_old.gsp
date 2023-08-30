<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title></title>
</head>
<body>
<div class="container-scroller">
    <!-- partial -->
    <div class="main-panel">
        <div class="content-wrapper">
            <!-- Page Title Header Starts-->
            <div class="row page-title-header">
                <div class="col-12">
                    <div class="page-header">
                        <h4 class="page-title">Dashboard</h4>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="page-header-toolbar">
                        <div class="btn-group toolbar-item" role="group" aria-label="Basic example">
                            <button type="button" class="btn btn-secondary"><i class="mdi mdi-chevron-left"></i></button>
                            <button type="button" class="btn btn-secondary">16/05/2023 - 20/05/2023</button>
                            <button type="button" class="btn btn-secondary"><i class="mdi mdi-chevron-right"></i></button>
                        </div>
                        <div class="filter-wrapper">
                            <div class="dropdown toolbar-item">
                                <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownsorting" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Actual</button>
                                <div class="dropdown-menu" aria-labelledby="dropdownsorting">
                                    <a class="dropdown-item" href="#">Ultimo Dia</a>
                                    <a class="dropdown-item" href="#">Ultimo Mes</a>
                                    <a class="dropdown-item" href="#">Ultimo Ano</a>
                                </div>
                            </div>

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
                                            <p class="mb-0 text-muted">+138.97(+0.54%)</p>
                                        </div>
                                        <div class="wrapper my-auto ml-auto ml-lg-4">
                                            %{--<canvas height="50" width="50" id="stats-line-graph-1"></canvas>--}%
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-3 col-md-6 mt-md-0 mt-4">
                                    <div class="d-flex">
                                        <div class="wrapper">
                                            <h3 class="mb-0 font-weight-semibold">${totalfuncionarios}</h3>
                                            <h5 class="mb-0 font-weight-medium text-primary">Funcionarios</h5>
                                            <p class="mb-0 text-muted">+138.97(+0.54%)</p>
                                        </div>
                                        <div class="wrapper my-auto ml-auto ml-lg-4">
                                            %{--<canvas height="50" width="100" id="stats-line-graph-2"></canvas>--}%
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-3 col-md-6 mt-md-0 mt-4">
                                    <div class="d-flex">
                                        <div class="wrapper">
                                            <h3 class="mb-0 font-weight-semibold">${totalreservas}</h3>
                                            <h5 class="mb-0 font-weight-medium text-primary">Reservas Confirmadas</h5>
                                            <p class="mb-0 text-muted">+138.97(+0.54%)</p>
                                        </div>
                                        <div class="wrapper my-auto ml-auto ml-lg-4">
                                            %{--<canvas height="50" width="100" id="stats-line-graph-3"></canvas>--}%
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-3 col-md-6 mt-md-0 mt-4">
                                    <div class="d-flex">
                                        <div class="wrapper">
                                            <h3 class="mb-0 font-weight-semibold">8,155 Mt</h3>
                                            <h5 class="mb-0 font-weight-medium text-primary">Valor Facturado</h5>
                                            <p class="mb-0 text-muted">+138.97(+0.54%)</p>
                                        </div>
                                        <div class="wrapper my-auto ml-auto ml-lg-4">
                                            %{--<canvas height="50" width="100" id="stats-line-graph-4"></canvas>--}%
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-md-8">
                    <div class="row">
                        <div class="col-md-6 grid-margin stretch-card">
                            <div class="card">
                                <div class="card-body pb-0">
                                    <div class="d-flex justify-content-between">
                                        <h4 class="card-title mb-0">Total Clientes</h4>

                                    </div>
                                    <h3 class="font-weight-medium mb-4">184</h3>
                                </div>
                                <canvas class="mt-n4" height="90" id="total-revenue"></canvas>
                            </div>
                        </div>
                        <div class="col-md-6 grid-margin stretch-card">
                            <div class="card">
                                <div class="card-body pb-0">
                                    <div class="d-flex justify-content-between">
                                        <h4 class="card-title mb-0">Total Funcionarios</h4>

                                    </div>
                                    <h3 class="font-weight-medium">7</h3>
                                </div>
                                <canvas class="mt-n3" height="90" id="total-transaction"></canvas>
                            </div>
                        </div>

                                %{--<div class="card-body">--}%
                                    %{--<h4 class="card-title mb-0">Total Valor Facturados</h4>--}%
                                    %{--<div class="d-flex align-items-center justify-content-between w-100">--}%
                                        %{--<p class="mb-0">O Facturamento das reservas esta filtrado atraves de Meses</p>--}%
                                        %{--<div class="dropdown">--}%
                                            %{--<button class="btn btn-outline-secondary dropdown-toggle" type="button" id="dateSorter" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Esse Mes</button>--}%
                                            %{--<div class="dropdown-menu" aria-labelledby="dateSorter">--}%
                                                %{--<div class="dropdown-item" id="market-overview_3">Mensal</div>--}%
                                            %{--</div>--}%
                                        %{--</div>--}%
                                    %{--</div>--}%
                                    %{--<div class="d-flex align-items-end">--}%
                                        %{--<h3 class="mb-0 font-weight-semibold">36,2531.00 </h3>--}%
                                        %{--<p class="mb-0 font-weight-medium mr-2 ml-2 mb-1">MZN</p>--}%
                                    %{--</div>--}%
                                    %{--<canvas class="mt-4" height="100" id="market-overview-chart"></canvas>--}%
                                %{--</div>--}%
                            %{--</div>--}%

                            <div class="col-md-12 grid-margin">
                            <div class="card">
                            <div class="p-4 border-bottom bg-light">
                            <h4 class="card-title mb-0">Mixed Chart</h4>
                            </div>
                            <div class="card-body">
                            <canvas id="mixed-chart" height="100"></canvas>
                            <div class="mr-5" id="mixed-chart-legend"></div>
                            </div>
                            </div>
                            </div>




                    </div>
                </div>

                %{--<div class="col-md-4">--}%
                %{--<div class="row">--}%
                %{--<div class="col-md-12 grid-margin">--}%
                %{--<div class="card">--}%

                %{--</div>--}%
                %{--</div>--}%
                %{--</div>--}%
                %{--</div>--}%
            </div>

        </div>

        <!-- partial -->
    </div>
    <footer class="footer">
        <div class="container-fluid clearfix">
            <span class="text-muted d-block text-center text-sm-left d-sm-inline-block">Copyright © 2023 Intellica  All rights reserved.</span>
            <span class="float-none float-sm-right d-block mt-1 mt-sm-0 text-center"><i class="mdi mdi-heart text-danger"></i>
            </span>
        </div>
    </footer>
    <!-- main-panel ends -->
</div>
<!-- page-body-wrapper ends -->
</div>


</body>
</html>

