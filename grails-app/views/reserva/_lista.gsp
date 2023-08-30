<div class="main-panel">
    <div class="content-wrapper">
        <div class="row">
            <div class="col-lg-16 grid-margin stretch-card">
                <div class="card">
                    <div class="card-body">
                        <h4 class="card-title">Reservas</h4>
                        <table id="myTable" class="table">
                            <thead>
                            <tr>
                                <th>Referencia</th>
                                <th>Hospede</th>
                                <th>Data Entrada</th>
                                <th>Data Saida</th>
                                <th>Num.Quarto</th>
                                <th>Nummero Criancas</th>
                                <th>Numero Adultos</th>
                                <th>Estado Reserva</th>
                            </tr>
                            </thead>
                            <tbody>
                            <g:each var ="reserva" in="${reservaList}">
                                <tr>
                                    <td><g:link action="show" id="${reserva?.id}">${reserva?.referencia}</g:link> </td>
                                    <td>${reserva?.hospede?.nomeHospede}</td>
                                    <td>${reserva?.dataEntrada.format('dd/MM/yyyy')}</td>
                                    <td>${reserva?.dataSaida.format('dd/MM/yyyy')}</td>
                                    <td>${reserva?.quartos.first()}</td>
                                    <td>${reserva?.numeroCrianca}</td>
                                    <td>${reserva?.numeroAdultos}</td>
                                    %{--<td>${reserva?.estado}</td>--}%
                                    %{--<td>--}%
                                        %{--<span class="estado ${reserva.estado == 'Activo' ? 'ativo' : 'inativo'}">${reserva?.estado}</span>--}%
                                    %{--</td>--}%
                                    <td>
                                        <span class="${reserva.estado == 'CANCELADA' ? 'cancelada' : ''}">${reserva?.estado}</span>
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



