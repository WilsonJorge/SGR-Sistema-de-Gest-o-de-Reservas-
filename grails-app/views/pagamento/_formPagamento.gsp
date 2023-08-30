<div class="">
    <div class="card">
        <div class="card-body">
            <h4 class="card-title">Facturamento</h4>
            <form class="forms-sample">
                <p>Dados do Pagamento</p>

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
                    <input type="number" class="form-control" id="valorapagar" name="valorPagar" value="${valorApagar}">
                </div>

                <div class="form-group">
                    <label for="valorapagariva">Valor Total IVA</label>
                    <input type="number" class="form-control" id="valorapagariva" name="valorApagarIVA" value="${valorIVA}">
                </div>



            </form>
            <fieldset class="buttons">
                <g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
            </fieldset>
        </div>
    </div>
</div>



