<g:set var='securityConfig' value='${applicationContext.springSecurityService.securityConfig}'/>
<html>
<head>
	<s2ui:title messageCode='spring.security.ui.login.title'/>
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
	%{--<asset:stylesheet src="assets/images/favicon.png"/>--}%
</head>
<body>
<p/>
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
						<input type="text" class="form-control" placeholder="Username"name="${securityConfig.apf.usernameParameter}">
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
						<input type="password" class="form-control" name="${securityConfig.apf.passwordParameter}" id="password" placeholder="*********">
						<div class="input-group-append">
							<span class="input-group-text">
								<i class="mdi mdi-check-circle-outline"></i>
							</span>
						</div>
					</div>
				</div>
							<div class="form-group d-flex justify-content-between">
								<div class="form-check form-check-flat mt-0">
									<label class="form-check-label">
										<input type="checkbox" name="${securityConfig.rememberMe.parameter}" id="remember_me" class="form-check-input" checked> Keep me signed in </label>
										<label for='remember_me'><g:message code='spring.security.ui.login.rememberme'/></label>
								</div>
								<g:link controller='register' action='forgotPassword' class="text-small forgot-password text-black"><g:message/>Forgot Password</g:link>
							</div>

						<td colspan='2'>
							<g:link controller='public' action='registarHospedeOnline' class="text-black text-small"><g:message/>Registar</g:link>
							<s2ui:submitButton elementId='loginButton' messageCode='spring.security.ui.login.login' class="btn btn-primary submit-btn btn-block"/>
						</td>
		</s2ui:form>
	</div>
	</div>
			</div>
		</div>
	</div>
</div>
<asset:javascript src="assets/vendors/js/vendor.bundle.base.js"/>
<asset:javascript src="assets/vendors/js/vendor.bundle.addons.js"/>
<!-- endinject -->
<!-- inject:js -->

<asset:javascript src="assets/js/shared/misc.js"/>
<asset:javascript src="assets/js/shared/off-canvas.js"/>
</body>
</html>