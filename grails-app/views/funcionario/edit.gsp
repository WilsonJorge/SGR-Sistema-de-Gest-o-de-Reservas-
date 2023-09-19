<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
    </head>
    <body>

        <div id="edit-funcionario" class="content scaffold-edit" role="main">
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
            <g:form resource="${this.funcionario}" method="PUT">
                <g:hiddenField name="version" value="${this.funcionario?.version}" />
                <g:render template="editFuncionario"/>
            </g:form>
        </div>
    </body>
</html>
