<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'quarto.label', default: 'Quarto')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        %{--<a href="#list-quarto" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>--}%
        <div class="nav" role="navigation">
            <ul>
                %{--<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>--}%
                %{--<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>--}%
            </ul>
        </div>
        <div id="list-quarto" class="content scaffold-list" role="main">
            %{--<h1><g:message code="default.list.label" args="[entityName]" /></h1>--}%
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>

            <g:render template="lista"></g:render>

            <div class="pagination">
                <g:paginate total="${quartoCount ?: 0}" />
            </div>
        </div>

    <script>
        var $j = jQuery.noConflict();

        $j(document).ready(function() {
            $j('#tabelaQuarto').DataTable();

        });
    </script>
    </body>
</html>