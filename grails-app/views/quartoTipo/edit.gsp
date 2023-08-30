<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />

    </head>
    <body>
        <div id="edit-quartoTipo" class="content scaffold-edit" role="main">
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
            <g:form resource="${this.quartoTipo}" method="PUT">
                <g:hiddenField name="version" value="${this.quartoTipo?.version}" />
              <g:render template="editTipoQuarto"/>
            %{--<fieldset class="form">--}%
                    %{--<f:all bean="quartoTipo"/>--}%
                %{--</fieldset>--}%
            </g:form>
        </div>
    </body>
</html>
