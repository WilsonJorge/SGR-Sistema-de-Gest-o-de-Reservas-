package projecto.intellica.hotel

import seguranca.SecUser

class Hospede {
    String nomeHospede;
    String apedlidoHospede;
    String emailHospede;
    String biHospede;
    String nacionalidadeHospede;
    String telefoneHospede;
    int idadeHospede;
    String referencia
    SecUser secUser
    static hasMany = [reservas:Reserva]

    static constraints = {

        nomeHospede nullable: true, blank: true
        apedlidoHospede nullable: true,blank: true
        emailHospede email: true
        nacionalidadeHospede nullable: true, blank: true
        telefoneHospede nullable:  true,blank: true
        biHospede nullable: true,blank: true, maxSize: 13 ,unique: true
        idadeHospede nullable: true, blank:true ,min: 18, max: 110
        referencia nullable: true
        secUser nullable: true
    }

    def afterInsert()
    {
        int ano = Calendar.getInstance().get(Calendar.YEAR)
        def resultado =this.id+"/HOSP/"+ano

        this.setReferencia(resultado)
    }

    String toString() {
        return this.nomeHospede+"-"+this.apedlidoHospede
    }

}