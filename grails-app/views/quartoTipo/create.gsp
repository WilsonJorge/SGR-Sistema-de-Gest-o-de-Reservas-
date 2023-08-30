<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main" />

</head>
<body>
%{--<a href="#create-tipoQuarto" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>--}%

<div id="create-tipoQuarto" class="content scaffold-create" role="main">
%{--<h1><g:message code="default.create.label" args="[entityName]" /></h1>--}%
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <g:hasErrors bean="${this.quartoTipo}">
        <ul class="errors" role="alert">
            <g:eachError bean="${this.quartoTipo}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
            </g:eachError>
        </ul>
    </g:hasErrors>
    <g:form resource="${this.quartoTipo}" method="POST" enctype="multipart/form-data">
    %{--<g:render template="form"/>--}%
        <g:render template="form"></g:render>
    </g:form>
</div>
</body>
</html>




%{--<!DOCTYPE html>--}%
%{--<html>--}%
    %{--<head>--}%
        %{--<meta name="layout" content="main" />--}%
        %{--<g:set var="entityName" value="${message(code: 'quartoTipo.label', default: 'QuartoTipo')}" />--}%
        %{--<title><g:message code="default.create.label" args="[entityName]" /></title>--}%
    %{--</head>--}%
    %{--<body>--}%
        %{--<a href="#create-quartoTipo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>--}%
        %{--<div class="nav" role="navigation">--}%
            %{--<ul>--}%
                %{--<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>--}%
                %{--<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>--}%
            %{--</ul>--}%
        %{--</div>--}%
        %{--<div id="create-quartoTipo" class="content scaffold-create" role="main">--}%
            %{--<h1><g:message code="default.create.label" args="[entityName]" /></h1>--}%
            %{--<g:if test="${flash.message}">--}%
            %{--<div class="message" role="status">${flash.message}</div>--}%
            %{--</g:if>--}%
            %{--<g:hasErrors bean="${this.quartoTipo}">--}%
            %{--<ul class="errors" role="alert">--}%
                %{--<g:eachError bean="${this.quartoTipo}" var="error">--}%
                %{--<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>--}%
                %{--</g:eachError>--}%
            %{--</ul>--}%
            %{--</g:hasErrors>--}%
            %{--<g:form resource="${this.quartoTipo}" method="POST">--}%
                %{--<fieldset class="form">--}%
                    %{--<f:all bean="quartoTipo"/>--}%
                %{--</fieldset>--}%
                %{--<fieldset class="buttons">--}%
                    %{--<g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />--}%
                %{--</fieldset>--}%
            %{--</g:form>--}%
        %{--</div>--}%
    %{--</body>--}%
%{--</html>--}%
