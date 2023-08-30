<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'hospede.label', default: 'Hospede')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        %{--<a href="#create-hospede" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default=""/></a>--}%
        <div class="nav" role="navigation">
            <ul>
                %{--<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>--}%
                %{--<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>--}%
            </ul>
        </div>
        <div id="create-hospede" class="content scaffold-create" role="main">
            %{--<h1><g:message code="default.create.label" args="[entityName]" /></h1>--}%
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${this.hospede}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.hospede}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>
            <g:form resource="${this.hospede}" method="POST">
                <g:render template="form"/>

            </g:form>
        </div>
    </body>
</html>
