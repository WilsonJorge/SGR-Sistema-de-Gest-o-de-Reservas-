<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <link rel="apple-touch-icon" sizes="76x76" href="assets/img/apple-icon.png">
    <link rel="icon" type="image/png" href="assets/img/favicon.png">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <title>Dados da Reserva</title>

    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />

    <!--     Fonts and icons     -->
    <link href="http://netdna.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.css" rel="stylesheet">

    <!-- CSS Files -->
    %{--<link href="assets/css/bootstrap.min.css" rel="stylesheet" />--}%
    <asset:stylesheet src="/css_wizard/bootstrap.min.css" rel="stylesheet"/>
    <asset:stylesheet src="/css_wizard/gsdk-bootstrap-wizard.css" rel="stylesheet"/>
    <asset:stylesheet src="reserva/StyleReserva.css"/>


    <!-- CSS Just for demo purpose, don't include it in your project -->
    <link href="assets/css/demo.css" rel="stylesheet" />
    <asset:stylesheet src="/css_wizard/demo.css" rel="stylesheet"/>

</head>

<body>
<div class="image-container set-full-height" style="background-color: black">
    <!--   Creative Tim Branding   -->
    <a href="http://creative-tim.com">
        <div class="logo-container">
            <div class="logo">
                <asset:image src="face17.jpg"/>
            </div>
            <div class="brand">
                Francisco
            </div>
        </div>
    </a>

    <!--   Big container   -->
    <div class="container">
        <div class="row">
        <div class="col-sm-8 col-sm-offset-2">

            <!--      Wizard container        -->
        <div class="wizard-container">
        <div class="card wizard-card" data-color="azzure" id="wizard">
            <g:form controller="public" action="registarReserva" method="POST">
                <div class="wizard-header">
                    <h3>
                        <b>FAÇA</b> A SUA RESERVA <br>
                        <small>Essas informações nos permitirão saber mais sobre o sua Reserva.</small>
                    </h3>
                </div>
                <div class="wizard-navigation">
                    <ul>
                        <li><a href="#pagamento" data-toggle="tab">Pagamento</a></li>
                    </ul>
                </div>
                <div class="tab-pane" id="pagamento">
                    <h4 class="info-text">Dados da Reserva</h4>

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

                    <div class="col-sm-5">
                        <div class="form-group">
                            <label>Tipo de Quarto</label>
                            <input type="text" id="tipoquarto" name="tipoQuarto"class="form-control" placeholder="Tipo de Quarto" value="">
                        </div>
                    </div>

                    <div class="col-sm-5 col-sm-offset-1">
                        <label>Numero dos Acompanhantes</label>
                        <select class="form-control" id="acompanhantes" name="numeroAcompanhante">

                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                            <option value="6">6</option>
                        </select>
                    </div>


                    <div class="col-sm-5">
                        <label>Criancas</label>
                        <select class="form-control" id="criancas" name="numeroCrianca">
                            <option value="1">0</option>
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                        </select>
                    </div>

                    <div class="col-sm-5 col-sm-offset-1">
                        <label>Adultos</label>
                        <select class="form-control" id="adultos" name="numeroAdultos">
                            <option value="1">0</option>
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                        </select>
                    </div>
                </div>
            </div>

                <fieldset class="buttons">

                    <button type="submit" class="reservar">Fazer Pagameneto</button>

                </fieldset>
            %{--<button type="button" id="save" name="save">Save</button>--}%
            </g:form>
        %{--</form>--}%
        </div>
    </div> <!-- wizard container -->
</div>
</div> <!-- row -->
</div> <!--  big container -->

<div class="footer">
    <div class="container">
        Developt by<i class="fa fa-heart heart"></i> Papa and <a href="#">Wilson</a>
    </div>
</div>


</div>

</body>

<script type="text/javascript">
    $( document ).ready( function() {
        $( "#save" ).click( function ( event ){
            $.ajax( {
                url: "${g.createLink( controller: 'public', action:'receberdadosFordmulario')}",
                type: "post",
                data:  $( '#eventForm' ).serialize(),
                success: function() {
                    $( "#resultDiv" ).addClass( 'alert alert-info' ).append( 'Successfully saved event' )
                },
                error: function(xhr) {
                    $( "#resultDiv" ).addClass( 'alert alert-danger' ).append( 'Error saving event' )
                }
            } );
        });
    });
</script>

<!--   Core JS Files   -->

<asset:javascript src="js_wizard/jquery-2.2.4.min.js"/>
<asset:javascript src="js_wizard/bootstrap.min.js"/>
<asset:javascript src="js_wizard/jquery.bootstrap.wizard.js" type="text/javascript"/>

<!--  Plugin for the Wizard -->

<asset:javascript src="js_wizard/gsdk-bootstrap-wizard.js"/>
<!--  More information about jquery.validate here: http://jqueryvalidation.org/	 -->

<asset:javascript src="js_wizard/jquery.validate.min.js"/>

</html>




%{--<!doctype html>--}%
%{--<html lang="en">--}%
%{--<head>--}%
    %{--<meta charset="utf-8" />--}%
    %{--<link rel="apple-touch-icon" sizes="76x76" href="assets/img/apple-icon.png">--}%
    %{--<link rel="icon" type="image/png" href="assets/img/favicon.png">--}%
    %{--<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />--}%
    %{--<title>Dados da Reserva</title>--}%

    %{--<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />--}%
    %{--<meta name="viewport" content="width=device-width" />--}%

    %{--<!--     Fonts and icons     -->--}%
    %{--<link href="http://netdna.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.css" rel="stylesheet">--}%

    %{--<!-- CSS Files -->--}%
    %{--<link href="assets/css/bootstrap.min.css" rel="stylesheet" />--}%
    %{--<asset:stylesheet src="/css_wizard/bootstrap.min.css" rel="stylesheet"/>--}%
    %{--<asset:stylesheet src="/css_wizard/gsdk-bootstrap-wizard.css" rel="stylesheet"/>--}%
    %{--<asset:stylesheet src="reserva/StyleReserva.css"/>--}%


    %{--<!-- CSS Just for demo purpose, don't include it in your project -->--}%
    %{--<link href="assets/css/demo.css" rel="stylesheet" />--}%
    %{--<asset:stylesheet src="/css_wizard/demo.css" rel="stylesheet"/>--}%

%{--</head>--}%

%{--<body>--}%
%{--<div class="image-container set-full-height" style="background-color: black">--}%
    %{--<!--   Creative Tim Branding   -->--}%
    %{--<a href="http://creative-tim.com">--}%
        %{--<div class="logo-container">--}%
            %{--<div class="logo">--}%

                %{--<asset:image src="face17.jpg"/>--}%
            %{--</div>--}%
            %{--<div class="brand">--}%
                %{--Francisco--}%
            %{--</div>--}%
        %{--</div>--}%
    %{--</a>--}%

    %{--<!--   Big container   -->--}%
    %{--<div class="container">--}%
        %{--<div class="row">--}%
            %{--<div class="col-sm-8 col-sm-offset-2">--}%

                %{--<!--      Wizard container        -->--}%
                %{--<div class="wizard-container">--}%
                    %{--<div class="card wizard-card" data-color="azzure" id="wizard">--}%
                        %{--<g:form controller="public" action="registarReserva" method="POST">--}%
                        %{--<form onsubmit="" action="" method="" id="formulario">--}%
                            %{--<!--        You can switch ' data-color="azzure" '  with one of the next bright colors: "blue", "green", "orange", "red"          -->--}%

                            %{--<div class="wizard-header">--}%
                                %{--<h3>--}%
                                    %{--<b>FAÇA</b> A SUA RESERVA <br>--}%
                                    %{--<small>Essas informações nos permitirão saber mais sobre o sua Reserva.</small>--}%
                                %{--</h3>--}%
                            %{--</div>--}%
                            %{--<div class="wizard-navigation">--}%
                                %{--<ul>--}%
                                    %{--<li><a href="#reserva" data-toggle="tab">Reserva</a></li>--}%
                                %{--</ul>--}%
                            %{--</div>--}%
                            %{--<div class="tab-content">--}%
                                %{--<div class="tab-pane" id="reserva">--}%
                                    %{--<g:render template="reserva"></g:render>--}%
                                %{--</div>--}%
                            %{--</div>--}%

                            %{--<fieldset class="buttons">--}%
                                %{--<button type="submit" name="submit" class="tm-yellow-btn"><a href="${createLink(controller: 'public', action: 'redirectToMyView')}">Voltar</a></button>--}%
                                %{--<g:submitButton name="Proximo" value="Proximo" class="tm-yellow-btn "/>--}%
                                %{--<button type="submit" class="reservar">Finalizar</button>--}%
                                %{--<button type="submit" name="submit" class="tm-yellow-btn"><a href="${createLink(controller: 'public', action: 'redirectToMyView')}">Voltar</a></button>--}%
                            %{--</fieldset>--}%
                        %{--</g:form>--}%
                        %{--</form>--}%
                    %{--</div>--}%
                %{--</div> <!-- wizard container -->--}%
            %{--</div>--}%
        %{--</div> <!-- row -->--}%
    %{--</div> <!--  big container -->--}%

    %{--<div class="footer">--}%
        %{--<div class="container">--}%
            %{--Developt by<i class="fa fa-heart heart"></i> Papa and <a href="#">Wilson</a>--}%
        %{--</div>--}%
    %{--</div>--}%


%{--</div>--}%

%{--</body>--}%

%{--<script type="text/javascript">--}%
    %{--$( document ).ready( function() {--}%
        %{--$( "#save" ).click( function ( event ){--}%
            %{--$.ajax( {--}%
                %{--url: "${g.createLink( controller: 'public', action:'receberdadosFordmulario')}",--}%
                %{--type: "post",--}%
                %{--data:  $( '#eventForm' ).serialize(),--}%
                %{--success: function() {--}%
                    %{--$( "#resultDiv" ).addClass( 'alert alert-info' ).append( 'Successfully saved event' )--}%
                %{--},--}%
                %{--error: function(xhr) {--}%
                    %{--$( "#resultDiv" ).addClass( 'alert alert-danger' ).append( 'Error saving event' )--}%
                %{--}--}%
            %{--} );--}%
        %{--});--}%
    %{--});--}%
%{--</script>--}%


%{--<asset:javascript src="js_wizard/jquery-2.2.4.min.js"/>--}%
%{--<asset:javascript src="js_wizard/bootstrap.min.js"/>--}%
%{--<asset:javascript src="js_wizard/jquery.bootstrap.wizard.js" type="text/javascript"/>--}%

%{--<!--  Plugin for the Wizard -->--}%

%{--<asset:javascript src="js_wizard/gsdk-bootstrap-wizard.js"/>--}%
%{--<!--  More information about jquery.validate here: http://jqueryvalidation.org/	 -->--}%

%{--<asset:javascript src="js_wizard/jquery.validate.min.js"/>--}%

%{--</html>--}%
