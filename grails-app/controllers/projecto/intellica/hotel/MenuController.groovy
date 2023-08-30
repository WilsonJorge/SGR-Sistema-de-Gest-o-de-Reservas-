package projecto.intellica.hotel
import grails.plugin.springsecurity.SpringSecurityService
import org.springframework.security.access.annotation.Secured
import seguranca.SecRole
import seguranca.SecUserSecRole

class MenuController {
    SpringSecurityService springSecurityService

    def index() {

        redirect(url: '/menu/home')

    }
    def home() {
        Hospede hospede =new Hospede()
        def totalHospedes = Hospede.executeQuery("SELECT COUNT(*) FROM Hospede").first()
        def totalreservas = Reserva.executeQuery("SELECT COUNT(*) FROM Reserva").first()
        def totalfuncionarios = Funcionario.executeQuery("SELECT COUNT(*) FROM Funcionario").first()
        def totalquartos= Quarto.executeQuery("SELECT COUNT(*) FROM Quarto").first()
        def totalValor =Pagamento.executeQuery("SELECT SUM(valorPagarTotal) FROM Pagamento").first()
        def quartosDisponiveis = Quarto.executeQuery("SELECT COUNT(q) FROM Quarto q WHERE q.estado = :estado", [estado: Quarto.ESTADO_DISPONIVEL]).first()
        def reservasActivas = Reserva.executeQuery("SELECT COUNT(r) FROM Reserva r WHERE r.estado = :estado", [estado: Reserva.ESTADO_ACTIVO]).first()
        def reservasInactivo = Reserva.executeQuery("SELECT COUNT(r) FROM Reserva r WHERE r.estado = :estado", [estado: Reserva.ESTADO_INACTIVO]).first()
        def quartosIndisponiveis = Quarto.executeQuery("SELECT COUNT(q) FROM Quarto q WHERE q.estado = :estado", [estado: Quarto.ESTADO_INDISPONIVEL]).first()
        def totalTWIN = QuartoTipo.executeQuery("SELECT COUNT(q) FROM QuartoTipo q WHERE q.tipoQuarto = :tipo", [tipo: "QUARTO TWIN"]).first()
        def totalDOUBLE = QuartoTipo.executeQuery("SELECT COUNT(q) FROM QuartoTipo q WHERE q.tipoQuarto = :tipo", [tipo: "QUARTO DOUBLE"]).first()
        def totalSINGLE = QuartoTipo.executeQuery("SELECT COUNT(q) FROM QuartoTipo q WHERE q.tipoQuarto = :tipo", [tipo: "QUARTO SINGLE"]).first()
//        def totalUserAdmin = SecRole.executeQuery("SELECT COUNT(s) FROM SecRole s WHERE  s.authority = :tipoUser",[tipoUser:"ROLE_ADMIN"]).first()
        def totalUserAdmin = SecUserSecRole.executeQuery("SELECT COUNT(*) FROM SecUserSecRole WHERE secRole.id = 1").first()
        def totalUserNormal = SecUserSecRole.executeQuery("SELECT COUNT(*) FROM SecUserSecRole WHERE secRole.id = 2").first()
//        String username = springSecurityService.principal.username
//        String email = springSecurityService.principal.email

         //Metodo para contar os quartos para cada tipode quarto
            def hql = """
                            SELECT qt.tipoQuarto, COUNT(q)
                            FROM Quarto q
                            JOIN q.quartoTipo qt
                            GROUP BY qt.tipoQuarto
                        """
           def results = Quarto.executeQuery(hql)

          //Metdo para constar os quartos mais requisitados

        def requisitados = """
                            SELECT qt.tipoQuarto, COUNT(q)
                            FROM Reserva r
                            JOIN r.quartos q
                            JOIN q.quartoTipo qt
                            GROUP BY qt.tipoQuarto
                            ORDER BY COUNT(q) DESC
                        """
        def resultadoRequisicao = Reserva.executeQuery(requisitados)
        resultadoRequisicao.each { row ->
            def tipoQuarto = row[0]
            def quantidade = row[1]
            println("Tipo de Quarto: $tipoQuarto, Quantidade: $quantidade")
        }

        //Metodo para tranformar a data da reserva por ano e depois contar as reservas feitas por cada ano
        def comparacaoReservasPorMes = """
                                            SELECT YEAR(r.dataEntrada), MONTH(r.dataEntrada), COUNT(r)
                                            FROM Reserva r
                                            GROUP BY YEAR(r.dataEntrada), MONTH(r.dataEntrada)
                                            HAVING YEAR(r.dataEntrada) IN (2021, 2022, 2023)
                                            ORDER BY YEAR(r.dataEntrada), MONTH(r.dataEntrada)
                                        """

        def resultadoComparacaoReservas = Reserva.executeQuery(comparacaoReservasPorMes)
        resultadoComparacaoReservas.each { row ->
            def ano = row[0]
            def quantidade = row[1]
            println("Ano: $ano, Quantidade: $quantidade")
        }



        def totalUsers = [(totalfuncionarios+totalHospedes)+1].first()
        println("TOTAL ADMIN:"+totalUserAdmin)
        println("TOTAL USER:"+totalUserNormal)
        def user = springSecurityService.currentUser
        def funcionario = Funcionario.findBySecUser(user)
        if (funcionario)
        {
            String username = user.username
        }
        render (view: 'dashboard', model: [ totalHospedes: totalHospedes, totalfuncionarios: totalfuncionarios,totalreservas: totalreservas,totalquartos: totalquartos,totalValor:totalValor,
                                           quartosDisponiveis:quartosDisponiveis,quartosIndisponiveis:quartosIndisponiveis,totalTWIN:totalTWIN,totalDOUBLE:totalDOUBLE,totalSINGLE:totalSINGLE,
                                            totalUserAdmin:totalUserAdmin,totalUserNormal:totalUserNormal,totalUsers:totalUsers,reservasActivas:reservasActivas,reservasInactivo:reservasInactivo,
                                            quantidadePorTipo: results,resultadoRequisicao:resultadoRequisicao,resultadoComparacaoReservas:resultadoComparacaoReservas])


    }

            def pesquisar() {
                def referenciaInput = params.referenciaInput

                // Extrair o valor inicial da referência
                def partesReferencia = referenciaInput.split("/")
                def tipoReferencia = partesReferencia[1]
                def valorInicial = partesReferencia[0]

                def dados = []


                    if (tipoReferencia == "HOSP") {
    //                    Lógica de pesquisa para referência HOSP
                        dados = buscarDadosHospede(valorInicial)
                       render(view: "hospedePesquisa", model: [dados: dados])
                    } else if (tipoReferencia == "FUNC") {
        //                // Lógica de pesquisa para referência FUNC
                       dados = buscarDadosFuncionario(valorInicial)
                        render (view: "funcionarioPesquisa", model: [dados:dados])
                    } else if (tipoReferencia == "RES") {
                        // Lógica de pesquisa para referência RES
                       dados = buscarDadosReserva(valorInicial)
                       render (view: "reservaPesquisa",model: [dados: dados])
                 }

            }

                private def buscarDadosHospede(valorInicial) {
                    // Implemente a lógica para buscar dados de Hospede com base no valor inicial da referência
                    // Retorne os dados como uma lista
                    def hql = """
                    SELECT h
                    FROM Hospede h
                    WHERE h.referencia LIKE :referenciaPattern
                """
                    def referenciaPattern = "${valorInicial}/HOSP/2023%" // Substitua "2023" pelo ano correto
                    def dados = Hospede.executeQuery(hql, [referenciaPattern: referenciaPattern])
                    return dados
                }

        private def buscarDadosFuncionario(valorInicial) {
            // Implemente a lógica para buscar dados de Funcionario com base no ano
            // Retorne os dados como uma lista
            def hql = """
                    SELECT f
                    FROM Funcionario f
                    WHERE f.referencia LIKE :referenciaPattern
                """
            def referenciaPattern = "${valorInicial}/FUNC/2023%" // Substitua "2023" pelo ano correto
            def dados = Funcionario.executeQuery(hql, [referenciaPattern: referenciaPattern])
            return dados
        }

        private def buscarDadosReserva(valorInicial) {
            // Implemente a lógica para buscar dados de Reserva com base no ano
            // Retorne os dados como uma lista

            def hql = """
                    SELECT r
                    FROM Reserva r
                    WHERE r.referencia LIKE :referenciaPattern
                """
            def referenciaPattern = "${valorInicial}/RES/2023%" // Substitua "2023" pelo ano correto
            def dados = Reserva.executeQuery(hql, [referenciaPattern: referenciaPattern])
            return dados
        }
    }
