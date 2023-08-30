<fieldset class="form">

<div class="col-lg-12">
        <div class="card">
          <div class="card-body">
<form class="form-sample">
    <p class="card-title">Informação pessoal </p>

    <div class="row">
        <div class="col-lg-12">
            <div class="form-group row">
                <label class="col-sm-3 col-form-label">User</label>
                <div class="col-sm-9">
                    <input type="text" class="form-control" value="${this.secUser.username}" id="user" name="username" placeholder="User">
                </div>
            </div>
        </div>

        <div class="col-lg-12">
            <div class="form-group row">
                <label class="col-sm-3 col-form-label">PassWord </label>
                <div class="col-sm-9">
                    <input type="text" class="form-control" value="${this.secUser.password}"  id="password"  name="password" placeholder="Degite o teu passaword">
                </div>
            </div>
        </div>

        <div class="col-lg-12">
            <div class="form-group row">
                <label class="col-sm-3 col-form-label">Email </label>
                <div class="col-sm-9">
                    <input type="email" class="form-control" value="${this.secUser.emailFuncionario}" placeholder=""  id=" emailFuncionario"  name=" emailFuncionario" placeholder="Degite o teu email">
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-12">
            <div class="form-group row">
                <label class="col-sm-3 col-form-label">Nome</label>
                <div class="col-sm-9">
                    <input type="text" class="form-control" value="${this.secUser.nomeFuncionario}" id="nome" name="nomeFuncionario" placeholder="Digite o nome do Funcionario">
                </div>
            </div>
        </div>
        <div class="col-lg-12">
            <div class="form-group row">
                <label class="col-sm-3 col-form-label">Apelido</label>
                <div class="col-sm-9">
                    <input type="text" class="form-control" value="${this.secUser.apelidoFuncionario}"  id="apelido"  name="apelidoFuncionario" placeholder="Degite o apelido do Funcionario">
                </div>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-lg-12">
            <div class="form-group row">
                <label class="col-sm-3 col-form-label">Morada</label>
                <div class="col-sm-9">
                    <input type="text" class="form-control" value="${this.secUser.moradaFuncionario}" id="email" name="moradaFuncionario" placeholder="Digite a morada do funcionario">
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-12">
            <div class="form-group row">
                <label class="col-sm-3 col-form-label">Bilhete de Identificacao</label>
                <div class="col-sm-9">
                    <input type="text" class="form-control" value ="${this.secUser.biFuncionario}" id="nacionalidade"  name="biFuncionario" placeholder="Digite o numero de BI">
                </div>
            </div>
        </div>

    </div>
    <div class="row">
        <div class="col-lg-12">
            <div class="form-group row">
                <label class="col-sm-3 col-form-label">Turno de Trabalho</label>
                <div class="col-sm-9">
                    <select class="form-control" id="bi"  name="turnoFuncionario">
                        <option>Diurno</option>
                        <option>Noturno</option>
                    </select>
                </div>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-lg-12">
            <div class="form-group row">
                <label class="col-sm-3 col-form-label">Tipo Funcionario</label>
                <div class="col-sm-9">
                    <select class="form-control" id="tipofuncionario"  name="tipofuncionario">
                        <option>Administrador</option>
                        <option>Normal User</option>
                    </select>
                </div>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-lg-12">
            <div class="form-group row">
                <label class="col-sm-3 col-form-label">Sec Role</label>
                <div class="col-sm-9">
                    <g:select name="secrole" from="${seguranca.SecRole.findAll()}" optionKey="id" optionValue="authority" id="secrole"/>
                </div>
            </div>
        </div>

    </div>
    <fieldset class="buttons">
        <g:submitButton name="create" class="btn btn-success mr-2" value="${message(code: 'default.button.create.label', default: 'create')}" />
    </fieldset>
</form>
</div>
</div>
</div>
</div>
</div>
</fieldset>









