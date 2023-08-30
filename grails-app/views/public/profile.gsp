<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <link rel="apple-touch-icon" sizes="76x76" href="assets/img/apple-icon.png">
    <link rel="icon" type="image/png" href="assets/img/favicon.png">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <title>Profile</title>

    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />

    <!--     Fonts and icons     -->
    <link href="http://netdna.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.css" rel="stylesheet">

    <!-- CSS Files -->
    <asset:stylesheet src="css_wizard/bootstrap.min.css" rel="stylesheet"/>
    <asset:stylesheet src="css_wizard/gsdk-bootstrap-wizard.css" rel="stylesheet"/>
    <asset:stylesheet src="css_wizard/demo.css"/>
</head>

<body>
  <div class="image-container set-full-height" style="background-image: url('${resource(dir: 'images', file: 'wizard.jpg')}')">
    <!--   Creative Tim Branding   -->
    <a href="http://creative-tim.com">
        <div class="logo-container">
            %{--<div class="logo">--}%
                %{--<img src="assets/img/new_logo.png">--}%
            %{--</div>--}%
            %{--<div class="brand">--}%
                %{--Creative Tim--}%
            %{--</div>--}%
        </div>
    </a>

    <!--  Made With Get Shit Done Kit  -->
    <a href=# class="made-with-mk">
        <div class="brand">REST </div>
        <div class="made-with"> Made by <strong>INTELLICA</strong></div>
    </a>

    <!--   Big container   -->
    <div class="container">
        <div class="row">
            <div class="col-sm-8 col-sm-offset-2">

                <!--      Wizard container        -->
                <div class="wizard-container">

                    <div class="card wizard-card" data-color="orange" id="wizardProfile">
                        <g:form controller="public" action="saveHospede" method="POST">
                            <!--        You can switch ' data-color="orange" '  with one of the next bright colors: "blue", "green", "orange", "red"          -->

                            <div class="wizard-header">
                                <h3>
                                    <b>Crie</b> SEU PERFIL <br>
                                    <small>Esta informação nos permitirá saber mais sobre você.</small>
                                </h3>
                            </div>

                            <div class="wizard-navigation">
                                <ul>
                                    <li><a href="#about" data-toggle="tab">Sobre</a></li>
                                    <li><a href="#account" data-toggle="tab">Conta</a></li>
                                    <li><a href="#address" data-toggle="tab">Contato</a></li>
                                </ul>

                            </div>

                            <div class="tab-content">
                                <div class="tab-pane" id="about">
                                    <div class="row">
                                        <h4 class="info-text"> Vamos começar com as informações básicas (com validação)</h4>
                                        <div class="col-sm-4 col-sm-offset-1">
                                            <div class="picture-container">
                                                <div class="picture">
                                                    %{--<img src="assets/img/default-avatar.png" class="picture-src" id="wizardPicturePreview" title=""/>--}%
                                                    <asset:image src="default-avatar.png" class="picture-src" id="wizardPicturePreview" />
                                                    <input type="file" id="wizard-picture">
                                                </div>
                                                <h6>Escolha a imagem</h6>
                                            </div>
                                        </div>
                                        <div class="col-sm-6">
                                            <div class="form-group">
                                                <label>Username <small>(required)</small></label>
                                                <input type="text" class="form-control" name="secUser.username" placeholder="20190958">
                                            </div>
                                            <div class="form-group">
                                                <label>Password <small>(required)</small></label>
                                                <input type="password" class="form-control" name="secUser.password" placeholder="*****">
                                            </div>
                                        </div>
                                        <div class="col-sm-10 col-sm-offset-1">
                                            <div class="form-group">
                                                <label>Email <small>(required)</small></label>
                                                <input type="email" class="form-control" id="emailhospede" name="emailHospede" placeholder="andrew@creative-tim.com">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane" id="account">
                                    <h4 class="info-text">Essas informações nos permitirão saber mais sobre a sua Reserva </h4>
                                    <div class="row">
                                        %{--<div class="col-sm-12">--}%
                                            %{--<h4 class="info-text"> Are you living in a nice area? </h4>--}%
                                        %{--</div>--}%
                                        <div class="col-sm-7 col-sm-offset-1">
                                            <div class="form-group">
                                                <label>Nome </label>
                                                <input type="text" class="form-control" id="nomeHospede" name="nomeHospede" placeholder="Wilson">
                                            </div>
                                        </div>
                                        <div class="col-sm-3">
                                            <div class="form-group">
                                                <label>Apelido</label>
                                                <input type="text" class="form-control" id="apedlidoHospede" name="apedlidoHospede" placeholder="Macuacua">
                                            </div>
                                        </div>
                                        <div class="col-sm-5 col-sm-offset-1">
                                            <div class="form-group">
                                                <label>BI</label>
                                                <input type="text" class="form-control" id="bihospede" name="biHospede" placeholder="128709876512F">
                                            </div>
                                        </div>
                                        <div class="col-sm-5">
                                            <div class="form-group">
                                                <label>Pais</label><br>
                                                <select class="form-control" id="nacionalidade"  name="nacionalidadeHospede">
                                                    <option>America</option>
                                                    <option>Italy</option>
                                                    <option>Russia</option>
                                                    <option>Britain</option>
                                                    <option>Mozambique</option>
                                                    <option>South-Africa</option>
                                                    <option>Zambia</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane" id="address">
                                    <div class="row">
                                        <div class="col-sm-12">
                                            <h4 class="info-text">Informações de contacto </h4>
                                        </div>
                                        <div class="col-sm-5 col-sm-offset-1">
                                            <div class="form-group">
                                                <label>Telefone</label>
                                                <input type="number" class="form-control" id="telefone" name="telefoneHospede" placeholder="879465754">
                                            </div>
                                        </div>
                                        <div class="col-sm-5">
                                            <div class="form-group">
                                                <label>Idade</label>
                                                <input type="number" class="form-control" id="idade" name="idadeHospede" placeholder="40">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="wizard-footer height-wizard">
                                <div class="pull-right">
                                    <input type='button' class='btn btn-next btn-fill btn-warning btn-wd btn-sm' name='next' value='Proximo' />
                                    %{--<input type='button' class='btn btn-finish btn-fill btn-warning btn-wd btn-sm' name='finish' value='Finish' />--}%
                                    <fieldset class="form-group">
                                    <g:submitButton name="finish" class="btn btn-finish btn-fill btn-warning btn-wd btn-sm" value="Registar" />
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
        </div><!-- end row -->
    </div> <!--  big container -->

    <div class="footer">
        <div class="container">
            Made with <i class="fa fa-heart heart"></i> by <a href="http://www.creative-tim.com">Intellica</a>
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