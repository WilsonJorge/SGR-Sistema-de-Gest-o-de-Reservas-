<fieldset class="form">

    <div class="grid-margin stretch-card">
        <div class="card">
            <div class="card-body">
                <h4 class="card-title">Cadastro dos Tipos de Quartos</h4>
                <p class="card-description"> Preencha os dados dos Tipos de Quartos </p>
                <form class="forms-sample">

                    <div class="form-group">
                        <label for="codicoquarto">Codico  do Quarto</label>
                        <input type="text" class="form-control" id="codicoquarto" name="codicoTipoQuarto" value="${this.quartoTipo.codicoTipoQuarto}" placeholder="Digite o codico do tipo de quarto">
                    </div>


                    <div class="form-group">
                        <label for="nome">Tipo de Quarto</label>
                        <input type="text" class="form-control" id="nome" name="tipoQuarto" value="${this.quartoTipo.tipoQuarto}" placeholder="Digite o tipo de quarto">
                    </div>

                    <div class="form-group">
                        <label for="numerocama">Numero de Camas</label>
                        <input type="number" class="form-control" id="numerocama"  name="numeroCama" value="${this.quartoTipo.numeroCama}" placeholder="Digite o numero de cama">
                    </div>
                    <div class="form-group">
                        <label for="pre">Preco do Quarto</label>
                        <input type="number" class="form-control"  id="pre"  name="preco"  value="${this.quartoTipo.preco}" placeholder="Digite o  do ">
                    </div>

                    <fieldset class="buttons">
                        <g:submitButton name="create" class="btn btn-success mr-2" value="Actualizar" />
                    </fieldset>
                </form>
            </div>
        </div>
    </div>
</fieldset>
