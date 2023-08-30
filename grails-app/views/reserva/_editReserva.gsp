
<div class="">
    <div class="card">
        <div class="card-body">
            <h4 class="card-title">Reservas</h4>
            <form class="forms-sample">
                <div class="form-group">
                    <label for="hospede">hospede</label>
                    <input type="text" class="form-control" id="hospede" name="hospede" placeholder="Nome" value="${this.reserva.hospede}">
                </div>

                <div class="form-group">
                    <label for="dataEntrada">Data Entrada</label>
                    <input type="date" class="form-control" id="dataEntrada" name="dataEntrada" placeholder="Check In" value="${this.reserva.dataEntrada}">
                </div>

                <div class="form-group">
                    <label for="dataSaida">Data Saida</label>
                    <input type="date" class="form-control" id="dataSaida" name="dataSaida" placeholder="Check Out" value="${this.reserva.dataSaida}">
                </div>

                <div class="form-group">
                    <label for="quarto">Numero de Quarto</label>
                    <input type="text" id="quarto" name="quarto" value="${this.reserva.quarto}"/>
                </div>

                <div class="form-group">
                    <label for="criancas">Numero de Criancas</label>
                    <select class="form-control" id="criancas" name="numeroCrianca">
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="3">4</option>
                        <option value="3">5</option>
                    </select>
                </div>

                <div class="form-group">
                    <label for="adultos">Numero de Adultos</label>
                    <select class="form-control" id="adultos" name="numeroAdultos">
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="3">4</option>
                        <option value="3">5</option>
                    </select>
                </div>

            </form>
            <fieldset class="buttons">
                <g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
            </fieldset>
        </div>
    </div>
</div>