package projecto.intellica.hotel
class Quarto {
     String estado
    String  codicoQuarto
    int numeroQuarto;
    String varandaPrivativa

    static  hasMany = [quartoTipo:QuartoTipo]
//    static belongsTo = [reserva:Reserva]
    static final String ESTADO_DISPONIVEL ='DISPONIVEL'
    static final String ESTADO_INDISPONIVEL ='INDISPONIVEL'

    static constraints = {
       codicoQuarto nullable:true
        quartoTipo nullable: true
        estado nullable: true
        varandaPrivativa nullable: true
//        reserva nullable:true
    }
    String toString(){
        return numeroQuarto
    }

    def beforeInsert(){

        this.setEstado(ESTADO_DISPONIVEL)
    }

    def afterInsert()
    {
        int ano = Calendar.getInstance().get(Calendar.YEAR)
        def codicoQuarto =this.id+"/QUARTO/"+ano

        this.setCodicoQuarto(codicoQuarto)
    }
}


