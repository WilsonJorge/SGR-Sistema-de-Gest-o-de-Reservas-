
<div class="main-panel">
    <div class="content-wrapper">
        <div class="row">
            <div class="col-lg-16 grid-margin stretch-card">
                <div class="card">
                    <div class="card-body">
                        <h4 class="card-title">Hospedes</h4>
                        <table class="table">
                            <thead>
                            <tr>
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
                                 <tr>
                                     <td>${hospede?.nomeHospede}</td>
                                     <td>${hospede?.apedlidoHospede}</td>
                                     <td>${hospede?.emailHospede}</td>
                                     <td>${hospede?.biHospede}</td>
                                     <td>${hospede?.nacionalidadeHospede}</td>
                                     <td>${hospede?.telefoneHospede}</td>
                                     <td>${hospede?.idadeHospede}</td>
                                 </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <g:form resource="${this.hospede}" method="DELETE">
                <fieldset class="buttons">
                    <g:link class="btn btn-success mr-2" action="edit" resource="${this.hospede}">Editar</g:link>
                    <input class="btn btn-success mr-2" type="submit" value="Apagar" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                </fieldset>
            </g:form>
        </div>


