
<fieldset class="form">

<div class="col-lg-12">
        <div class="card">
          <div class="card-body">
%{--<h4 class="card-title">Horizontal Two column</h4>--}%
<form class="form-sample">
    <p class="card-title">Informação da Reserva </p>
    <div class="row">
        <div class="col-lg-12">
            <div class="form-group row">
                <label class="col-sm-3 col-form-label">Tipo de Quarto</label>
                <div class="col-sm-9">
                    <input type="text" class="form-control" id="nome" name="tipoQuarto" placeholder="Digite o tipo de quarto">
                </div>
            </div>
        </div>
        <div class="col-lg-12">
            <div class="form-group row">
                <label class="col-sm-3 col-form-label">Imagem do Quarto</label>
                <div class="col-sm-9">
                    <input type="file" class="form-control" id="imageFile" name="imageData">
                </div>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-lg-12">
            <div class="form-group row">
                <label class="col-sm-3 col-form-label">Numero de Camas</label>
                <div class="col-sm-9">
                        <input type="number" class="form-control" id="numerocama"  name="numeroCama" placeholder="Digite o numero de cama">
                </div>
            </div>
        </div>

        <div class="col-lg-12">
            <div class="form-group row">
                <label class="col-sm-3 col-form-label">Preco do Quarto</label>
                <div class="col-sm-9">
                    <input type="number" class="form-control"  id="pre"  name="preco" placeholder="Digite o Preco do Quarto ">
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
</div>
</div>
</fieldset>
