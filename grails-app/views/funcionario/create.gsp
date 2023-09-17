<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />

    </head>
    <body>

        <div class="nav" role="navigation">

        </div>
        <div id="create-funcionario" class="content scaffold-create" role="main">
            %{--<h1><g:message code="default.create.label" args="[entityName]" /></h1>--}%
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${this.funcionario}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.funcionario}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>
            <g:form resource="${this.funcionario}" method="POST">
                <g:render template="form"/>

            </g:form>
        </div>

    </body>
</html>
