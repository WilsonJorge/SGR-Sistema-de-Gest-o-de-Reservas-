<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
    </head>
    <body>

        <div id="list-hospede" class="content scaffold-list" role="main">
            %{--<h1><g:message code="default.list.label" args="[entityName]" /></h1>--}%
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>

            <g:render template="lista"></g:render>

            %{--<div class="pagination">--}%
                %{--<g:paginate total="${hospedeCount ?: 0}" />--}%
            %{--</div>--}%
        </div>

    <script>
        var $j = jQuery.noConflict();

        $j(document).ready(function() {
            $j('#myTable').DataTable();

        });
    </script>
    </body>
</html>