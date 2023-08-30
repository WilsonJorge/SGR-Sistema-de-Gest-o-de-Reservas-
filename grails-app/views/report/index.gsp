<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />

    </head>
    <body>

        <div id="list-report" class="content scaffold-list" role="main">

            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            %{--<f:table collection="${reportList}" />--}%
            <g:render template="report"></g:render>
            <div class="pagination">
                <g:paginate total="${reportCount ?: 0}" />
            </div>
        </div>
    </body>
</html>