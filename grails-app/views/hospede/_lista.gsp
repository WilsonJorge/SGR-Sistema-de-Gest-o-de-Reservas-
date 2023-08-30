<div class="main-panel">
    <div class="content-wrapper">
        <div class="row">
            <div class="col-lg-16 grid-margin stretch-card">
                <div class="card">
                    <div class="card-body">
                        <h4 class="card-title">Hospedes</h4>
                        <table id="myTable" class="table">
                            <thead>
                            <tr>
                                <th>Referencia</th>
                                <th>Nome</th>
                                <th>Apelido</th>
                                <th>Email</th>
                                <th>Bilhete de Identidade</th>
                                <th>Pais</th>
                                <th>Telefone</th>
                                <th>Idade</th>

                            </tr>
                            </thead>
                            <tbody>
                            <g:each var ="hospede" in="${hospedeList}">
                                <tr>
                                    <td><g:link action="show" id="${hospede?.id}">${hospede?.referencia}</g:link></td>
                                    <td>${hospede?.nomeHospede}</td>
                                    <td>${hospede?.apedlidoHospede}</td>
                                    <td>${hospede?.emailHospede}</td>
                                    <td>${hospede?.biHospede}</td>
                                    <td>${hospede?.nacionalidadeHospede}</td>
                                    <td>${hospede?.telefoneHospede}</td>
                                    <td>${hospede?.idadeHospede}</td>

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
