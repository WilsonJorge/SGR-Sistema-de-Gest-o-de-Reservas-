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
                            <g:each var ="pagamento" in="${pagamentos}">
                                <tr>

                                    <td><g:link action="show" id="${pagamento?.id}">${pagamento?.hospede?.nomeHospede}</g:link> </td>
                                    <td>${pagamento?.cartaoPagamento}</td>
                                    <td>${pagamento?.numeroSerie}</td>
                                    <td>${pagamento?.valorPagar}</td>
                                    <td>${pagamento?.valorApagarIVA}</td>
                                    <td>
                                    </td>
                                </tr>
                            </g:each>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        </div>
</div>