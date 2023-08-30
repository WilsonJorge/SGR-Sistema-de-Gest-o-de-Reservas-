<div class="main-panel">
    <div class="content-wrapper">
        <div class="row">
            <div class="col-lg-16 grid-margin stretch-card">
                <div class="card">
                    <div class="card-body">
                        <h4 class="card-title">Tipo Quarto</h4>
                        <table id="tabelaTipoQuarto" class="table">
                            <thead>
                            <tr>
                                <th>Codico do quarto</th>
                                <th>Tipo de Quarto</th>
                                <th>Numero de Camas</th>
                                <th>Preco do Quarto</th>
                            </tr>
                            </thead>
                            <tbody>
                            <g:each var ="quartoTipo" in="${quartoTipoList}">
                                <tr>
                                    <td><g:link action="show" id="${quartoTipo?.id}">${quartoTipo?.codicoTipoQuarto}</g:link> </td>
                                    <td>${quartoTipo?.tipoQuarto}</td>
                                    <td>${quartoTipo?.numeroCama}</td>
                                    <td>${quartoTipo?.preco}</td>
                                </tr>
                            </g:each>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
