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
                        <g:form controller="public" action="gravarPagamento" method="POST">
                        %{--<form onsubmit="" action="" method="" id="formulario">--}%
                            <!--        You can switch ' data-color="azzure" '  with one of the next bright colors: "blue", "green", "orange", "red"          -->

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
                                    <h4 class="info-text">Dados do Pagamento</h4>
                                    <div class="col-sm-5">
                                        <div class="form-group">
                                            <label>Cartao de Credtido</label>
                                            <input type='number' id="cartaocredito" name="cartaoPagamento" class="form-control" placeholder="(xx) xxxx-xxxx" />
                                        </div>
                                    </div>

                                    <div class="col-sm-5 col-sm-offset-1">
                                        <div class="form-group">
                                            <label>Numero de Serie</label>
                                            <input type="text" id="numero" name="numeroSerie"class="form-control" placeholder="(xx) xxxx">
                                        </div>
                                    </div>

                                    <div class="col-sm-5">
                                        <div class="form-group">
                                            <label>Valor Total</label>
                                            <label for="valorapagar">Valor Total</label>
                                            <input type="number" id="valorapagar" name="valorPagar"class="form-control" placeholder="Valor Apagar" value="${valorApagar}">
                                        </div>
                                    </div>

                                    <div class="col-sm-5 col-sm-offset-1">
                                        <div class="form-group">
                                            <label>Valor Total  com IVA</label>
                                            <input type='number'  id="valorapagariva" name="valorApagarIVA"class="form-control" placeholder="Valor Apagar com IVA " value="${valorIVA}"/>
                                        </div>
                                    </div>

                                        <div class="col-sm-5 ">
                                            <div class="form-group">
                                                <label style="display: none;">Nome Hospede</label>
                                                <input style="display:none;" type='text'  id="nomeHospede" name="nomeHospede"class="form-control" placeholder="Valor Apagar com IVA " value="${nomeHospede}"/>
                                            </div>
                                        </div>

                                        <div class="col-sm-5 col-sm-offset-1>
                                            <div class="form-group">
                                                <label style="display: none;">Data Entrada</label>
                                                <input style="display:none;" type='text'  id="dataentrada" name="dataEntrada"class="form-control" placeholder="Valor Apagar com IVA " value="${dataEntrada}"/>
                                            </div>
                                        </div>

                                        <div class="col-sm-5 ">
                                            <div class="form-group">
                                                <label style="display: none;">Nome Hospede</label>
                                                <input style="display:none;" type='text'  id="datasaida" name="dataSaida"class="form-control" placeholder="Valor Apagar com IVA " value="${dataSaida}"/>
                                            </div>
                                        </div>

                            <div class="col-sm-5 col-sm-offset-1 ">
                                <div class="form-group">
                                    <label style="display: none;">Nome Hospede</label>
                                    <input style="display:none;" type='text'  id="apedlidoHospede" name="apedlidoHospede"class="form-control" placeholder="Valor Apagar com IVA " value="${apedlidoHospede}"/>
                                </div>
                            </div>


                            <div class="col-sm-5 ">
                                <div class="form-group">
                                    <label style="display: none;">Nome Hospede</label>
                                    <input style="display:none;" type='text'  id="quarto" name="quarto"class="form-control" placeholder="Valor Apagar com IVA " value="${quarto}"/>
                                </div>
                            </div>
                            <div class="col-sm-5 col-sm-offset-1 ">
                                <div class="form-group">
                                    <label style="display: none;">Nome Hospede</label>
                                    <input style="display:none;" type='text'  id="numeroAcompanhante" name="numeroAcompanhante"class="form-control" placeholder="Valor Apagar com IVA " value="${numeroAcompanhante}"/>
                                </div>
                            </div>
                            <div class="col-sm-5 ">
                                <div class="form-group">
                                    <label style="display: none;">Nome Hospede</label>
                                    <input style="display:none;" type='text'  id="numeroCrianca" name="numeroCrianca"class="form-control" placeholder="Valor Apagar com IVA " value="${numeroCrianca}"/>
                                </div>
                            </div>
                            <div class="col-sm-5 ">
                                <div class="form-group">
                                    <label style="display: none;">Nome Hospede</label>
                                    <input style="display:none;" type='text'  id="numeroAdultos" name="numeroAdultos"class="form-control" placeholder="Valor Apagar com IVA " value="${numeroAdultos}"/>
                                </div>
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
%{--<script>--}%
%{--$(function() {--}%
%{--$( "#formulario" ).change(function() {--}%
%{--//alert("Changed "+$("#entrada option:selected").val())--}%
%{--$.ajax(--}%
%{--{--}%
%{--type: "POST",--}%
%{--url: '${createLink(controller: 'public', action: 'receberdadosFordmulario')}',--}%
%{--data: {--}%
%{--entradaId: $("#entrada option:selected").val()--}%
%{--},--}%
%{--beforeSend: function(){--}%

%{--},--}%
%{--success: function (result) {--}%
%{--//alert(result)--}%
%{--//$("#destinatario").val(""+result);--}%
%{--//$("#destinatario option[value=result]").prop('selected', true);--}%
%{--}--}%
%{--,--}%
%{--error: function( xhr, status ) {--}%
%{--toastr.options = {--}%
%{--"closeButton": true,--}%
%{--"debug": false,--}%
%{--"progressBar": true,--}%
%{--"positionClass": "toast-top-right",--}%
%{--"onclick": null,--}%
%{--"showDuration": "400",--}%
%{--"hideDuration": "1000",--}%
%{--"timeOut": "7000",--}%
%{--"extendedTimeOut": "1000",--}%
%{--"showEasing": "swing",--}%
%{--"hideEasing": "linear",--}%
%{--"showMethod": "fadeIn",--}%
%{--"hideMethod": "fadeOut"--}%
%{--};--}%
%{--toastr.error('Desculpa, foi encontrado um erro.!');--}%
%{--},--}%
%{--complete: function( xhr, status ) {--}%
%{--}--}%
%{--}--}%
%{--)--}%
%{--});--}%
%{--});--}%

%{--</script>--}%
%{--<script>--}%
%{--$(document).ready(function() {--}%
%{--$('#formulario').submit(function( e) {--}%
%{--e.preventDefault(); // Impede o envio padrão do formulário--}%

%{--var dadosFormulario = $(this).serialize(); // Serializa os dados do formulário--}%

%{--$.ajax({--}%
%{--url: "${createLink(controller: 'public', action: 'receberdadosFordmulario')}", // URL do controlador e ação--}%
%{--type: "POST",--}%
%{--data: dadosFormulario,--}%
%{--success: function(response) {--}%
%{--// Lógica a ser executada em caso de sucesso--}%
%{--},--}%
%{--error: function(xhr, textStatus, errorThrown) {--}%
%{--// Lógica a ser executada em caso de erro--}%
%{--}--}%
%{--});--}%
%{--});--}%
%{--})--}%
%{--</script>--}%


<!--   Core JS Files   -->

<asset:javascript src="js_wizard/jquery-2.2.4.min.js"/>
<asset:javascript src="js_wizard/bootstrap.min.js"/>
<asset:javascript src="js_wizard/jquery.bootstrap.wizard.js" type="text/javascript"/>

<!--  Plugin for the Wizard -->

<asset:javascript src="js_wizard/gsdk-bootstrap-wizard.js"/>
<!--  More information about jquery.validate here: http://jqueryvalidation.org/	 -->

<asset:javascript src="js_wizard/jquery.validate.min.js"/>

</html>



