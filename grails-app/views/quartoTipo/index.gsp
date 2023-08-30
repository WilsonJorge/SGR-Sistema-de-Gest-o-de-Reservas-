<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />

    </head>
    <body>

        <div id="list-quartoTipo" class="content scaffold-list" role="main">

            <g:render template="lista"></g:render>

        </div>

        <script>
            var $j = jQuery.noConflict();

            $j(document).ready(function() {
                $j('#tabelaTipoQuarto').DataTable();

            });
        </script>
    </body>
</html>