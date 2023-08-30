<div class="main-panel">
    <div class="content-wrapper">
        <div class="row">
            <div class="col-lg-16 grid-margin stretch-card">
                <div class="card">
                    <div class="card-body">
                        <h4 class="card-title">Quartos</h4>
                        <table id="tabelaQuarto" class="table">
                            <thead>
                            <tr>
                                <th>Codico de Quarto</th>
                                <th>Numero de Quarto</th>
                                <th>Tipo de Quarto</th>
                                <th>Varanda Privativa</th>
                                <th>Estado do Quarto</th>
                            </tr>
                            </thead>
                            <tbody>
                            <g:each var ="quarto" in="${quartoList}">
                                <tr>
                                    <td><g:link action="show" id="${quarto?.id}">${quarto?.codicoQuarto}</g:link></td>
                                    <td>${quarto?.numeroQuarto}</td>
                                    <td>${quarto?.quartoTipo?.first()}</td>
                                    <td>${quarto?.varandaPrivativa}</td>
                                    <td>${quarto?.estado}</td>
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
