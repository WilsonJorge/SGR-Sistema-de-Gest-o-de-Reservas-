<%@ page import="projecto.intellica.hotel.Quarto" %>
<fieldset class="form">

<div class="col-lg-12">
        <div class="card">
          <div class="card-body">
<form class="form-sample">
    <p class="card-title">Informação da Reserva </p>
    <div class="row">
        <div class="col-lg-12">
            <div class="form-group row">
                <label class="col-sm-3 col-form-label">Nome</label>
                <div class="col-sm-9">
                    <select name="hospede" class="col-sm-12">
                        <g:each in="${projecto.intellica.hotel.Hospede.list()}" var="hospede">
                            <option value="${hospede.id}">${hospede.nomeHospede}</option>
                        </g:each>
                    </select>
              </div>
          </div>
        </div>

        <div class="col-lg-12">
            <div class="form-group row">
                <label class="col-sm-3 col-form-label">Data Entrada</label>
                <div class="col-sm-9">
                    <input type="date" class="form-control" id="data_entrada" name="dataE" placeholder="Check In" value="${this.reserva.dataEntrada}" onblur="validateDates();">
                </div>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-lg-12">
            <div class="form-group row">
                <label class="col-sm-3 col-form-label">Data Saida</label>
                <div class="col-sm-9">
                    <input type="date" class="form-control" id="data_saida" name="dataS" placeholder="Check Out" value="${this.reserva.dataSaida}" onblur="validateDates();">
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-12">
            <div class="form-group row">
                <label class="col-sm-3 col-form-label">Numero do Quarto</label>
                <div class="col-sm-9">
                    <select name="quartos" id="numero_quarto" class="col-sm-12">
                        <g:each in="${Quarto.executeQuery("SELECT NEW MAP(q.id as id, q.numeroQuarto as numero) FROM Quarto q WHERE q.estado = :estado", [estado: Quarto.ESTADO_DISPONIVEL])}" var="quarto">
                            <option value="${quarto.id}">${quarto.numero}</option>
                        </g:each>
                    </select>

                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-12">
            <div class="form-group row">
                <label class="col-sm-3 col-form-label">Criancas</label>
                <div class="col-sm-9">
                    <select class="form-control" id="criancas" name="numeroCrianca">
                        <option value="0">0</option>
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="3">4</option>
                        <option value="3">5</option>
                    </select>
                </div>
            </div>
        </div>

        <div class="col-lg-12">
            <div class="form-group row">
                <label class="col-sm-3 col-form-label">Adultos</label>
                <div class="col-sm-9">
                    <select class="form-control" id="adultos" name="numeroAdultos">
                        <option value="0">0</option>
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="3">4</option>
                        <option value="3">5</option>
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







