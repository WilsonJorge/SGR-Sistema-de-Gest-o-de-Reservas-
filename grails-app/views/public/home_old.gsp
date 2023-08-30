<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Hotel Rest-And-Peace</title>

    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,400italic,600,700' rel='stylesheet' type='text/css'>
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <asset:stylesheet src="/reserva/bootstrap.min.css"/>
    <asset:stylesheet src="/reserva/flexslider.css"/>
    %{--<link href="css/templatemo-style.css" rel="stylesheet">--}%
    <asset:stylesheet src="/reserva/templatemo-style.css"/>



</head>
<body class="tm-gray-bg">
<!-- Header -->
<div class="tm-header">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 col-md-4 col-sm-3 tm-site-name-container">
                <a href="#" class="tm-site-name">Rest-And-Peace</a>
            </div>
            <div class="col-lg-6 col-md-8 col-sm-9">
                <div class="mobile-menu-icon">
                    <i class="fa fa-bars"></i>
                </div>
                <nav class="tm-nav">
                    <ul>
                        <li><a href="index.gsp"></a></li>
                        <li><a href="#">Registar</a></li>
                        <li><a href="#">Iniciar Sessao</a></li>
                    </ul>
                </nav>
            </div>
        </div>
    </div>
</div>

<!-- Banner -->
<section class="tm-banner">
    <!-- Flexslider -->
    <div class="flexslider flexslider-banner">
        <ul class="slides">
            <li>
                <div class="tm-banner-inner">
                    <h1 class="tm-banner-title">UM DOS MAIS  <span class="tm-yellow-text">LUXOSOS HOTEIS</span> DO PAIS</h1>
                    <p class="tm-banner-subtitle">VEJA OS DETALHES DA ACOMODACAO</p>

                </div>
                <asset:image src="banner-2.jpg"/>
            </li>
            <li>
                <div class="tm-banner-inner">
                    <h1 class="tm-banner-title"O MELHOR<span class="tm-yellow-text">HOTEL </span> PARA SUAS FERIAS</h1>
                    <p class="tm-banner-subtitle">HOTEL CINCO ESTRELAS COM VISTA AO MAR</p>

                </div>
                <asset:image src="banner-3.jpg" />
            </li>
            <li>
                <div class="tm-banner-inner">
                    <h1 class="tm-banner-title">HOSPEDE-SE <span class="tm-yellow-text">CONNOSCO</span> JA</h1>
                    <p class="tm-banner-subtitle">COBRIMOS COM O MELHOR PRECO</p>
                </div>
                <asset:image src="banner-1.jpg" />
            </li>
        </ul>
    </div>
</section>

<!-- gray bg -->
<section class="container tm-home-section-1" id="more">
    <div class="row">


        <div class="col-lg-4 col-md-4 col-sm-6">
            <div class="tm-home-box-1 tm-home-box-1-2 tm-home-box-1-center">

            </div>
        </div>

        <div class="col-lg-4 col-md-4 col-sm-6">
            <!-- Nav tabs -->
            <div class="tm-home-box-1">
                %{--<ul class="nav nav-tabs tm-white-bg" role="tablist" id="hotelCarTabs">--}%
                    %{--<li role="presentation" class="active">--}%
                        %{--<a href="#hotel" aria-controls="hotel" role="tab" data-toggle="tab">Hotel</a>--}%
                    %{--</li>--}%
                %{--</ul>--}%

                <!-- Tab panes -->
                %{--<div class="tab-content">--}%
                    %{--<div role="tabpanel" class="tab-pane fade in active tm-white-bg" id="hotel">--}%
                        %{--<div class="tm-search-box effect2">--}%
                            %{--<form action="#" method="post" class="hotel-search-form">--}%
                                %{--<div class="tm-form-inner">--}%
                                    %{--<div class="form-group">--}%
                                        %{--<select class="form-control">--}%
                                            %{--<option value="">-- Select Hotel -- </option>--}%
                                            %{--<option value="shangrila">Rest and Peace</option>--}%
                                        %{--</select>--}%
                                    %{--</div>--}%
                                    %{--<div class="form-group">--}%
                                        %{--<div class='input-group date' id='datetimepicker1'>--}%
                                            %{--<input type='text' class="form-control" placeholder="Data de Entrada" />--}%
                                            %{--<span class="input-group-addon">--}%
                                                %{--<span class="fa fa-calendar"></span>--}%
                                            %{--</span>--}%
                                        %{--</div>--}%
                                    %{--</div>--}%
                                    %{--<div class="form-group">--}%
                                        %{--<div class='input-group date' id='datetimepicker2'>--}%
                                            %{--<input type='text' class="form-control" placeholder="Data de Saida" />--}%
                                            %{--<span class="input-group-addon">--}%
                                                %{--<span class="fa fa-calendar"></span>--}%
                                            %{--</span>--}%
                                        %{--</div>--}%
                                    %{--</div>--}%
                                    %{--<div class="form-group margin-bottom-0">--}%
                                        %{--<select class="form-control">--}%
                                            %{--<option value="">-- Hospedes -- </option>--}%
                                            %{--<option value="1">1</option>--}%
                                            %{--<option value="2">2</option>--}%
                                            %{--<option value="3">3</option>--}%
                                            %{--<option value="4">4</option>--}%
                                            %{--<option value="5p">5+</option>--}%
                                        %{--</select>--}%
                                    %{--</div>--}%
                                %{--</div>--}%
                                %{--<div class="form-group tm-yellow-gradient-bg text-center">--}%
                                    %{--<button type="submit" name="submit" class="tm-yellow-btn">Verificar Reserva</button>--}%
                                %{--</div>--}%
                            %{--</form>--}%
                        %{--</div>--}%
                    %{--</div>--}%
                    %{--<div role="tabpanel" class="tab-pane fade tm-white-bg" id="car">--}%
                        %{--<div class="tm-search-box effect2">--}%
                            %{--<form action="#" method="post" class="hotel-search-form">--}%
                                %{--<div class="tm-form-inner">--}%
                                    %{--<div class="form-group">--}%
                                        %{--<div class='input-group date-time' id='datetimepicker3'>--}%
                                            %{--<input type='text' class="form-control" placeholder="Pickup Date" />--}%
                                            %{--<span class="input-group-addon">--}%
                                                %{--<span class="fa fa-calendar"></span>--}%
                                            %{--</span>--}%
                                        %{--</div>--}%
                                    %{--</div>--}%
                                    %{--<div class="form-group">--}%
                                        %{--<div class='input-group date-time' id='datetimepicker4'>--}%
                                            %{--<input type='text' class="form-control" placeholder="Return Date" />--}%
                                            %{--<span class="input-group-addon">--}%
                                                %{--<span class="fa fa-calendar"></span>--}%
                                            %{--</span>--}%
                                        %{--</div>--}%
                                    %{--</div>--}%
                                %{--</div>--}%
                            %{--</form>--}%
                        %{--</div>--}%
                    %{--</div>--}%
                %{--</div>--}%
            </div>
        </div>


        <div class="col-lg-4 col-md-4 col-sm-6">
            <div class="tm-home-box-1 tm-home-box-1-2 tm-home-box-1-right">

            </div>
        </div>
    </div>

    <div class="section-margin-top">
        <div class="row">
            <div class="tm-section-header">
                <div class="col-lg-3 col-md-3 col-sm-3"><hr></div>
                <div class="col-lg-6 col-md-6 col-sm-6"><h2 class="tm-section-title">Quarto Disponiveis</h2></div>
                <div class="col-lg-3 col-md-3 col-sm-3"><hr></div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                <div class="tm-tours-box-1">
                    <asset:image src="1000_F_48056228_zGE2j1BwJ0mXkTSdo29WID95oxNZmUqb.jpg" alt="image" class="img-responsive"/>
                    <div class="tm-tours-box-1-info">
                        <div class="tm-tours-box-1-info-left">
                            <p class="text-uppercase margin-bottom-20">Quarto Single</p>
                            <p class="gray-text">2800 Mt/Dia</p>
                        </div>
                        <div class="tm-tours-box-1-info-right">
                            <p class="gray-text tours-1-description">Com 1 cama de solteiro,vista da piscina,Ar-condicionado,banheiro no quarto e tv de tela plena.</p>

                        </div>
                    </div>
                    <div class="tm-tours-box-1-link">
                        <div class="tm-tours-box-1-link-left">

                        </div>
                        <a class="tm-tours-box-1-link-right" href="${createLink(controller: 'public', action: 'adicionarHospede')}">Reservar</a>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                <div class="tm-tours-box-1">
                    <asset:image src="1000_F_48056123_mJSGdq7oKfRag8Q2UEZ0jGHyjH7AdPsF.jpg" al="image" alt="image" class="img-responsive"/>

                    <div class="tm-tours-box-1-info">
                        <div class="tm-tours-box-1-info-left">
                            <p class="text-uppercase margin-bottom-20">Quarto Double</p>
                            <p class="gray-text">3800 Mt/Dia</p>
                        </div>
                        <div class="tm-tours-box-1-info-right">
                            <p class="gray-text tours-1-description">Com cama de casal extra-grande,duas camas de solteiro, ar-condicionado , banheiro no quarto.</p>
                        </div>
                    </div>
                    <div class="tm-tours-box-1-link">
                        <div class="tm-tours-box-1-link-left">

                        </div>
                        <a class="tm-tours-box-1-link-right" href="${createLink(controller: 'public', action: 'registarHospede')}">Reservar</a>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                <div class="tm-tours-box-1">
                    <asset:image src="design-moderno-apartamento-com-quarto-e-sala-de-estar_1262-12375.avif" al="image" alt="image" class="img-responsive"/>
                    <div class="tm-tours-box-1-info">
                        <div class="tm-tours-box-1-info-left">
                            <p class="text-uppercase margin-bottom-20">Quarto Twin</p>
                            <p class="gray-text">4800 Mt/Dia</p>
                        </div>
                        <div class="tm-tours-box-1-info-right">
                            <p class="gray-text tours-1-description">Com duas camas de solteiro,vista da piscina, ar-condicionado, banheiro no quarto e tv de tela plena.</p>
                        </div>
                    </div>
                    <div class="tm-tours-box-1-link">
                        <div class="tm-tours-box-1-link-left">

                        </div>
                        <a class="tm-tours-box-1-link-right" href="${createLink(controller: 'public', action: 'registarHospede')}">Reservar</a>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                <div class="tm-tours-box-1">
                    <asset:image src="quarto-de-luxo-de-um-hotel-5-estrelas_677754-5354.jpg" al="image" alt="image" class="img-responsive"/>
                    <div class="tm-tours-box-1-info">
                        <div class="tm-tours-box-1-info-left">
                            <p class="text-uppercase margin-bottom-20">Suite de Lua de Mel</p>
                            <p class="gray-text">8500 Mt/Dia</p>
                        </div>
                        <div class="tm-tours-box-1-info-right">
                            <p class="gray-text tours-1-description">Com uma cama casal extra-grande,petalas de rosas pelo quarto,musica classicae Champagne .</p>
                        </div>
                    </div>
                    <div class="tm-tours-box-1-link">
                        <div class="tm-tours-box-1-link-left">

                        </div>
                        <a class="tm-tours-box-1-link-right" href="${createLink(controller: 'public', action: 'registarHospede')}">Reservar</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<footer class="tm-black-bg">
    <div class="container">
        <div class="row">
            <p class="tm-copyright-text">Copyright &copy; 2023 INTELLICA

            | Designed by Wilson  and Francisco</p>
        </div>
    </div>
</footer>
<asset:javascript src="jquery-1.11.2.min.js"/>      		<!-- jQuery -->
<asset:javascript src="moment.js"/>							<!-- moment.js -->
<asset:javascript src="bootstrap.min.js"/>					<!-- bootstrap js -->
<asset:javascript src="bootstrap-datetimepicker.min.js"/>	<!-- bootstrap date time picker js, http://eonasdan.github.io/bootstrap-datetimepicker/ -->
<asset:javascript src="jquery.flexslider-min.js"/>
<asset:javascript src="templatemo-script.js"/>      		<!-- Templatemo Script -->
<script>
    // HTML document is loaded. DOM is ready.
    $(function() {

        $('#hotelCarTabs a').click(function (e) {
            e.preventDefault()
            $(this).tab('show')
        })

        $('.date').datetimepicker({
            format: 'MM/DD/YYYY'
        });
        $('.date-time').datetimepicker();

        // https://css-tricks.com/snippets/jquery/smooth-scrolling/
        $('a[href*=#]:not([href=#])').click(function() {
            if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') && location.hostname == this.hostname) {
                var target = $(this.hash);
                target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
                if (target.length) {
                    $('html,body').animate({
                        scrollTop: target.offset().top
                    }, 1000);
                    return false;
                }
            }
        });
    });

    // Load Flexslider when everything is loaded.
    $(window).load(function() {
        $('.flexslider').flexslider({
            controlNav: false
        });
    });
</script>
</body>
</html>
