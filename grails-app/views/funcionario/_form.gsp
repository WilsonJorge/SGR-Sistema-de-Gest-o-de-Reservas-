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
                    <input type="text" class="form-control" value="${funcionario?.secUser?.username}" id="username" name="secUser.username" placeholder="User">
                </div>
            </div>
        </div>

<div class="col-lg-12">
    <div class="form-group row">
        <label class="col-sm-3 col-form-label">PassWord </label>
        <div class="col-sm-9">
            <input type="password" class="form-control"  id="password"  name="secUser.password" placeholder="Degite o teu passaword">
        </div>
    </div>
</div>

</div>
<div class="row">
    <div class="col-lg-12">
        <div class="form-group row">
            <label class="col-sm-3 col-form-label">Nome</label>
            <div class="col-sm-9">
                <input type="text" class="form-control" value="${this.funcionario?.nomeFuncionario}" id="nome" name="nomeFuncionario" placeholder="Digite o nome do Funcionario">
            </div>
        </div>
    </div>
    <div class="col-lg-12">
        <div class="form-group row">
            <label class="col-sm-3 col-form-label">Apelido</label>
            <div class="col-sm-9">
                <input type="text" class="form-control" value="${this.funcionario?.apelidoFuncionario}"  id="apelido"  name="apelidoFuncionario" placeholder="Degite o apelido do Funcionario">
            </div>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-lg-12">
        <div class="form-group row">
            <label class="col-sm-3 col-form-label">Morada</label>
            <div class="col-sm-9">
                <input type="text" class="form-control" value="${this.funcionario?.moradaFuncionario}" id="email" name="moradaFuncionario" placeholder="Digite a morada do funcionario">
            </div>
        </div>
    </div>
</div>
<div class="row">
    <div class="col-lg-12">
        <div class="form-group row">
            <label class="col-sm-3 col-form-label">Bilhete de Identificacao</label>
            <div class="col-sm-9">
                <input type="text" class="form-control" value ="${this.funcionario?.biFuncionario}" id="nacionalidade"  name="biFuncionario" placeholder="Digite o numero de BI">
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
                <select class="form-control" id="tipofuncionario"  name="tipoFuncionario">
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
    <g:submitButton name="create" class="btn btn-success mr-2" value="Criar" />
</fieldset>
</form>
</div>
</div>
</div>
</div>
</div>
</fieldset>


%{--
--}%









