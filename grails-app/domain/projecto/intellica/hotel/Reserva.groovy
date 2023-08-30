package projecto.intellica.hotel
class Reserva {
    String referencia
    String estado
    Date dataEntrada;
    Date dataSaida;
    int numeroCrianca
    int numeroAdultos
    Hospede hospede;
//    Pagamento pagamento;
    static hasMany = [quartos: Quarto]
    static final String ESTADO_ACTIVO = 'ACTIVO'
    static final String ESTADO_INACTIVO = 'CANCELADA'
    static constraints = {
        numeroCrianca nullable: true
        numeroAdultos nullable: true
        hospede nullable: true
        dataEntrada nullable: true
        dataSaida nullable: true
        quartos nullable: true
        referencia nullable: true
        estado nullable: true
//        pagamento nullable: true

    }

    def beforeInsert() {
        // Verifica se há quartos associados à reserva
        if (quartos) {
            // Itera sobre os quartos selecionados
            quartos.each { quarto ->
                // Atualiza o estado do quarto para "INDISPONIVEL"
                quarto.setEstado(Quarto.ESTADO_INDISPONIVEL)
//                quarto.save(flush: true)  // Salva as alterações no banco de dados
            }
        }

        this.setEstado(ESTADO_ACTIVO)
    }

    def afterInsert() {
        int ano = Calendar.getInstance().get(Calendar.YEAR)
        def resultado = this.id + "/RES/" + ano

        this.setReferencia(resultado)

    }

    String toString() { return this.referencia }
}