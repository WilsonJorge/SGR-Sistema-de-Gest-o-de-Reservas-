<g:set var='securityConfig' value='${applicationContext.springSecurityService.securityConfig}'/>
<html lang="en">
<head>
	<!-- Required meta tags -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<title>Login</title>
	<!-- plugins:css -->
	%{--<link rel="stylesheet" href="../../../assets/vendors/iconfonts/mdi/css/materialdesignicons.min.css">--}%
	<asset:stylesheet src="assets/vendors/iconfonts/mdi/css/materialdesignicons.min.css"/>
	<asset:stylesheet src="assets/vendors/iconfonts/ionicons/css/ionicons.css"/>
	<asset:stylesheet src="assets/vendors/iconfonts/typicons/src/font/typicons.css"/>
	<asset:stylesheet src="assets/vendors/iconfonts/flag-icon-css/css/flag-icon.min.css"/>
	<asset:stylesheet src="assets/vendors/css/vendor.bundle.base.css"/>
	<asset:stylesheet src="assets/vendors/css/vendor.bundle.addons.css"/>
	<!-- endinject -->
	<!-- plugin css for this page -->
	<!-- End plugin css for this page -->
	<!-- inject:css -->
	%{--<link rel="stylesheet" href="../../../assets/css/shared/style.css">--}%
	<asset:stylesheet src="assets/css/shared/style.css"/>
	<!-- endinject -->
	<asset:stylesheet src="assets/images/favicon.png"/>
</head>
<body>
<div class="container-scroller">
	<div class="container-fluid page-body-wrapper full-page-wrapper">
		<div class="content-wrapper d-flex align-items-center auth auth-bg-1 theme-one">
			<div class="row w-100">
				<div class="col-lg-4 mx-auto">
					<div class="auto-form-wrapper">
						<s2ui:form type='login' focus='username'>
							<div class="form-group">
								<label class="label">Username</label>
								<div class="input-group">
									<input type="text" class="form-control" placeholder="Username">
									<div class="input-group-append">
										<span class="input-group-text">
											<i class="mdi mdi-check-circle-outline"></i>
										</span>
									</div>
								</div>
							</div>
							<div class="form-group">
								<label class="label">Password</label>
								<div class="input-group">
									<input type="password" class="form-control" placeholder="*********">
									<div class="input-group-append">
										<span class="input-group-text">
											<i class="mdi mdi-check-circle-outline"></i>
										</span>
									</div>
								</div>
							</div>
							<div class="form-group">
								%{--<button class="btn btn-primary submit-btn btn-block">Login</button>--}%
								<s2ui:submitButton elementId='loginButton' messageCode='Login' class="btn btn-primary submit-btn btn-block"/>
							</div>
							<div class="form-group d-flex justify-content-between">
								<div class="form-check form-check-flat mt-0">
									<label class="form-check-label">
										<input type="checkbox" class="form-check-input" checked> Keep me signed in </label>
								</div>
								%{--<a href="#" class="text-small forgot-password text-black">Forgot Password</a>--}%
								<g:link controller='register' action='forgotPassword' class="text-small forgot-password text-black"><g:message/>Forgot Password</g:link>
							</div>

							<div class="text-block text-center my-3">
								<span class="text-small font-weight-semibold">Not a member ?</span>
								%{--<a href="register.html" class="text-black text-small">Create new account</a>--}%
								<s2ui:linkButton elementId='register' controller='register' messageCode='Create new account' class="text-black text-small"/>
							</div>
						</s2ui:form>

					%{--<s2ui:form type='login' focus='username'>--}%
					%{--<div class="sign-in">--}%
					%{--<h2><g:message code='spring.security.ui.login.signin'/></h2>--}%
					%{--<table>--}%
					%{--<tr>--}%
					%{--<td><label for="username"><g:message code='spring.security.ui.login.username'/></label></td>--}%
					%{--<td><input type="text" name="${securityConfig.apf.usernameParameter}" id="username" class='formLogin' size="20"/></td>--}%
					%{--</tr>--}%
					%{--<tr>--}%
					%{--<td><label for="password"><g:message code='spring.security.ui.login.password'/></label></td>--}%
					%{--<td><input type="password" name="${securityConfig.apf.passwordParameter}" id="password" class="formLogin" size="20"/></td>--}%
					%{--</tr>--}%
					%{--<tr>--}%
					%{--<td colspan='2'>--}%
					%{--<input type="checkbox" class="checkbox" name="${securityConfig.rememberMe.parameter}" id="remember_me" checked="checked"/>--}%
					%{--<label for='remember_me'><g:message code='spring.security.ui.login.rememberme'/></label> |--}%
					%{--<span class="forgot-link">--}%
					%{--<g:link controller='register' action='forgotPassword'><g:message code='spring.security.ui.login.forgotPassword'/></g:link>--}%
					%{--</span>--}%
					%{--</td>--}%
					%{--</tr>--}%
					%{--<tr>--}%
					%{--<td colspan='2'>--}%
					%{--<s2ui:linkButton elementId='register' controller='register' messageCode='spring.security.ui.login.register'/>--}%
					%{--<s2ui:submitButton elementId='loginButton' messageCode='spring.security.ui.login.login'/>--}%
					%{--</td>--}%
					%{--</tr>--}%
					%{--</table>--}%
					%{--</div>--}%
					%{--</s2ui:form>--}%
					</div>
					<ul class="auth-footer">
					</ul>
					<p class="footer-text text-center">copyright © 2023 Intellica. All rights reserved.</p>
				</div>
			</div>
		</div>
		<!-- content-wrapper ends -->
	</div>
	<!-- page-body-wrapper ends -->
</div>
<!-- container-scroller -->
<!-- plugins:js -->
<asset:javascript src="assets/vendors/js/vendor.bundle.base.js"/>
<asset:javascript src="assets/vendors/js/vendor.bundle.addons.js"/>
<!-- endinject -->
<!-- inject:js -->

<asset:javascript src="assets/js/shared/misc.js"
<asset: src="assets/js/shared/off-canvas.js"/>
<!-- endinject -->
</body>
