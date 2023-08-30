<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <link rel="apple-touch-icon" sizes="76x76" href="assets/img/apple-icon.png">
    <link rel="icon" type="image/png" href="assets/img/favicon.png">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <title>Reserva|RESTE-AND-PEACE</title>

    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />

    <!--     Fonts and icons     -->
    <link href="http://netdna.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.css" rel="stylesheet">

    <asset:stylesheet src="css_wizard/bootstrap.min.css" rel="stylesheet"/>
    <asset:stylesheet src="css_wizard/gsdk-bootstrap-wizard.css" rel="stylesheet"/>
    <asset:stylesheet src="css_wizard/demo.css"/>

</head>

<body>
<div class="image-container set-full-height" style="background-image: url('${resource(dir: 'images', file: 'wizard-boat.jpg')}')">
    <!--   Creative Tim Branding   -->

    <!--   Big container   -->
    <div class="container">
        <div class="row">
            <div class="col-sm-8 col-sm-offset-2">

                <!--      Wizard container        -->
                <div class="wizard-container">
                    <div class="card wizard-card" data-color="azzure" id="wizard">
                        <g:form controller="public" action="pagamentoReserva" method="POST">
                            <!--        You can switch ' data-color="azzure" '  with one of the next bright colors: "blue", "green", "orange", "red"          -->

                            <div class="wizard-header">
                                <h3>
                                    <b>LISTE</b> A SUA RESERVA<br>
                                    <small>Essas informações nos permitirão saber mais sobre sua  reserva.</small>
                                </h3>
                            </div>
                            <div class="wizard-navigation">
                                <ul>
                                    <li><a href="#pagamento" data-toggle="tab">Pagamento</a></li>
                                    <li><a href="#continuacao" data-toggle="tab">Pagamento</a></li>
                                </ul>
                            </div>
                            <div class="tab-content">
                                <div class="tab-pane" id="pagamento">
                                    <div class="row">
                                        <h4 class="info-text"> Faça o pagamento da sua reserva </h4>
                                        <div class="col-sm-5 col-sm-offset-1">
                                            <div class="form-group">
                                                <label>Cartao de Credtido</label>
                                                <input type='number' id="cartaocredito" name="cartaoPagamento" class="form-control" placeholder="(xx) xxxx-xxxx" />
                                            </div>
                                        </div>
                                        <div class="col-sm-5">
                                            <div class="form-group">
                                                <label>Numero de Serie</label>
                                                <input type="text" id="numero" name="numeroSerie"class="form-control" placeholder="(xx) xxxx">
                                            </div>
                                        </div>
                                        <div class="col-sm-5 col-sm-offset-1">
                                            <div class="form-group">
                                                <label for="valorapagar">Valor Total</label>
                                                <input type="number" class="form-control" id="valorapagar" name="valorPagar"  readonly="readonly" value="${valorAPagar}">
                                            </div>
                                        </div>

                                        <div class="col-sm-5" >
                                            <div class="form-group">
                                                <label for="data_entrada">Data Entrada</label>
                                                <input type="text" class="form-control" id="data_entrada" name="dataE" readonly="readonly" placeholder="Check In" value="${checkIN}">
                                            </div>
                                        </div>

                                        <div class="col-sm-5 col-sm-offset-1">
                                                <div class="form-group">
                                                    <label for="data_saida">Data Saida</label>
                                                    <input type="text" class="form-control" id="data_saida" name="dataS" readonly="readonly" placeholder="Check Out" value="${checkOUT}">
                                                </div>
                                        </div>

                                        <div class="col-sm-5">
                                                <div class="form-group">
                                                    <label for="hospede">hospede</label>
                                                    <input type="text" class="form-control" id="hospede" name="hospede" readonly="readonly" value="${hospede}"/>
                                                </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="tab-pane" id="continuacao">
                                    <div class="row">
                                        <h4 class="info-text"> Faça o pagamento da sua reserva </h4>
                                        %{--<div class="col-sm-5 col-sm-offset-1">--}%
                                            %{--<div class="form-group">--}%
                                                %{--<label for="acompanhante">Numero de Acompanhantes</label>--}%
                                                %{--<input type="text" class="form-control" id="acompanhante" name="acompanhante" readonly="readonly" value="${acompanhantes}"/>--}%
                                            %{--</div>--}%
                                        %{--</div>--}%

                                        <div class="col-sm-5">
                                            <div class="form-group">
                                                <label for="criancas">Numero de Criancas</label>
                                                <input type="text" class="form-control" id="criancas" name="numeroCriancas"readonly="readonly" value="${criancas}"/>
                                            </div>
                                        </div>

                                        <div class="col-sm-5 col-sm-offset-1">
                                            <div class="form-group">
                                                <label for="adultos">Numero de Adultos</label>
                                                <input class="form-control" id="adultos" name="numeroAdultos" readonly="readonly" value="${adultos}">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <<div class="wizard-footer">
                            <div class="pull-right">
                                <input type='button' class='btn btn-next btn-fill btn-info btn-wd btn-sm' name='next' value='Proximo' />
                                %{--<input type='button' class='btn btn-finish btn-fill btn-info btn-wd btn-sm' name='finish' value='Finalizar' />--}%
                                <fieldset class="form-group">
                                    <g:submitButton name="finish" class="btn btn-finish btn-fill btn-warning btn-wd btn-sm" value="Pagar" />
                                </fieldset>
                            </div>
                            <div class="pull-left">
                                <input type='button' class='btn btn-previous btn-fill btn-default btn-wd btn-sm' name='previous' value='Anterior' />
                            </div>
                            <div class="clearfix"></div>
                        </div>
                            </g:form>
                    </div>
                </div> <!-- wizard container -->
            </div>
        </div> <!-- row -->
    </div> <!--  big container -->

    <div class="footer">
        <div class="container">
            Made with <i class="fa fa-heart heart"></i> by <a href="http://www.creative-tim.com">Creative Tim</a>. Free download <a href="http://www.creative-tim.com/product/bootstrap-wizard">here.</a>
        </div>
    </div>


</div>

</body>

<!--   Core JS Files   -->
<asset:javascript src="js_wizard/jquery-2.2.4.min.js"/>
<asset:javascript src="js_wizard/bootstrap.min.js"/>
<asset:javascript src="js_wizard/jquery.bootstrap.wizard.js" type="text/javascript"/>

<!--  Plugin for the Wizard -->
<asset:javascript src="js_wizard/gsdk-bootstrap-wizard.js"/>

<!--  More information about jquery.validate here: http://jqueryvalidation.org/	 -->
<asset:javascript src="js_wizard/jquery.validate.min.js"/>

</html>
