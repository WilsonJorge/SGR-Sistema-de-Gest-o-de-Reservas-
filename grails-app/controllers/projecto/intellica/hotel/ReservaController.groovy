package projecto.intellica.hotel

import grails.validation.ValidationException
import org.springframework.security.access.annotation.Secured

import java.text.NumberFormat
import java.text.SimpleDateFormat
import java.util.concurrent.TimeUnit

import static org.springframework.http.HttpStatus.*

class ReservaController {

    ReservaService reservaService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond reservaService.list(params), model:[reservaCount: reservaService.count()]
    }

    def dashboard() {
        redirect(url: '/menu/home')

    }


    def show(Long id) {
        respond(reservaService.get(id))

    }
    def create() {

        respond new Reserva(params)
    }

      def calculoValor(Reserva reserva){

          def quarto = params?.quartos

          println()
          int valorapagar = 5000
          render(view: 'reservamodel', model: [valorapagar:valorapagar])
      }


    def save(Reserva reserva) {
        println params
        def dte = params?.dataE
        def dts = params?.dataS
        def dataEntrada = new Date()?.parse("yyyy-MM-dd", dte)
        def dataSaida = new Date()?.parse("yyyy-MM-dd", dts)
        reserva.setDataEntrada(dataEntrada)
        reserva.setDataSaida(dataSaida)

        if (reserva == null) {
            notFound()
            return
        }

        try {
            reservaService.save(reserva)

            //Recebendo o Objecto e sendo enviado para o metodo CalcularValor
            calcularValorPagamento(reserva)

        } catch (ValidationException e) {
            respond reserva.errors, view:'create'
            return
    }


        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'reserva.label', default: 'Reserva'), reserva.id])
                redirect reserva
            }
            '*' { respond reserva, [status: CREATED] }
        }




    }


    def edit(Long id) {
        respond reservaService.get(id)
    }

    def update(Reserva reserva) {
        if (reserva == null) {
            notFound()
            return
        }

        try {
            reservaService.save(reserva)
        } catch (ValidationException e) {
            respond reserva.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'reserva.label', default: 'Reserva'), reserva.id])
                redirect reserva
            }
            '*'{ respond reserva, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        reservaService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'reserva.label', default: 'Reserva'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'reserva.label', default: 'Reserva'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }

    //CUSTOM METHODS

    def calcularValorPagamento(Reserva reserva)
    {



        def numeroQuarto = reserva?.quartos?.find { it != null }?.numeroQuarto  // Obtém o número do quarto da reserva

        def resultado = Quarto.executeQuery(
                "select new map(q.id as id, q.numeroQuarto as numeroQuarto, qt.preco as preco, qt.tipoQuarto as tipoQuarto) " +
                        "from Quarto q " +
                        "inner join q.quartoTipo qt " +
                        "where q.numeroQuarto = :numeroQuarto", [numeroQuarto: numeroQuarto])

        if (resultado) {
            def quartoInfo = resultado.find { it.numeroQuarto == numeroQuarto }  // Busca o resultado com base no número do quarto

            long diferencaMillis = reserva.dataSaida.getTime() - reserva.dataEntrada.getTime()
             def checkIN = reserva.dataEntrada
             def checkOUT = reserva.dataSaida
             def hospede = reserva.hospede
             def criancas = reserva.numeroCrianca
             def adultos = reserva .numeroAdultos
             def total = criancas + adultos
            def reservaReferencia = reserva.referencia


            // Converte a diferença para dias
            long diferencaDias = TimeUnit.MILLISECONDS.toDays(diferencaMillis)
            println("dia:"+diferencaDias)
            println("Referencia de Da Reserva:" )


            if (quartoInfo) {
                def precoquarto = quartoInfo.preco  // Obtém o preço do quarto

                def valorAPagar = [(precoquarto * diferencaDias) + (precoquarto/2 *(reserva.numeroAdultos + reserva.numeroCrianca))].first()

                Locale locale = new Locale("pt", "MT")
                NumberFormat currencyFormat = NumberFormat.getCurrencyInstance(locale)
                String formattedValue = currencyFormat.format(valorAPagar)

                println("Dados do Valor Apagar:" +formattedValue)
                render( view: 'reservamodel' , model:[reservaReferencia:reservaReferencia,valorAPagar:valorAPagar,checkIN:checkIN,checkOUT:checkOUT,
                hospede:hospede,criancas:criancas,adultos:adultos])

                return valorAPagar
            }
        }

        return null  // Ou retorne um valor padrão se o número do quarto não for encontrado
    }

    def pagamentoReserva(Reserva reserva) {


                    def cartaoPagamento = Double.parseDouble(params.cartaoPagamento)
                    def numeroSerie =Double.parseDouble(params.numeroSerie)
                    def valorPagarTotal =Double.parseDouble(params.valorPagar)
                    def dataEntrada = params.dataE
                    def dataSaida = params.dataS
                    def nomeHospede = params.hospede
                    def numeroCriancas = params.numeroCriancas
                    def numeroAdultos =params.numeroAdultos
                    def reservaReferencia = params.reserva

                    def referencia = params.referencia
                    def reservaID = Reserva.executeQuery("SELECT r.id FROM Reserva r WHERE r.referencia LIKE ?", [reservaReferencia]).first()

                    println("ID DA RESRVA:"+reservaID)

                    println("ID DA RESERVA:"+reservaReferencia)



                    // Data original como string
                    def dataOriginalStr = "2023-08-08 00:00:00.0"

                    // Remover os milissegundos da string das datas
                    def dataEntradaSemMillis = dataEntrada.split("\\.")[0]
                    def dataSaidaSemMillis = dataSaida.split("\\.")[0]

                    // Converter a string em um objeto Date
                    def dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss")
                    def dataOriginal1 = dateFormat.parse(dataEntradaSemMillis)
                    def dataOriginal2 = dateFormat.parse(dataSaidaSemMillis)

                    // Formatar a data para exibir na view
                    def novoFormato = new SimpleDateFormat("dd/MM/yyyy")
                    def dataFormatada1 = novoFormato.format(dataOriginal1)
                    def dataFormatada2 = novoFormato.format(dataOriginal2)


                Pagamento pagamento = new Pagamento()
                pagamento.setCartaoPagamento(cartaoPagamento)
                pagamento.setNumeroSerie(numeroSerie)
                pagamento.setValorPagarTotal(valorPagarTotal)
                pagamento.setReserva(Reserva.findById(reservaID))
                    if(!pagamento.hasErrors()){
                        pagamento.save(flash:true,failOnError:true)
                        render(view: 'recibo23', model: [ nomeHospede: nomeHospede,dataFormatada1:dataFormatada1,dataFormatada2:dataFormatada2,
                                                       dataSaida:dataSaida,numeroCriancas:numeroCriancas,
                                                       numeroAdultos:numeroAdultos,valorPagarTotal:valorPagarTotal,reservaReferencia:reservaReferencia])
                }

        }
            def cancelarReserva(Long id) {
                def reserva = Reserva.get(id) // Supondo que você está usando GORM para persistência

                if (reserva) {
                    // Atualize o estado da reserva para "cancelada"
                    reserva.estado = "CANCELADA"
                    reserva.save(flush: true)

                    render(view:'cancelamento')
                } else {
                    render(status: 404, text: "Reserva não encontrada.")
                }
            }

    }

