<div class="form-group">
    <div class="input-group">
        <input type="text" class="form-control" name="secUser.username" placeholder="Username">
        <div class="input-group-append">
            <span class="input-group-text">
                <i class="mdi mdi-check-circle-outline"></i>
            </span>
        </div>
    </div>
</div>

<div class="form-group">
    <div class="input-group">
        <input type="password" class="form-control" name="secUser.password" placeholder="Password">
        <div class="input-group-append">
            <span class="input-group-text">
                <i class="mdi mdi-check-circle-outline"></i>
            </span>
        </div>
    </div>
</div>

<div class="form-group">
    <div class="input-group">
        <input type="text" class="form-control" id="nomeHospede" name="nomeHospede" placeholder="Nome">
        <div class="input-group-append">
            <span class="input-group-text">
                %{--<i class="mdi mdi-check-circle-outline"></i>--}%
            </span>
        </div>
    </div>
</div>

<div class="form-group">
    <div class="input-group">
        <input type="text" class="form-control" id="apedlidoHospede" name="apedlidoHospede" placeholder="Apelido">
        <div class="input-group-append">
            <span class="input-group-text">
                %{--<i class="mdi mdi-check-circle-outline"></i>--}%
            </span>
        </div>
    </div>
</div>

<div class="form-group">
    <div class="input-group">
        <input type="email" class="form-control" id="emailhospede" name="emailHospede" placeholder="Email">
        <div class="input-group-append">
            <span class="input-group-text">
                %{--<i class="mdi mdi-check-circle-outline"></i>--}%
            </span>
        </div>
    </div>
</div>
<div class="form-group">
    <div class="input-group">
        <input type="text" class="form-control" id="bihospede" name="biHospede" placeholder="Bilhete de Identificacao">
        <div class="input-group-append">
            <span class="input-group-text">
                %{--<i class="mdi mdi-check-circle-outline"></i>--}%
            </span>
        </div>
    </div>
</div>
<div class="form-group">
    <div class="input-group">
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
<div class="form-group">
    <div class="input-group">
        <input type="number" class="form-control" id="telefone" name="telefoneHospede" placeholder="Contacto">
        <div class="input-group-append">
            <span class="input-group-text">
                %{--<i class="mdi mdi-check-circle-outline"></i>--}%
            </span>
        </div>
    </div>
</div>

<div class="form-group">
    <div class="input-group">
        <input type="number" class="form-control" id="idade" name="idadeHospede" placeholder="Idade">
        <div class="input-group-append">
            <span class="input-group-text">
                %{--<i class="mdi mdi-check-circle-outline"></i>--}%
            </span>
        </div>
    </div>
</div>

<div class="form-group d-flex justify-content-center">
    <div class="form-check form-check-flat mt-0">
        <label class="form-check-label">
            <input type="checkbox" class="form-check-input" checked> I agree to the terms </label>
    </div>
</div>

<fieldset class="form-group">
    <g:submitButton name="create" class="btn btn-primary submit-btn btn-block" value="Registar" />
</fieldset>

<div class="text-block text-center my-3">
    <span class="text-small font-weight-semibold">Já tem uma conta?</span>
    %{--<a href="login.html" class="text-black text-small">Login</a>--}%
    <g:link controller='login' action='auth' class="text-black text-small"><g:message/>Login</g:link>
</div>
