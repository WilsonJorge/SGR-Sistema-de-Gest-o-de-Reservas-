<%@ page import="projecto.intellica.hotel.Quarto; grails.converters.JSON; projecto.intellica.hotel.Hospede" %>
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
                    <g:form controller="public" action="saveReserva" method="POST">
                            <!--        You can switch ' data-color="azzure" '  with one of the next bright colors: "blue", "green", "orange", "red"          -->

                            <div class="wizard-header">
                                <h3>
                                    <b>LISTE</b> A SUA RESERVA<br>
                                    <small>Essas informações nos permitirão saber mais sobre sua  reserva.</small>
                                </h3>
                            </div>
                            <div class="wizard-navigation">
                                <ul>
                                    <li><a href="#reserva" data-toggle="tab">Detalhes</a></li>
                                    <li><a href="#acompanhante" data-toggle="tab">Acompanhante</a></li>
                                </ul>
                            </div>
                            <div class="tab-content">
                                <div class="tab-pane" id="reserva">
                                    <div class="row">
                                        <div class="col-sm-12">
                                            <h4 class="info-text"> Vamos começar com os detalhes básicos</h4>
                                        </div>
                                        <div class="col-sm-5 col-sm-offset-1">
                                            <div class="form-group">
                                                <label>Nome do Hospede</label>
                                                %{--<g:select name="hospede" from="${projecto.intellica.hotel.Hospede.executeQuery('SELECT h FROM Hospede h ORDER BY h.id DESC', [max: 1])}" class="form-control" optionKey="id" value="${this.reserva.hospede?.id}""/>--}%
                                                <g:select name="hospede.id" from="${projecto.intellica.hotel.Hospede.executeQuery('SELECT h FROM Hospede h ORDER BY h.id DESC', [max: 1])}" optionKey="id" class="form-control"/>
                                                %{--<input type='text'  id="hospede" name="hospede" from="${projecto.intellica.hotel.Hospede.executeQuery('SELECT h FROM Hospede h ORDER BY h.id DESC', [max: 1])}" class="form-control" />--}%
                                            </div>
                                        </div>

                                        <div class="col-sm-5">
                                            <div class="form-group">
                                                <label>Data Entrada</label>
                                                <input type='date'  id="data_entrada" name="dataE"class="form-control" placeholder="Digite a data de Entrada " />
                                            </div>
                                        </div>
                                        <div class="col-sm-5 col-sm-offset-1">
                                            <div class="form-group">
                                                <label>Data Saida</label>
                                                <input type='date'  id="data_saida" name="dataS"class="form-control" placeholder="Digite a data de Saida " />
                                            </div>
                                        </div>
                                        <div class="col-sm-5 ">
                                                        <div class="form-group">
                                                            <label>Tipo de Quarto</label>
                                                            <input type="text" id="tipoquarto" name="tipoQuarto"class="form-control" readonly="readonly" value="${tipoQuarto}">
                                                        </div>
                                        </div>

                                        %{--<div class="col-sm-5 col-sm-offset-1">--}%
                                            %{--<div class="form-group">--}%
                                                %{--<label>Numero do Quarto</label>--}%
                                                %{--<input type="text" id="quartos" name="quartos"class="form-control" readonly="readonly" value="${numeroQuarto}" optionKey="id" >--}%
                                            %{--</div>--}%
                                        %{--</div>--}%
                                        <div class="col-sm-5 col-sm-offset-1">
                                            <div class="form-group">
                                                <label>Número do Quarto</label>
                                                <g:select name="quartos" from="${projecto.intellica.hotel.Quarto.executeQuery("SELECT NEW MAP(q.id as id, q.numeroQuarto as numero) FROM Quarto q WHERE q.estado = :estado", [estado: Quarto.ESTADO_DISPONIVEL])
                                                }" optionKey="id" optionValue="numero" class="form-control"/>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                                <div class="tab-pane" id="acompanhante">
                                    <h4 class="info-text">Você tem  um Acompanhante? </h4>
                                    <div class="row">
                                        <div class="col-sm-12">
                                        </div>
                                        %{--<div class="col-sm-5 col-sm-offset-1">--}%
                                            %{--<label>Numero dos Acompanhantes</label>--}%
                                            %{--<select class="form-control" id="acompanhantes" name="numeroAcompanhante">--}%

                                                %{--<option value="1">1</option>--}%
                                                %{--<option value="2">2</option>--}%
                                                %{--<option value="3">3</option>--}%
                                                %{--<option value="4">4</option>--}%
                                                %{--<option value="5">5</option>--}%
                                                %{--<option value="6">6</option>--}%
                                            %{--</select>--}%
                                        %{--</div>--}%

                                        <div class="col-sm-5">
                                            <label>Criancas</label>
                                            <select class="form-control" id="criancas" name="numeroCrianca">
                                                <option value="1">0</option>
                                                <option value="1">1</option>
                                                <option value="2">2</option>
                                                <option value="3">3</option>
                                                <option value="3">4</option>
                                                <option value="3">5</option>
                                            </select>
                                        </div>

                                        <div class="col-sm-5 col-sm-offset-1">
                                            <label>Adultos</label>
                                            <select class="form-control" id="adultos" name="numeroAdultos">
                                                <option value="1">0</option>
                                                <option value="1">1</option>
                                                <option value="2">2</option>
                                                <option value="3">3</option>
                                                <option value="3">4</option>
                                                <option value="3">5</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="wizard-footer">
                                <div class="pull-right">
                                    <input type='button' class='btn btn-next btn-fill btn-info btn-wd btn-sm' name='next' value='Proximo' />
                                    %{--<input type='button' class='btn btn-finish btn-fill btn-info btn-wd btn-sm' name='finish' value='Finalizar' />--}%
                                    <fieldset class="form-group">
                                        <g:submitButton name="finish" class="btn btn-finish btn-fill btn-warning btn-wd btn-sm" value="Reservar" />
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
