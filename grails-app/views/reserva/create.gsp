<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
    </head>
    <body>

        <div id="create-reserva" class="content scaffold-create" role="main">
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${this.reserva}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.reserva}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>
            <g:form resource="${this.reserva}" method="POST">
                <g:render template="form"></g:render>
            </g:form>
        </div>
    %{--<div id="dateValidationMessage" class="error-message"></div>--}%
    <!-- Estilos CSS para o modal -->
    %{--<style>--}%
    %{--/* Estilização do modal */--}%
    %{--.modal {--}%
        %{--display: none;--}%
        %{--position: fixed;--}%
        %{--z-index: 1;--}%
        %{--left: 0;--}%
        %{--top: 0;--}%
        %{--width: 100%;--}%
        %{--height: 100%;--}%
        %{--background-color: rgba(0, 0, 0, 0.5);--}%
    %{--}--}%

    %{--/* Conteúdo do modal */--}%
    %{--.modal-content {--}%
        %{--background-color: #fff;--}%
        %{--margin: 15% auto;--}%
        %{--padding: 20px;--}%
        %{--border: 1px solid #888;--}%
        %{--width: 50%;--}%
        %{--text-align: center;--}%
    %{--}--}%

    %{--/* Botão de fechar o modal */--}%
    %{--.close {--}%
        %{--color: #aaa;--}%
        %{--float: right;--}%
        %{--font-size: 28px;--}%
        %{--font-weight: bold;--}%
    %{--}--}%

    %{--.close:hover,--}%
    %{--.close:focus {--}%
        %{--color: black;--}%
        %{--text-decoration: none;--}%
        %{--cursor: pointer;--}%
    %{--}--}%
    %{--</style>--}%

    <!-- Coloque este código onde você deseja que o modal apareça -->
    %{--<div id="roomOccupiedModal" class="modal">--}%
        %{--<div class="modal-content">--}%
            %{--<span class="close" onclick="closeModal()">&times;</span>--}%
            %{--<p>⚠️ A data de entrada não pode ser maior que a data de saída.</p>--}%
        %{--</div>--}%
    %{--</div>--}%

    <style>
    .invalid-date {
        border-color: #d9534f !important;
    }
    </style>

    %{--<script>--}%
        %{--function showRoomOccupiedMessage() {--}%
            %{--var modal = document.getElementById("roomOccupiedModal");--}%
            %{--modal.style.display = "block";--}%
        %{--}--}%

        %{--function closeModal() {--}%
            %{--var modal = document.getElementById("roomOccupiedModal");--}%
            %{--modal.style.display = "none";--}%
        %{--}--}%

        %{--function validateDates() {--}%
            %{--var dataEntrada = new Date(document.getElementById("data_entrada").value);--}%
            %{--var dataSaida = new Date(document.getElementById("data_saida").value);--}%

            %{--if (dataEntrada > dataSaida) {--}%
                %{--showRoomOccupiedMessage();--}%
            %{--}--}%
        %{--}--}%
    %{--</script>--}%
    <div id="dateValidationMessage" class="error-message"></div>
    <script>
        function validateDates() {
            var dataEntrada = new Date(document.getElementById("data_entrada").value);
            var dataSaida = new Date(document.getElementById("data_saida").value);
            var validationMessage = document.getElementById("dateValidationMessage");

            var entradaInput = document.getElementById("data_entrada");
            var saidaInput = document.getElementById("data_saida");
            var numeroQuartoSelect = document.getElementById("numero_quarto");
            var numeroCriancaSelect = document.getElementById("criancas");
            var numeroAdultoSelect = document.getElementById("adultos");

            if (dataEntrada > dataSaida) {
                validationMessage.textContent = "⚠️ A data de entrada não pode ser maior que a data de saída.";
                entradaInput.classList.add("invalid-date");
                numeroQuartoSelect.disabled = true;
                numeroAdultoSelect.disabled = true;
                numeroCriancaSelect.disabled = true;
            } else {
                validationMessage.textContent = "";
                entradaInput.classList.remove("invalid-date");
                numeroQuartoSelect.disabled = false;
                numeroCriancaSelect.disabled= false;
                numeroAdultoSelect.disabled = false;

            }
        }
    </script>


    </body>

</html>
