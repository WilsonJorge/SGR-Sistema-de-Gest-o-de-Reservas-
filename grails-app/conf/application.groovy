// Added by the Spring Security Core plugin:
grails.plugin.springsecurity.logout.postOnly=false
grails.plugin.springsecurity.userLookup.userDomainClassName = 'seguranca.SecUser'
grails.plugin.springsecurity.userLookup.authorityJoinClassName = 'seguranca.SecUserSecRole'
grails.plugin.springsecurity.authority.className = 'seguranca.SecRole'
grails.plugin.springsecurity.controllerAnnotations.staticRules = [
		[pattern:  '/Funcionario/**', 			access: ['ROLE_ADMIN', 'IS_AUTHENTICATED_FULLY']],
		[pattern:  '/Menu/**', 			access: ['ROLE_ADMIN','ROLE_FUNCIONARIO', 'IS_AUTHENTICATED_FULLY']],
		[pattern:  '/Hospede/**', 			access: ['ROLE_ADMIN','ROLE_FUNCIONARIO', 'IS_AUTHENTICATED_FULLY']],
		[pattern:  '/Pagamento/**', 			access: ['ROLE_ADMIN','ROLE_FUNCIONARIO', 'IS_AUTHENTICATED_FULLY']],
		[pattern:  '/Quarto/**', 			access: ['ROLE_ADMIN', 'IS_AUTHENTICATED_FULLY']],
		[pattern:  '/QuartoTipo/**', 			access: ['ROLE_ADMIN', 'IS_AUTHENTICATED_FULLY']],
		[pattern:  '/Reserva/**', 			access: ['ROLE_ADMIN','ROLE_FUNCIONARIO', 'IS_AUTHENTICATED_FULLY']],
		[pattern: '/dashboard',      access: ['ROLE_ADMIN','ROLE_FUNCIONARIO', 'IS_AUTHENTICATED_FULLY']],
		[pattern: '/registarHospede',      access: ['ROLE_ADMIN','ROLE_FUNCIONARIO', 'IS_AUTHENTICATED_FULLY']],
		[pattern: '/fazerPagamento',      access: ['ROLE_ADMIN','ROLE_FUNCIONARIO', 'IS_AUTHENTICATED_FULLY']],
		[pattern: '/registarReserva',      access: ['ROLE_ADMIN','ROLE_FUNCIONARIO', 'IS_AUTHENTICATED_FULLY']],
		[pattern: '/Contacto/**',      access: ['ROLE_GUEST', 'IS_AUTHENTICATED_FULLY']],
		[pattern: '/Email/**',      access: ['ROLE_ADMIN', 'IS_AUTHENTICATED_FULLY']],
		[pattern: '/Report/**',      access: ['ROLE_ADMIN','ROLE_FUNCIONARIO', 'IS_AUTHENTICATED_FULLY']],



		[pattern: '/Public/**',      access: ['permitAll']],
//	[pattern: '/',               access: ['permitAll']],
	[pattern: '/error',          access: ['permitAll']],
	[pattern: '/index',          access: ['permitAll']],
	[pattern: '/index.gsp',      access: ['permitAll']],
	[pattern: '/shutdown',       access: ['permitAll']],
	[pattern: '/assets/**',      access: ['permitAll']],
	[pattern: '/**/js/**',       access: ['permitAll']],
	[pattern: '/**/css/**',      access: ['permitAll']],
	[pattern: '/**/images/**',   access: ['permitAll']],
	[pattern: '/**/favicon.ico', access: ['permitAll']],
//	[pattern:  '/', 			access: ['ROLE_ADMIN', 'IS_AUTHENTICATED_FULLY']],
//	[pattern:  '/', 			access: ['permitAll']],

]

grails.plugin.springsecurity.filterChain.chainMap = [
	[pattern: '/assets/**',      filters: 'none'],
	[pattern: '/**/js/**',       filters: 'none'],
	[pattern: '/**/css/**',      filters: 'none'],
	[pattern: '/**/images/**',   filters: 'none'],
	[pattern: '/**/favicon.ico', filters: 'none'],
	[pattern: '/**',             filters: 'JOINED_FILTERS']
]

