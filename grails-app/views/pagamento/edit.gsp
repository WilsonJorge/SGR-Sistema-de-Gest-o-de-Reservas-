<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
    </head>
    <body>
        <div id="edit-pagamento" class="content scaffold-edit" role="main">
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
