<div class="main-panel">
    <div class="content-wrapper">
        <div class="row">
            <div class="col-lg-16 grid-margin stretch-card">
                <div class="card">
                    <div class="card-body">
                        <h4 class="card-title">Reservas</h4>
                        <table class="table">
                            <thead>
                            <tr>
                                <th>Nome do Hospede</th>
                                <th>Data Entrada</th>
                                <th>Data Saida</th>
                                <th>Numero de Quarto</th>
                                %{--<th>Acompanhantes</th>--}%
                                <th>Criancas</th>
                                <th>Adultos</th>
                            </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>${reserva?.hospede}</td>
                                    <td>${reserva?.dataEntrada.format('dd/MM/yyyy')}</td>
                                    <td>${reserva?.dataSaida.format('dd/MM/yyyy')}</td>
                                    <td>${reserva?.quartos.first()}</td>
                                    %{--<td>${reserva?.numeroAcompanhante}</td>--}%
                                    <td>${reserva?.numeroCrianca}</td>
                                    <td>${reserva?.numeroAdultos}</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <g:form resource="${reserva}" method="DELETE">
                <fieldset class="buttons">
                    <g:link class="btn btn-success mr-2" action="edit" resource="${reserva}">Editar</g:link>
                    <input class="btn btn-success mr-2" type="submit" value="Apagar" onclick="return confirm('${message( default: 'Are you sure?')}');" />
                    <g:link class="btn btn-success mr-2" action="calcularValorPagamento" resource="${reserva}">Pagar Reserva</g:link>
                    <g:link class="btn btn-success mr-2" action="cancelarReserva" resource="${reserva}" name="cancelReservaBtn">Cancelar Reserva</g:link>
                    %{--<g:link class="btn btn-success mr-2" action="cancelarReserva" resource="${reserva}" id="cancelReservaBtn">Cancelar Reserva</g:link>--}%
                </fieldset>
            </g:form>
        </div>

        </div>

</div>
        <div id="cancelModal" class="modal">
            <div class="modal-content">
                <span class="close" id="closeModalBtn">&times;</span>
                <p>Reserva cancelada com sucesso.</p>
            </div>
        </div>
            <script>
                document.addEventListener("DOMContentLoaded", function() {
                    const cancelReservaBtn = document.getElementsByName("cancelReservaBtn");
                    const modal = document.getElementById("cancelModal");

                    cancelReservaBtn.addEventListener("click", function() {
                        modal.style.display = "block";
                    });

                    // Fechar o modal quando o usuário clica fora dele
                    window.addEventListener("click", function(event) {
                        if (event.target === modal) {
                            modal.style.display = "none";
                        }
                    });
                });
            </script>