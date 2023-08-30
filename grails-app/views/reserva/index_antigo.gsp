<!DOCTYPE html>
<html>
    <head>

        %{--<meta name="layout" content="main" />--}%
        %{--<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>--}%
        <asset:javascript src="jquery-3.5.1.min.js"/>
        <link rel="stylesheet" href="https://cdn.datatables.net/1.11.3/css/jquery.dataTables.min.css">
        %{--<script src="https://cdn.datatables.net/1.11.3/js/jquery.dataTables.min.js"></script>--}%
        <asset:javascript src="jquery.dataTables.min.js"/>
    </head>
    <body>
        <div id="list-reserva" class="content scaffold-list" role="main">
            %{--<h1><g:message code="default.list.label" args="[entityName]" /></h1>--}%
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:render template="lista" model="[reservas:reservas]"></g:render>

            <div class="pagination">
                <g:paginate total="${reservaCount ?: 0}" />
            </div>
        </div>

    %{--<script src="https://cdn.datatables.net/1.11.3/js/dataTables.bootstrap5.min.js"></script>--}%

    <!-- Inicializando o DataTables -->
    %{--<script>--}%
        %{--jQuery(document).ready(function() {--}%
            %{--jQuery('#myTable').DataTable();--}%
        %{--});--}%
    %{--</script>--}%

    <script>
        var $j = jQuery.noConflict();

        $j(document).ready(function() {
            $j('#myTable').DataTable();
        });

        // // Aqui você pode usar o símbolo $ para a outra biblioteca
        // $(document).ready(function() {
        //     $('#outroElemento').funcaoDaOutraBiblioteca();
        // });
    </script>

    </body>

</html>