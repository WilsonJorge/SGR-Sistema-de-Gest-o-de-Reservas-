<fieldset class="form">

    <div class="col-lg-12">
                <div class="card">
                  <div class="card-body">
%{--<h4 class="card-title">Horizontal Two column</h4>--}%
<form class="form-sample">
    <p class="card-title">Informação pessoal </p>
    <div class="row">
        <div class="col-lg-12">
            <div class="form-group row">
                <label class="col-sm-3 col-form-label">Nome</label>
                <div class="col-sm-9">
                    <input type="text" class="form-control" value="${this.hospede.nomeHospede}" id="nome" name="nomeHospede" placeholder="Digite o nome do Hospede">
                </div>
            </div>
        </div>
        <div class="col-lg-12">
            <div class="form-group row">
                <label class="col-sm-3 col-form-label">Apelido</label>
                <div class="col-sm-9">
                    <input type="text" class="form-control" value="${this.hospede.apedlidoHospede}"  id="apelido"  name="apedlidoHospede" placeholder="Degite o apelido do Hospede">
                </div>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-lg-12">
            <div class="form-group row">
                <label class="col-sm-3 col-form-label">Email</label>
                <div class="col-sm-9">
                    <input type="email" class="form-control" value="${this.hospede.emailHospede}" id="email" name="emailHospede" placeholder="Digite o email do Hospede">
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-12">
            <div class="form-group row">
                <label class="col-sm-3 col-form-label">Bilhete de Identidade</label>
                <div class="col-sm-9">
                    <input type="text" class="form-control" id="bi"  value="${this.hospede.biHospede}" name="biHospede" placeholder="Digite o numero do BI do Hospede">
                </div>
            </div>
        </div>
        <div class="col-lg-12">
            <div class="form-group row">
                <label class="col-sm-3 col-form-label">Idade</label>
                <div class="col-sm-9">
                    <input type="number" class="form-control" value="${this.hospede.idadeHospede}" id="idade"  name="idadeHospede" placeholder="Digite a idade do Hospede">
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-12">
            <div class="form-group row">
                <label class="col-sm-3 col-form-label">Telefone</label>
                <div class="col-sm-9">
                    <input type="text" class="form-control"  value ="${this.hospede.telefoneHospede}" id="telefone"  name="telefoneHospede" placeholder="+258">
                </div>
            </div>
        </div>
        <div class="col-lg-12">
            <div class="form-group row">
                <label class="col-sm-3 col-form-label">Pais</label>
                <div class="col-sm-9">
                    <select class="form-control" id="nacionalidade"  name="nacionalidadeHospede">
                        <option>America</option>
                        <option>Italy</option>
                        <option>Russia</option>
                        <option>Britain</option>
                        <option>Mozambique</option>
                        <option>South-Africa</option>
                        <option>Zambia</option>
                    </select>
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
