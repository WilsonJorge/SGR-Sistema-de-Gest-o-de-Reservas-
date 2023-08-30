<div class="main-panel">
    <div class="content-wrapper">
        <div class="row">
            <div class="col-lg-16 grid-margin stretch-card">
                <div class="card">
                    <div class="card-body">
                        <h4 class="card-title">Facturamento</h4>
                        <table class="table">
                            <thead>
                            <tr>
                                <th>Nome do Hospede</th>
                                <th>Cartao de Credito</th>
                                <th>Numero de Serie</th>
                                <th> Valor Total</th>
                                <th> Valor Total com IVA</th>
                            </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>${pagamento?.hospede.nomeHospede}</td>
                                    <td>${pagamento?.cartaoPagamento}</td>
                                    <td>${pagamento?.numeroSerie}</td>
                                    <td>${pagamento?.valorPagar}</td>
                                    <td>${pagamento?.valorApagarIVA}</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <g:form resource="${pagamento}" method="DELETE">
                <fieldset class="buttons">
                    <g:link class="btn btn-success mr-2" action="edit" resource="${pagamento}">Editar</g:link>
                    <input class="btn btn-success mr-2" type="submit" value="Apagar" onclick="return confirm('${message( default: 'Are you sure?')}');" />
                </fieldset>
            </g:form>
        </div>

