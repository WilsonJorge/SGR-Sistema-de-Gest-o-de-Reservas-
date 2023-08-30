<!DOCTYPE html>
<html>
    <head>

        <meta name="layout" content="main" />

    </head>
    <body>
        <div id="list-reserva" class="content scaffold-list" role="main">
            %{--<h1><g:message code="default.list.label" args="[entityName]" /></h1>--}%
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:render template="lista" model="[reservas:reservas]"></g:render>
        </div>


        <script>
        var $j = jQuery.noConflict();

        $j(document).ready(function() {
            $j('#myTable').DataTable();
        });
    </script>

    <style>
    /*!* Estilo para a célula do estado *!*/
    /*.estado {*/
        /*font-weight: bold; !* Isso é opcional, apenas para dar ênfase ao estado *!*/
    /*}*/

    /*!* Estilo para o estado "Activo" *!*/
    /*.estado.ativo {*/
        /*color: blue;*/
    /*}*/

    /*!* Estilo para o estado "INACTIVO" *!*/
    /*.estado.inativo {*/
        /*color: red;*/
    /*}*/
    /* Estilo para o estado "INACTIVO" */
    .cancelada {
        color: red;
    }


    </style>

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

    %{--<script>--}%
        %{--$(document).ready(function() {--}%
            %{--// Encontra todas as células da coluna "Estado.Reserva"--}%
            %{--$('#myTable tbody tr').each(function() {--}%
                %{--var estado = $(this).find('td:eq(7)').text(); // Índice da coluna do Estado.Reserva--}%

                %{--// Adiciona classes CSS com base no valor do estado--}%
                %{--if (estado === 'Activo') {--}%
                    %{--$(this).addClass('ativo');--}%
                %{--} else if (estado === 'INACTIVO') {--}%
                    %{--$(this).addClass('inativo');--}%
                %{--}--}%
            %{--});--}%
        %{--});--}%
    %{--</script>--}%

    </body>

</html>