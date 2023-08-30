<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Hotel Rest-And-Peace</title>

    <!--Links Css-->
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
                        <li><g:link controller="public" action="registarHospedeOnline">Registar</g:link></li>
                        %{--<li><g:link controller="public" action="registarHospedeOnline">Registar</g:link></li>--}%
                        <li><g:link controller = "login" action = "auth">Login</g:link></li>
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

    <div class="section-margin-top">
        <div class="row">
            <div class="tm-section-header">
                <div class="col-lg-3 col-md-3 col-sm-3"><hr></div>
                <div class="col-lg-6 col-md-6 col-sm-6"><h2 class="tm-section-title">Os Nossos Brindes</h2></div>
                <div class="col-lg-3 col-md-3 col-sm-3"><hr></div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                <div class="tm-tours-box-1">
                    <asset:image src="slide2.jpg" alt="image" class="img-responsive"/>
                    <div class="tm-tours-box-1-info">
                        <div class="tm-tours-box-1-info-left">
                            <p class="text-uppercase margin-bottom-20">Camping</p>
                            %{--<p class="gray-text">2800 Mt/Dia</p>--}%
                        </div>
                        <div class="tm-tours-box-1-info-right">
                            <p class="gray-text tours-1-description">Damos como Brinde  Camping aos nossos Hospedes .</p>

                        </div>
                    </div>
                    <div class="tm-tours-box-1-link">
                        <div class="tm-tours-box-1-link-left">

                        </div>
                        <a class="tm-tours-box-1-link-right"></a>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                <div class="tm-tours-box-1">
                    <asset:image src="slide5 (1).jpg" al="image" alt="image" class="img-responsive"/>

                    <div class="tm-tours-box-1-info">
                        <div class="tm-tours-box-1-info-left">
                            <p class="text-uppercase margin-bottom-20">Team Building</p>
                            %{--<p class="gray-text">3800 Mt/Dia</p>--}%
                        </div>
                        <div class="tm-tours-box-1-info-right">
                            <p class="gray-text tours-1-description">Damos como Brinde  Team Bulding aos nossos Hospedes </p>
                        </div>
                    </div>
                    <div class="tm-tours-box-1-link">
                        <div class="tm-tours-box-1-link-left">

                        </div>
                        <a class="tm-tours-box-1-link-right"></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

                       <!--TESTENHUMAS-->

<section class="tm-white-bgg section-padding-bottom">
    <div class="container">


        <div class="tm-section-header section-margin-top">
            <div class="col-lg-4 col-md-3 col-sm-3"><hr></div>
            <div class="col-lg-4 col-md-6 col-sm-6"><h2 class="tm-section-title">Testemunhas</h2></div>
            <div class="col-lg-4 col-md-3 col-sm-3"><hr></div>
        </div>

        <div class="row">
            <!-- Testimonial -->

            <div class="col-lg-12">
                <div class="tm-testimonials-box">
                    <h3 class="tm-testimonials-title">Camping</h3>
                    <div class="tm-testimonials-content">
                        <div class="tm-testimonial">
                            <p>"Foi uma aventura incrivel participar da melhor aventura de Acampamento."</p>
                            <strong class="text-uppercase">Ivan Patel</strong>
                        </div>
                        <div class="tm-testimonial">
                            <p>"Camping melhor cena, foi uma das melhores experiências no Hotel Rest and Peace"</p>
                            <strong class="text-uppercase">Sydney Madope</strong>
                        </div>
                        <div class="tm-testimonial">
                            <p>"Melhor acampamento da vida minha ,Rest and Peace é a vibe, é mae da natureza"<p>
                            <strong class="text-uppercase">Yuran Langa</strong>
                        </div>
                    </div>
                </div>

                <div class="tm-testimonials-box">
                    <h3 class="tm-testimonials-title">Team Building</h3>
                    <div class="tm-testimonials-content">
                        <div class="tm-testimonial">
                            <p>"Foi uma aventura incrivel participar do Team Bulding."</p>
                            <strong class="text-uppercase">Firmino Massango</strong>
                        </div>
                        <div class="tm-testimonial">
                            <p>"Amei bastante Team Builiding"</p>
                            <strong class="text-uppercase">Priscilda</strong>
                        </div>
                        <div class="tm-testimonial">
                            <p>"Peace we wana bareeeee"<p>
                            <strong class="text-uppercase">Dercio Pale</strong>
                        </div>
                    </div>
                </div>
                <div class="tm-testimonials-box">
                    <h3 class="tm-testimonials-title">Hotel</h3>
                    <div class="tm-testimonials-content">
                        <div class="tm-testimonial">
                            <p>"Aconselho,o Rest and Peace é o melhor hotel para passar as suas Ferias."</p>
                            <strong class="text-uppercase">Nhambe</strong>
                        </div>
                        <div class="tm-testimonial">
                            <p>"Estimei Bastante passar as minhas Ferias do verao no hotel Rest and Peace foi muito bem recebida"</p>
                            <strong class="text-uppercase">Daniela</strong>
                        </div>
                        <div class="tm-testimonial">
                            <p>"Rest And Peace e a Cena ,Bebida,comida altamente Qualificada "<p>
                            <strong class="text-uppercase">Edson Muianga</strong>
                        </div>
                    </div>
                </div>

                        <div class="tm-testimonials-box">
                            <h3 class="tm-testimonials-title">Funcionarios</h3>
                            <div class="tm-testimonials-content">
                                <div class="tm-testimonial">
                                    <p>"Gostei Muito do tratamento dos Funcionarios,altamente qualificados sempre preocupados com o bem estar dos Hospedes."</p>
                                    <strong class="text-uppercase">Shaquil</strong>
                                </div>
                                <div class="tm-testimonial">
                                    <p>"Yeaahhh gostei,realmente gostei tou sem palavras"</p>
                                    <strong class="text-uppercase">Papa Francisco</strong>
                                </div>
                                <div class="tm-testimonial">
                                    <p>"Peace we wana bareeeee"<p>
                                    <strong class="text-uppercase">Owelza</strong>
                                </div>
                            </div>
                        </div>
            </div>

        </div>


    </div>
</section>




<!-- white bg -->
<section class="tm-white-bg section-padding-bottom">
    <div class="container">

        <div class="tm-section-header section-margin-top">
            <div class="col-lg-4 col-md-3 col-sm-3"><hr></div>
            <div class="col-lg-4 col-md-6 col-sm-6"><h2 class="tm-section-title">FAZER RESERVA</h2></div>
            <div class="col-lg-4 col-md-3 col-sm-3"><hr></div>
        </div>

        <div class="row">
            <div th:if="${loggedIn}">
                    <g:each in="${resultadoPesquisa}" var="resultado">
                        <div class="col-12 col-md-6 col-lg-3">
                            <div class="tm-tours-box-2">
                                <img class="img-responsive"
                                     src="${createLink(controller: 'public', action: 'exibirImagem', id: resultado?.idTipo)}"
                                     alt="tipoQuarto" >
                                <div class="tm-tours-box-2-info">
                                    <h3 class="margin-bottom-15">${resultado?.tipoQuarto}</h3>
                                    <p class="gray-text tours-1-description">Com duas camas de solteiro, vista da piscina, ar-condicionado, banheiro no quarto e tv de tela plena.</p>
                                    <p>${resultado?.preco}</p>
                                    %{--<p>${resultado?.numeroQuarto}</p>--}%
                                    %{--<p>${resultado?.estado}</p>--}%
                                </div>
                            </div>

                            <g:if test="${resultado?.estado == 'INDISPONIVEL'}">
                                <a href="#" onclick="showRoomOccupiedMessage()" class="tm-tours-box-2-link">
                                    Reserva agora
                                </a>
                            </g:if>

                            <g:else>
                                <g:form controller="public" action="createReserva" class="tm-tours-box-2-link">
                                    <input type="hidden" name="numeroQuarto" value="${resultado?.numeroQuarto}" />
                                    <input type="hidden" name="tipoQuarto" value="${resultado?.tipoQuarto}" />
                                    <button type="submit" class="tm-tours-box-2-link">Fazer Reserva</button>
                                </g:form>
                            </g:else><br>
                        </div>
                    </g:each>
                <br>
        </div>
            </div>
        </div>
        <br>
        <div class="row">0- i
            <div class="col-lg-12">

            </div>
        </div>
    <br>
    </div>
    <br>
</section>

<section class="section-padding-bottom">
    <div class="container" id="contacto">
        <div class="row">

            <div class="col-lg-4 col-md-3 col-sm-3"><hr /></div>
            <div class="col-lg-4 col-md-6 col-sm-6">
                <h2 class="tm-section-title">Contacte-nos</h2>
            </div>
            <div class="col-lg-4 col-md-3 col-sm-3"><hr /></div>
        </div>
        <div class="row">
            <!-- contact form -->
            <form action="https://formsubmit.co/macuacuaw330@gmail.com" method="POST" class="tm-contact-form">
                <div class="col-lg-6 col-md-6">
                    <div id="google-map">
                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3587.466686978087!2d32.58640231557022!3d-25.952730560100864!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x1ee69a5148ba207d%3A0xa497a62082f97c28!2sPra%C3%A7a%20da%20OMM%2C%20Maputo!5e0!3m2!1spt-PT!2smz!4v1668026180951!5m2!1spt-PT!2smz" width="575" height="350" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                    </div>

                </div>
                <div class="col-lg-6 col-md-6 tm-contact-form-input">
                    <div class="form-group">
                        <input type="text" id="contact_name" name="nome" class="form-control"placeholder="NOME"/>
                    </div>
                    <div class="form-group">
                        <input type="email" id="contact_email"  name="email" class="form-control" placeholder="EMAIL"
                        />
                    </div>
                    <div class="form-group">
                        <input type="text" id="contact_subject" name="assunto" class="form-control" placeholder="ASSUNTO"
                        />
                    </div>
                    <div class="form-group">
                        <textarea id="contact_message"  name="mensagem" class="form-control" rows="6" placeholder="MENSSAGEM"></textarea>
                    </div>
                    <div class="form-group">
                        <button class="tm-submit-btn" type="submit" name="submit">Envie agora</button>
                    </div>
                </div>
            </form>
        </div>
    </div>

    <div id="roomOccupiedModal" class="modal">
        <div class="modal-content">
            <span class="close" onclick="closeModal()">&times;</span>
            <p>Quarto Ocupado</p>
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

<style>
/* Modal styles */
.modal {
    display: none;
    position: fixed;
    z-index: 1;
    left: 0;
    top: 0;
    width: 100%;
    height: 100%;
    overflow: auto;
    background-color: rgba(0, 0, 0, 0.4);
}

.modal-content {
    background-color: #fefefe;
    margin: 15% auto;
    padding: 20px;
    border: 1px solid #888;
    width: 300px;
}

.close {
    color: #aaa;
    float: right;
    font-size: 28px;
    font-weight: bold;
}

.close:hover,
.close:focus {
    color: black;
    text-decoration: none;
    cursor: pointer;
}
</style>


<script type="text/javascript">
    function showRoomOccupiedMessage() {
        var modal = document.getElementById("roomOccupiedModal");
        modal.style.display = "block";
    }

    function closeModal() {
        var modal = document.getElementById("roomOccupiedModal");
        modal.style.display = "none";
    }
</script>

<script>
    // Obtenha o elemento do link
    var reservaLink = document.getElementById('reservaLink');

    // Verifique a condição desejada e defina o atributo "disabled" no link
    var isDisabled = true; // Defina essa variável com base na sua lógica
    if (isDisabled) {
        reservaLink.setAttribute('disabled', 'disabled');
        reservaLink.style.pointerEvents = 'none'; // Impede eventos de clique
        reservaLink.style.opacity = '0.5'; // Opacidade reduzida para indicar desabilitação
    }
</script>
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

<script>
    function enviarDados(cardId) {
        // Recuperar os dados do card usando o ID
        var card = document.getElementById(cardId);
        var titulo = card.querySelector("h3").innerText;

        var dados = {
            titulo: titulo
        };

        // Enviar uma requisição AJAX para o servidor
        fetch('/enviar-dados', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify(dados)
        }).then(function (response) {
            // Redirecione para a outra view após o envio dos dados
            window.location.href ="${createLink(controller: 'public', action: 'adicionarHospede')}";
        }).catch(function (error) {
            console.log(error);
        });
    }
</script>
</body>
</html>