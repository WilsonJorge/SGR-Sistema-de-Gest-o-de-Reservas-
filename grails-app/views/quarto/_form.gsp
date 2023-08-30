<fieldset class="form">
    <div class="col-lg-12">
        <div class="card">
            <div class="card-body">
                <form class="form-sample w-100">
                    <p class="card-title">Informação do Quarto</p>
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="form-group row">
                                <label class="col-sm-3 col-form-label">Varanda Privativa</label>
                                <div class="col-sm-9">
                                    <select name="varandaPrivativa" class="col-sm-12" name="varandaPrivativa">
                                        <option value="sim">Sim</option>
                                        <option value="nao">Não</option>
                                    </select>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-12">
                            <div class="form-group row">
                                <label class="col-sm-3 col-form-label">Numero do Quarto</label>
                                <div class="col-sm-9">
                                    <input type="number" class="form-control" value="${this.quarto.numeroQuarto}" id="numero" name="numeroQuarto" placeholder="Digite o numero de quarto">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="form-group row">
                                <label class="col-sm-3 col-form-label">Tipo de Quarto</label>
                                <div class="col-sm-9">
                                    <select name="quartoTipo" class="col-sm-12">
                                        <g:each in="${projecto.intellica.hotel.QuartoTipo.list()}" var="tipoQuarto">
                                            <option value="${tipoQuarto.id}">${tipoQuarto.tipoQuarto}</option>
                                        </g:each>
                                    </select>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                    </div>
                    <div class="row">
                    </div>
                    <fieldset class="buttons">
                        <g:submitButton name="create" class="btn btn-success mr-2" value="Criar" />
                    </fieldset>
                </form>
            </div>
        </div>
    </div>
</fieldset>





%{--<fieldset class="form">--}%

%{--<div class="col-lg-12">--}%
        %{--<div class="card">--}%
          %{--<div class="card-body">--}%
%{--<h4 class="card-title">Horizontal Two column</h4>--}%
%{--<form class="form-sample">--}%
    %{--<p class="card-title">Informação da Reserva </p>--}%
    %{--<div class="row">--}%
        %{--<div class="col-lg-12">--}%
            %{--<div class="form-group row">--}%
                %{--<label class="col-sm-3 col-form-label">Numero do Quarto</label>--}%
                %{--<div class="col-sm-9">--}%
                    %{--<input type="number" class="form-control" value="${this.quarto.numeroQuarto}" id="numeroquarto"  name="numeroQuarto" placeholder="Digite o numero de quarto">--}%
                %{--</div>--}%
            %{--</div>--}%
        %{--</div>--}%
    %{--</div>--}%

    %{--<div class="row">--}%
        %{--<div class="col-lg-12">--}%
            %{--<div class="form-group row">--}%
                %{--<label class="col-sm-3 col-form-label">Tipo de Quarto</label>--}%
                %{--<div class="col-sm-9">--}%
                    %{--<select name="quartoTipo" class="col-sm-12">--}%
                        %{--<g:each in="${projecto.intellica.hotel.QuartoTipo.list()}" var="tipoQuarto">--}%
                            %{--<option value="${tipoQuarto.id}">${tipoQuarto.tipoQuarto}</option>--}%
                        %{--</g:each>--}%
                    %{--</select>--}%
                %{--</div>--}%
            %{--</div>--}%
        %{--</div>--}%
    %{--</div>--}%
    %{--<div class="row">--}%
    %{--</div>--}%
    %{--<div class="row">--}%
    %{--</div>--}%
    %{--<fieldset class="buttons">--}%
        %{--<g:submitButton name="create" class="btn btn-success mr-2" value="Criar" />--}%
    %{--</fieldset>--}%
%{--</form>--}%
%{--</div>--}%
%{--</div>--}%
%{--</div>--}%
%{--</div>--}%
%{--</div>--}%
%{--</fieldset>--}%




