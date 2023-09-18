package projecto.intellica.hotel

import grails.plugin.springsecurity.SpringSecurityService
import grails.plugin.springsecurity.SpringSecurityUtils
import grails.validation.ValidationException
import org.springframework.security.access.annotation.Secured
import seguranca.SecRole
import seguranca.SecUser
import seguranca.SecUserSecRole

import java.text.NumberFormat
import java.util.concurrent.TimeUnit

import static org.springframework.http.HttpStatus.CREATED

class  PublicController {
    SpringSecurityService springSecurityService

    HospedeService hospedeService
    ReservaService reservaService
    PagamentoService pagamentoService
    ContactoService contactoService

    def userDetailsService

    def index() {
        println("DONE INDEX")

    }

    def home() {


        println("DONE")
        def user = springSecurityService.currentUser

        println("USER LOGADO:" + user);

        if (user) {
            println("CHEGOUU")
            def sec = SecUserSecRole?.executeQuery('select s.secRole.authority from SecUserSecRole s where s.secUser.id = ?', [user?.id])
            println("Sec: " + sec);
            def role = sec.first()
            println("FIRST:" + role)
            if (role == "ROLE_ADMIN") {
                // Usuário possui a role ROLE_ADMIN
                redirect(controller: "menu", action: "home") // Redirecionar para a página do admin
            } else if (role == "ROLE_FUNCIONARIO") {
                // Usuário possui a role ROLE_FUNCIONARIO
                redirect(controller: "menu", action: "home") // Redirecionar para a página do usuário funcionario
            } else {
                // Usuário não possui uma role válida
                // Lógica de tratamento de erro ou redirecionamento para uma página de acesso não autorizado
            }
        } else {
            // Usuário não possui uma role válida
            // Lógica de tratamento de erro ou redirecionamento para uma página de acesso não autorizado
        }

        def resultadoPesquisa = Quarto.executeQuery(
                "select new map(q.id as id, qt.id as idTipo, q.estado as estado,q.numeroQuarto as numeroQuarto, qt.preco as preco,qt.imageData as imagemData, qt.tipoQuarto as tipoQuarto) " +
                        "from Quarto q " +
                        "inner join q.quartoTipo qt")


        def loggedIn = SpringSecurityUtils.ifAllGranted('ROLE_USER')

        render(view: 'home', model: [resultadoPesquisa: resultadoPesquisa,loggedIn:loggedIn])

        println("Dados Resultado Pesquisa:" + resultadoPesquisa)

    }


    def redirectToMyView() {
        redirect(view: 'home')

    }

    def registarHospedeOnline() {
        respond new Hospede(params)
        render(view: 'profile')
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
            println('authority: ' + authority)
            secUser.save(flush: true)
            SecUserSecRole.create(secUser, secRole)
            hospedeService.save(hospede)



        } catch (ValidationException e) {
            println(e.message)
            return
        }
        render(view: 'mensagemConfirmacao')


    }

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

    def createReserva() {
        def numeroQuarto = params.numeroQuarto
        def tipoQuarto = params.tipoQuarto

        println("Numero de quarto:"+numeroQuarto)
        println("Tipo de Quarto:"+tipoQuarto)
        respond new Reserva(params)
        render(view: 'reserva',model: [numeroQuarto:numeroQuarto,tipoQuarto:tipoQuarto])
    }

    def saveReserva(Reserva reserva) {
        println params
        def dte = params?.dataE
        def dts = params?.dataS
        def numeroQuarto = params.numeroQuarto
        def dataEntrada = new Date()?.parse("yyyy-MM-dd", dte)
        def dataSaida = new Date()?.parse("yyyy-MM-dd", dts)
        def userLogado = springSecurityService.currentUser
        // Faça algo com o usuário logado...

        // Converta o ID do Hospede em um objeto Hospede
        if (params.hospede?.id) {
            reserva.hospede = Hospede.get(params.hospede.id.toLong())
        }

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
                println(e.message)
                return
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
            // Converte a diferença para dias
            long diferencaDias = TimeUnit.MILLISECONDS.toDays(diferencaMillis)
            println("dia:"+diferencaDias)


            if (quartoInfo) {
                def precoquarto = quartoInfo.preco  // Obtém o preço do quarto

                def valorAPagar = [(precoquarto * diferencaDias) + (precoquarto/2 * (reserva.numeroCrianca + reserva.numeroAdultos))].first()

                Locale locale = new Locale("pt", "MT")
                NumberFormat currencyFormat = NumberFormat.getCurrencyInstance(locale)
                String formattedValue = currencyFormat.format(valorAPagar)

                println("Dados do Valor Apagar:" +formattedValue)
                render( view: 'pagamento' , model:[valorAPagar:valorAPagar,checkIN:checkIN,checkOUT:checkOUT,
                                                      hospede:hospede,criancas:criancas,adultos:adultos] )



                return valorAPagar
            }
        }

        return null  // Ou retorne um valor padrão se o número do quarto não for encontrado
    }
    def pagamentoReserva() {

        def cartaoPagamento = Double.parseDouble(params.cartaoPagamento)
        def numeroSerie =Double.parseDouble(params.numeroSerie)
        def valorPagarTotal =Double.parseDouble(params.valorPagar)
        def dataEntrada = params.dataE
        def dataSaida = params.dataS
        def nomeHospede = params.hospede
        def numeroAcompanhantes = params.acompanhante
        def numeroCriancas = params.numeroCriancas
        def numeroAdultos =params.numeroAdultos


        println("Dados do Cartao:"+cartaoPagamento)

        Pagamento pagamento = new Pagamento()
        pagamento.setCartaoPagamento(cartaoPagamento)
        pagamento.setNumeroSerie(numeroSerie)
        pagamento.setValorPagarTotal(valorPagarTotal)
        if(!pagamento.hasErrors()){
            pagamento.save(flash:true,failOnError:true)
            render(view: 'recibo', model: [ nomeHospede: nomeHospede,dataEntrada:dataEntrada,dataEntrada:dataEntrada,
                                            dataSaida:dataSaida,numeroAcompanhantes:numeroAcompanhantes,numeroCriancas:numeroCriancas,
                                            numeroAdultos:numeroAdultos,valorPagarTotal:valorPagarTotal])
        }

    }
    def createAssunto() {
        respond new Contacto(params)
        render(view: 'home')
    }

    def saveAssunto(Contacto contacto) {
        if (contacto == null) {
            notFound()
            return
        }

        try {
            contactoService.save(contacto)
        } catch (ValidationException e) {
            return
        }


    }

    def exibirImagem(){

        println("IMAGEM "+params)
        def imagem = QuartoTipo.get(params.id)
             byte[] image = imagem.imageData
             response.outputStream << image
//        println("IMAGE: "+image)
    }

}


