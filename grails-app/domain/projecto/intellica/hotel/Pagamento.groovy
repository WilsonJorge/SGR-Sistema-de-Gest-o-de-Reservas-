package projecto.intellica.hotel

class Pagamento {
    double cartaoPagamento
    double numeroSerie
    double valorPagarTotal
    Reserva reserva
     static constraints = {
        cartaoPagamento nullable:true
        numeroSerie nullable:true
        valorPagarTotal nullable:true
        reserva nullable:true
    }

}
