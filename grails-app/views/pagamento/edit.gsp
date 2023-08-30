<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        %{--<g:set var="entityName" value="${message(code: 'pagamento.label', default: 'Pagamento')}" />--}%
        %{--<title><g:message code="default.edit.label" args="[entityName]" /></title>--}%
    </head>
    <body>
        %{--<a href="#edit-pagamento" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>--}%
        <div class="nav" role="navigation">
            %{--<ul>--}%
                %{--<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>--}%
                %{--<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>--}%
                %{--<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>--}%
            %{--</ul>--}%
        </div>
        <div id="edit-pagamento" class="content scaffold-edit" role="main">
            %{--<h1><g:message code="default.edit.label" args="[entityName]" /></h1>--}%
            %{--<g:if test="${flash.message}">--}%
            %{--<div class="message" role="status">${flash.message}</div>--}%
            %{--</g:if>--}%
            <g:hasErrors bean="${this.pagamento}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.pagamento}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>
            <g:form resource="${this.pagamento}" method="PUT">
                %{--<g:hiddenField name="version" value="${this.pagamento?.version}" />--}%
                <g:render template="editPagamento"/>

            </g:form>


        </div>
    </body>
</html>
