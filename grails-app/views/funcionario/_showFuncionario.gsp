<div class="main-panel">
    <div class="content-wrapper">
        <div class="row">
            <div class="col-lg-16 grid-margin stretch-card">
                <div class="card">
                    <div class="card-body">
                        <h4 class="card-title">Funcionarios</h4>
                        <table class="table">
                            <thead>
                            <tr>
                                <th>Nome</th>
                                <th>Apelido</th>
                                <th>Morada</th>
                                <th>Turno de Trabalho</th>
                                <th>Bilhete de Intetificacao</th>
                            </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>${funcionario?.nomeFuncionario}</td>
                                    <td>${funcionario?.apelidoFuncionario}</td>
                                    <td>${funcionario?.moradaFuncionario}</td>
                                    <td>${funcionario?.turnoFuncionario}</td>
                                    <td>${funcionario?.biFuncionario}</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <g:form resource="${funcionario}" method="DELETE">
                <fieldset class="buttons">
                    <g:link class="btn btn-success mr-2" action="edit" resource="${funcionario}">Editar</g:link>
                    <input class="btn btn-success mr-2" type="submit" value="Apagar" onclick="return confirm('${message( default: 'Are you sure?')}');" />
                </fieldset>
            </g:form>
        </div>

