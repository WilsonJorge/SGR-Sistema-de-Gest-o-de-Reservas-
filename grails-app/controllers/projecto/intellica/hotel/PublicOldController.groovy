package projecto.intellica.hotel

import grails.validation.ValidationException
import org.springframework.security.access.annotation.Secured
import seguranca.SecRole
import seguranca.SecUser
import seguranca.SecUserSecRole

import static org.springframework.http.HttpStatus.CREATED

class PublicOldController {

    HospedeService hospedeService
    def userDetailsService

    def index() {
        println("DONE INDEX")
        redirect(url: '/public/home')

    }

    def home() {
        println("DONE")
        def resultado = QuartoTipo.executeQuery("select new map(id as id, preco as preco, tipoQuarto as tipoQuarto) from QuartoTipo")
        println("Quarto e Preco:" + resultado)
        render(view: 'home', model: [tiposQuarto: resultado])

    }


    def redirectToMyView() {
        redirect(view: 'home')

    }

    def registarHospedeOnline() {
        respond new Hospede(params)
    }

    def saveHospede(Hospede hospede) {
        if (hospede == null) {
            notFound()
            return
        }
        try {
            // Criacao de um novo SecUser para um Hospede
            def secUser = new SecUser(
                    username: params.secUser.username,
                    password: params.secUser.password,
            )
            // Associar o SecUser ao Funcionario
            hospede.secUser = secUser
            def secRole = SecRole.findByAuthority("ROLE_GUEST")
            def authority = secRole.authority
            println('authority: '+authority)
            secUser.save(flush: true)
            SecUserSecRole.create(secUser,secRole)
            hospedeService.save(hospede)

        } catch (ValidationException e) {
            println(e.message)
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'hospede.label', default: 'Hospede'), hospede.id])
                redirect hospede
            }
            '*' { respond hospede, [status: CREATED] }
        }
    }

//    def createUser(Hospede hospede){
//      def userDetails = new User(username:'ADMIN',password:'ADMIN',enabled:true).save()
//
//        println("User criado")
//    }
    @Secured(['permitAll'])
    def createUser(Hospede hospede) {
        def secuser = new SecUser(username: 'Wilson', password: 'Wilson', enabled: true)
        secuser.save(flush: true)

        println("User created successfully")
    }
    @Secured(['permitAll'])
    def recerdadosdoQuarto() {
        def resultado = QuartoTipo.executeQuery("select new map(preco as preco, tipoQuarto as tipoQuarto) from QuartoTipo")

        println("Quarto e Preco:" + resultado)

    }



        def salvarHospede() {


        def dte = params?.dataE
        def dts = params?.dataS
        def dataEntrada = new Date()?.parse("yyyy-MM-dd", dte)
        def dataSaida = new Date()?.parse("yyyy-MM-dd", dts)
        def numeroAcompanhante = Integer.parseInt(params.numeroAcompanhante)
        def numeroCrianca =Integer.parseInt(params.numeroCrianca)
        def numeroAdultos = Integer.parseInt(params.numeroAdultos)
        def numeroQuarto = Integer.parseInt(params.numeroQuarto)
        def tipoQuarto = params.tipoQuarto

        def quarto = Quarto.findByNumeroQuarto(numeroQuarto)

        println("dataEntrada: " + dataEntrada)
        println("dataSaida: " + dataSaida)

        Reserva reserva = new Reserva()
        reserva.setHospede(Hospede.findByBiHospede(biHospede))
        reserva.setDataEntrada(dataEntrada)
        reserva.setDataSaida(dataSaida)
        reserva.setQuarto(quarto)
        reserva.setNumeroAcompanhante(numeroAcompanhante)
        reserva.setNumeroCrianca(numeroCrianca)
        reserva.setNumeroAdultos(numeroAdultos)

        if (!reserva.hasErrors()) {
            reserva.save(flash: true, failOnError: true)


            render(view: 'modal', model: [reserva:reserva])

        } else {
            render("Erro!Tente novamente")
        }


        def resultado = QuartoTipo.executeQuery("select new map(id as id, preco as preco, tipoQuarto as tipoQuarto) from QuartoTipo")

        def resultadoQuarto= Quarto.executeQuery("select numeroQuarto from Quarto")

         double valorApagar,valorIVA
         double IVA = 0.17

        def tipo1 = resultado.tipoQuarto[0]
        def tipo2 = resultado.tipoQuarto[1]
        def tipo3 = resultado.tipoQuarto[2]
        def tipo4 = resultado.tipoQuarto[3]

        def preco1 = resultado.preco[0]
        def preco2 = resultado.preco[1]
        def preco3 = resultado.preco[2]
        def preco4 = resultado.preco[3]


        if(tipoQuarto == tipo1)
        {
             valorApagar = preco1*(numeroAcompanhante+1)
             valorIVA = valorApagar +(valorApagar* IVA)


        }else if(tipoQuarto == tipo2){

            valorApagar = preco2*(numeroAcompanhante+1)
            valorIVA = valorApagar +(valorApagar*IVA)

        }else if(tipoQuarto == tipo3){

            valorApagar = preco3*(numeroAcompanhante+1)
            valorIVA = valorApagar +(valorApagar*IVA)

        }else {

            valorApagar= preco4*(numeroAcompanhante+1)
            valorIVA = valorApagar +(valorApagar *IVA)


        }
        println("Dados do Hospede:"+ nomeHospede)
        render(view: 'fazerPagamento', model: [valorApagar:valorApagar,valorIVA:valorIVA, nomeHospede: nomeHospede,apedlidoHospede:apedlidoHospede,dataEntrada:dataEntrada,dataSaida:dataSaida,quarto:quarto,numeroAcompanhante:numeroAcompanhante,numeroCrianca:numeroCrianca,
                                               numeroAdultos:numeroAdultos])



    }
     def gravarPagamento(){

         def nomeHospede = params.nomeHospede
         def dataEntrada = params.dataEntrada
         def dataSaida= params.dataSaida
         def apedlidoHospede = params.apedlidoHospede
         def quarto = params.quarto
         def numeroAcompanhante=params.numeroAcompanhante
         def numeroCrianca=params.numeroCrianca
         def numeroAdultos=params.numeroAdultos

         def cartaoPagamento = Double.parseDouble(params.cartaoPagamento)
         def numeroSerie =Double.parseDouble(params.numeroSerie)
         def valorPagarTotal = Double.parseDouble(params.valorPagarTotal)

         Pagamento pagamento = new Pagamento()
         pagamento.setCartaoPagamento(cartaoPagamento)
         pagamento.setNumeroSerie(numeroSerie)
         pagamento.setValorPagarTotal(valorPagarTotal)



         if(!pagamento.hasErrors()){
             pagamento.save(flash:true,failOnError:true)


             render(view: 'modal', model: [ nomeHospede: nomeHospede,valorPagarTotal:valorPagarTotal,dataEntrada:dataEntrada,dataSaida:dataSaida,
                                            apedlidoHospede:apedlidoHospede,quarto:quarto,numeroAcompanhante:numeroAcompanhante,numeroCrianca:numeroCrianca,numeroAdultos:numeroAdultos])
         }

     }


 }


