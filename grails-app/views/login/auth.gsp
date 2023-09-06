<g:set var='securityConfig' value='${applicationContext.springSecurityService.securityConfig}'/>
<!doctype html>
<html lang="en">
<head>
	<meta charset="utf-8" />
	<link rel="apple-touch-icon" sizes="76x76" href="assets/img/apple-icon.png">
	<link rel="icon" type="image/png" href="assets/img/favicon.png">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	<title>Profile|REST-AND-PEACE</title>

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
						<s2ui:form type='login' focus='username'>

							<div class="wizard-header">
								<h3>
									<b></b> SEU PERFIL <br>
									<small>Esta informação nos permitirá saber mais sobre você.</small>
								</h3>
							</div>

							<div class="wizard-navigation">
								<ul>
									<li><a href="#login" data-toggle="tab">Autenticação</a></li>
								</ul>

							</div>

							<div class="tab-content">
								<div class="tab-pane" id="login">
									<div class="row">
										<h4 class="info-text">Validação de Dados </h4>
										<div class="col-sm-4 col-sm-offset-1">
											<div class="picture-container">
												<div class="picture">
													<asset:image src="default-avatar.png" class="picture-src" id="wizardPicturePreview" />
													<input type="file" id="wizard-picture">
												</div>
												<h6>Escolha a imagem</h6>
											</div>
										</div>
										<div class="col-sm-6">
											<div class="form-group">
												<label>Username <small>(required)</small></label>
												<input type="text" class="form-control" placeholder="20190958"name="${securityConfig.apf.usernameParameter}">
											</div>
											<div class="form-group">
												<label>Password <small>(required)</small></label>
												<input type="password" class="form-control" name="${securityConfig.apf.passwordParameter}" id="password" placeholder="*********">
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="wizard-footer height-wizard">
								<div class="pull-right">
									<input type='button' class='btn btn-next btn-fill btn-warning btn-wd btn-sm' name='next' value='Proximo' />

										<button type="submit" class="btn btn-finish btn-fill btn-warning btn-wd btn-sm">Entrar</button>
								</div>


								<div class="clearfix"></div>
							</div>
						</s2ui:form>
					</div>
				</div> <!-- wizard container -->
			</div>
		</div><!-- end row -->
	</div> <!--  big container -->
	<div id="error-message" style="display: none; color: red;">Senha ou usuário inválido. Por favor, tente novamente.</div>
	<div class="footer">
		<div class="container">
			Made with <i class="fa fa-heart heart"></i> by <a href="http://www.creative-tim.com">Intellica</a>
		</div>
	</div>
</div>



<script>
    document.addEventListener("DOMContentLoaded", function () {
        const form = document.querySelector("#login"); // Assuming the form has an ID of "login"
        const errorMessage = document.querySelector("#error-message");

        form.addEventListener("submit", function (event) {
            event.preventDefault();

            const usernameInput = document.querySelector("input[name='username']");
            const passwordInput = document.querySelector("input[name='password']");

            const username = usernameInput.value;
            const password = passwordInput.value;

            const formData = new FormData();
            formData.append("username", username);
            formData.append("password", password);

            // Assuming you have a way to make an AJAX request to your server for authentication
            // Replace 'your-authentication-endpoint' with the actual endpoint for authentication
            fetch('your-authentication-endpoint', {
                method: 'POST',
                body: formData,
            })
                .then((response) => {
                    if (response.ok) {
                        // Authentication successful, redirect or do something
                        // For example, you can redirect to another page:
                        // window.location.href = '/dashboard';
                    } else {
                        // Authentication failed, display error message
                        errorMessage.style.display = "block";
                    }
                })
                .catch((error) => {
                    console.error("Error occurred during authentication:", error);
                });
        });
    });
</script>

</body>

<!--   Core JS Files   -->

<asset:javascript src="js_wizard/jquery-2.2.4.min.js"/>
<asset:javascript src="js_wizard/bootstrap.min.js"/>
<asset:javascript src="js_wizard/jquery.bootstrap.wizard.js" type="text/javascript"/>

<!--  Plugin for the Wizard -->
<asset:javascript src="js_wizard/gsdk-bootstrap-wizard.js"/>

<!--  More information about jquery.validate here: http://jqueryvalidation.org/	 -->
<asset:javascript src="js_wizard/jquery.validate.min.js"/>

