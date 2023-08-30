package projecto.intellica.hotel

import seguranca.SecUser

class Funcionario {
    String nomeFuncionario
    String apelidoFuncionario
    String moradaFuncionario
    String turnoFuncionario
    String biFuncionario
    String tipoFuncionario
    String referencia
    SecUser secUser
    static constraints = {
        nomeFuncionario nullable: true , blank: false
        apelidoFuncionario nullable: true,blank: false
        moradaFuncionario nullable: true,blank: false
        turnoFuncionario nullable: true ,blank: false , maxSize: 10
        biFuncionario nullable: true
        tipoFuncionario nullable: true
        referencia nullable: true
        secUser nullable: true
    }

    @Override
    String toString() {
        return this.nomeFuncionario;
    }

    def afterInsert()
    {
        int ano = Calendar.getInstance().get(Calendar.YEAR)
        def resultado =this.id+"/FUNC/"+ano

        this.setReferencia(resultado)
    }
}