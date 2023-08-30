<div class="main-panel">
    <div class="content-wrapper">
        <div class="row">
            <div class="col-lg-16 grid-margin stretch-card">
                <div class="card">
                    <div class="card-body">
                        <h4 class="card-title">Quartos</h4>
                        <table class="table">
                            <thead>
                            <tr>
                                <th>Codico de Quarto</th>
                                <th>Numero de Quarto</th>
                                <th>Varanda Privativa</th>
                                <th>Tipo de  de Quarto</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>${quarto?.codicoQuarto}</td>
                                <td>${quarto?.numeroQuarto}</td>
                                <td>${quarto?.varandaPrivativa}</td>
                                <td>${quarto?.quartoTipo.first()}</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <g:form resource="${this.quarto}" method="DELETE">
                <fieldset class="buttons">
                    <g:link class="btn btn-success mr-2" action="edit" resource="${this.quarto}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                    <input class="btn btn-success mr-2" type="submit" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                </fieldset>
            </g:form>
        </div>

