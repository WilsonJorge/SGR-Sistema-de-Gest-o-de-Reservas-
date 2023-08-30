
<div class="">
    <div class="card">
        <div class="card-body">
            <h4 class="card-title">Facturamento</h4>
            <form class="forms-sample">
                <p>Dados do Pagamento</p>
                <div class="form-group">
                    <label for="hospede">Nome do Hospede</label>
                    <g:select name="hospede" from="${projecto.intellica.hotel.Hospede.list()}" optionKey="id" optionValue="nomeHospede"/>
                </div>

                <div class="form-group">
                    <label for="cartaocredito">Cartao de Credito</label>
                    <input type="number" class="form-control" value="${this.pagamento.cartaoPagamento}" id="cartaocredito" name="cartaoPagamento" placeholder="(xx) xxxx-xxxx">
                </div>

                <div class="form-group">
                    <label for="numeroserie">Numero Serie</label>
                    <input type="number" class="form-control" value ="${this.pagamento.numeroSerie}" id="numeroserie" name="numeroSerie" placeholder="(xx) xxxx">
                </div>

                <div class="form-group">
                    <label for="valorapagar">Valor Total</label>
                    <input type="number" class="form-control"  value ="${this.pagamento.valorPagar}"id="valorapagar" name="valorPagar" placeholder="MT">
                </div>

                <div class="form-group">
                    <label for="valorapagariva">Valor Total</label>
                    <input type="number" class="form-control" value ="${this.pagamento.valorApagarIVA}" id="valorapagariva" name="valorApagarIVA" placeholder="MT">
                </div>



            </form>
            <fieldset class="buttons">
                <g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
            </fieldset>
        </div>
    </div>
</div>



