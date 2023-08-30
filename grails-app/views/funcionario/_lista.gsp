<div class="main-panel">
    <div class="content-wrapper">
        <div class="row">
            <div class="col-lg-16 grid-margin stretch-card">
                <div class="card">
                    <div class="card-body">
                        <h4 class="card-title">Funcionarios</h4>
                        <table id="funcionarios" class="table">
                            <thead>
                            <tr>
                                <th>Referencia</th>
                                <th>Nome</th>
                                <th>Apelido</th>
                                <th>Morada</th>
                                <th>Turno de Trabalho</th>
                                <th>Bilhete de Intetificacao</th>
                                <th>Tipo de Funcionario</th>
                            </tr>
                            </thead>
                            <tbody>
                            <g:each in="${funcionarioList}" var ="funcionario">
                                <tr>
                                    <td><g:link action="show" id="${funcionario?.id}">${funcionario?.referencia} </g:link> </td>
                                    <td>${funcionario?.nomeFuncionario}</td>
                                    <td>${funcionario?.apelidoFuncionario}</td>
                                    <td>${funcionario?.moradaFuncionario}</td>
                                    <td>${funcionario?.turnoFuncionario}</td>
                                    <td>${funcionario?.biFuncionario}</td>
                                    <td>${funcionario?.tipoFuncionario}</td>
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