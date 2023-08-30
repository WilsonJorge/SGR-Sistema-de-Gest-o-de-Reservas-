<fieldset class="form">
<div class="">
    <div class="card">
        <div class="card-body">
            <h4 class="card-title">Facturamento</h4>
            <form class="forms-sample">
                <p>Dados do Pagamento</p>

                <div class="form-group">
                    <label for="reserva">Referencia da Reserva</label>
                    <input type="text" class="form-control" id="reserva" name="reserva" readonly="readonly" value="${reservaReferencia}">
                </div>

                <div class="form-group">
                    <label for="cartaocredito">Cartao de Credito</label>
                    <input type="number" class="form-control" value="" id="cartaocredito" name="cartaoPagamento" placeholder="(xx) xxxx-xxxx">
                </div>

                <div class="form-group">
                    <label for="numeroserie">Numero Serie</label>
                    <input type="number" class="form-control" value ="" id="numeroserie" name="numeroSerie" placeholder="(xx) xxxx">
                </div>

                <div class="form-group">
                    <label for="valorapagar">Valor Total</label>
                    <input type="number" class="form-control" id="valorapagar" name="valorPagar"  readonly="readonly" value="${valorAPagar}">
                </div>

                <div class="form-group">
                    <label for="data_entrada">Data Entrada</label>
                    <input type="text" class="form-control" id="data_entrada" name="dataE" readonly="readonly" placeholder="Check In" value="${checkIN}">
                </div>

                <div class="form-group">
                    <label for="data_saida">Data Saida</label>
                    <input type="text" class="form-control" id="data_saida" name="dataS" readonly="readonly" placeholder="Check Out" value="${checkOUT}">
                </div>

                <div class="form-group">
                    <label for="hospede">hospede</label>
                    <input type="text" class="form-control" id="hospede" name="hospede" readonly="readonly" value="${hospede}"/>
                </div>

                <div class="form-group">
                    <label for="criancas">Numero de Criancas</label>
                    <input type="text" class="form-control" id="criancas" name="numeroCriancas"readonly="readonly" value="${criancas}"/>
                </div>

                <div class="form-group">
                    <label for="adultos">Numero de Adultos</label>
                    <input class="form-control" id="adultos" name="numeroAdultos" readonly="readonly" value="${adultos}">
                </div>
            </form>
            <fieldset class="buttons">
                <g:submitButton name="create" class="btn btn-success mr-2" value="Finalizar" />
            </fieldset>
        </div>
    </div>
</div>
</fieldset>
%{--<script>--}%
    %{--$(document).ready(function() {--}%
        %{--$('#pagamentoForm').submit(function(event) {--}%
            %{--event.preventDefault(); // Impede o envio do formulário padrão--}%

            %{--var form = $(this);--}%
            %{--var url = form.attr('action');--}%
            %{--var formData = form.serialize(); // Serializa os dados do formulário--}%

            %{--$.ajax({--}%
                %{--type: 'POST',--}%
                %{--url: url,--}%
                %{--data: formData,--}%
                %{--success: function(response) {--}%
                    %{--// Lógica para lidar com a resposta de sucesso--}%
                    %{--console.log(response);--}%
                %{--},--}%
                %{--error: function(xhr, status, error) {--}%
                    %{--// Lógica para lidar com erros--}%
                    %{--console.error(error);--}%
                %{--}--}%
            %{--});--}%
        %{--});--}%
    %{--});--}%
%{--</script>--}%