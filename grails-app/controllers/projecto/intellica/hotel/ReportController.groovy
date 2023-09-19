package projecto.intellica.hotel

import grails.validation.ValidationException

import java.text.SimpleDateFormat
import java.time.LocalDate
import java.time.format.DateTimeFormatter

import static org.springframework.http.HttpStatus.*

class ReportController {

    ReportService reportService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index() {
          render(view: 'report')

    }
    def receita(){
        render(view: 'reportReceitas')
    }

    def hospede(){
        render(view: 'reportHospedes')
    }

    def show(Long id) {
        respond reportService.get(id)
    }

    def create() {
        respond new Report(params)
    }

    def save(Report report) {
        if (report == null) {
            notFound()
            return
        }

        try {
            reportService.save(report)
        } catch (ValidationException e) {
            respond report.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'report.label', default: 'Report'), report.id])
                redirect report
            }
            '*' { respond report, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond reportService.get(id)
    }

    def update(Report report) {
        if (report == null) {
            notFound()
            return
        }

        try {
            reportService.save(report)
        } catch (ValidationException e) {
            respond report.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'report.label', default: 'Report'), report.id])
                redirect report
            }
            '*'{ respond report, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        reportService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'report.label', default: 'Report'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'report.label', default: 'Report'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }


    def generate() {
        // Recupere os parâmetros dos filtros de pesquisa
        def startDate = params.startDate
        def endDate = params.endDate
        def roomTypeId = params.roomNumber
        def clientName = params.clientName

        // Ajuste as datas de entrada e saída para o formato Date
        def dataEntrada = startDate ? Date.parse("yyyy-MM-dd", startDate) : new Date(0)
        def dataSaida = endDate ? Date.parse("yyyy-MM-dd", endDate) : new Date()

//        roomNumber = params.toString

        // Verifique se a opção "Todos" foi selecionada nos campos de seleção

        if (roomTypeId == 'Todos') {
            roomTypeId = null
        }
        // Construa a consulta HQL com base nos filtros
        def hql = """
                    FROM Reserva r
                    WHERE (:dataEntrada IS NULL OR r.dataEntrada >= :dataEntrada)
                    AND (:dataSaida IS NULL OR r.dataSaida <= :dataSaida)
                    AND (:roomTypeId IS NULL OR (:roomTypeId = '' AND r.quartos IS NOT EMPTY) OR EXISTS (
                        SELECT 1 FROM Quarto q 
                        JOIN q.quartoTipo qt
                        WHERE qt.id = :roomTypeId AND q IN elements(r.quartos)
                    ))
                """

        // Execute a consulta HQL
        def reservations = Reserva.executeQuery(hql, [dataEntrada: dataEntrada, dataSaida: dataSaida, roomTypeId: roomTypeId?.toLong()])

        render(view: 'report', model: [reservations: reservations])

    }

    def generateReceita() {
        // Recupere os parâmetros dos filtros de pesquisa
        def startDate = params.startDate
        def endDate = params.endDate

        // Ajuste as datas de entrada e saída para o formato Date
        def dataEntrada = startDate ? Date.parse("yyyy-MM-dd", startDate) : new Date(0)
        def dataSaida = endDate ? Date.parse("yyyy-MM-dd", endDate) : new Date()

        def hql = """
                    SELECT p
                    FROM Pagamento p
                    JOIN p.reserva r
                    WHERE (:dataEntrada IS NULL OR r.dataEntrada >= :dataEntrada)
                    AND (:dataSaida IS NULL OR r.dataSaida <= :dataSaida)
                """

        // Execute a consulta HQL
                def payments = Pagamento.executeQuery(hql, [dataEntrada: dataEntrada, dataSaida: dataSaida])

        render(view: 'reportReceitas', model: [payments: payments])



    }

    def generateHospede() {
        // Recupere os parâmetros dos filtros de pesquisa
        def startDate = params.startDate
        def endDate = params.endDate

        // Ajuste as datas de entrada e saída para o formato Date
        def dataEntrada = startDate ? Date.parse("yyyy-MM-dd", startDate) : new Date(0)
        def dataSaida = endDate ? Date.parse("yyyy-MM-dd", endDate) : new Date()

        def hql = """
                    SELECT r
                    FROM Reserva r
                    JOIN r.hospede h
                    WHERE (:dataEntrada IS NULL OR r.dataEntrada >= :dataEntrada)
                    AND (:dataSaida IS NULL OR r.dataSaida <= :dataSaida)
                """

        // Execute a consulta HQL
        def reservas = Reserva.executeQuery(hql, [dataEntrada: dataEntrada, dataSaida: dataSaida])

        render(view: 'reportHospedes', model: [reservas: reservas])



    }

}

