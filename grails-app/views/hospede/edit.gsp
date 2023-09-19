<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
    </head>
    <body>
        <div id="edit-hospede" class="content scaffold-edit" role="main">
            %{--<h1><g:message code="default.edit.label" args="[entityName]" /></h1>--}%
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
            <g:form resource="${this.hospede}" method="PUT">
                <g:hiddenField name="version" value="${this.hospede?.version}" />

                <g:render template="edit"/>

            </g:form>
        </div>
    </body>
</html>
