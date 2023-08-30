<div class="main-panel">
    <div class="content-wrapper">
        <div class="row">
            <div class="col-lg-16 grid-margin stretch-card">
                <div class="card">
                    <div class="card-body">
                        <h4 class="card-title">Tipo Quarto</h4>
                        <table class="table">
                            <thead>
                            <tr>
                                <th>Codico  do Quarto</th>
                                <th>Tipo de Quarto</th>
                                <th>Numero de Camas</th>
                                <th>Preco do Quarto</th>
                            </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>${quartoTipo?.codicoTipoQuarto}</td>
                                    <td>${quartoTipo?.tipoQuarto}</td>
                                    <td>${quartoTipo?.numeroCama}</td>
                                    <td>${quartoTipo?.preco}</td>
                                </tr>
                            </tbody>

                        </table>

                    </div>

                </div>

            </div>
            <g:form resource="${QuartoTipo}" method="DELETE">
                <fieldset class="buttons">

                    <g:link class="btn btn-success mr-2" action="edit" resource="${quartoTipo}">Editar</g:link>
                    <input class="btn btn-success mr-2" type="submit" value="Apagar" onclick="return confirm('${message( default: 'Are you sure?')}');" />
                </fieldset>
            </g:form>
        </div>