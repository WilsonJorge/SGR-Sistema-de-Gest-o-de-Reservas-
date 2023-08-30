<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
    </head>
    <body>

        <div class="nav" role="navigation">

        </div>
        <div id="list-funcionario" class="content scaffold-list" role="main">
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:render template="lista"></g:render>

            <div class="pagination">
                <g:paginate total="${funcionarioCount ?: 0}" />
            </div>
        </div>
    <script>
        var $j = jQuery.noConflict();

        $j(document).ready(function() {
            $j('#funcionarios').DataTable();
        });
    </script>
    </body>
</html>