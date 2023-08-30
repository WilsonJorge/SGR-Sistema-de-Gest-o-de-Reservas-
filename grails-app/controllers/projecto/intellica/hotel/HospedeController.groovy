package projecto.intellica.hotel

import grails.validation.ValidationException
import org.springframework.security.access.annotation.Secured

import static org.springframework.http.HttpStatus.*

class HospedeController {

    HospedeService hospedeService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

//    @Secured(['ROLE_ADMIN'])
    def index(Integer max) {

        params.max = Math.min(max ?: 10, 100)
        respond hospedeService.list(params), model:[hospedeCount: hospedeService.count()]
    }
//    @Secured(['ROLE_ADMIN'])
    def show(Long id) {
        respond(hospedeService.get(id))

    }
//    @Secured(['ROLE_ADMIN'])
    def create() {
        respond new Hospede(params)


    }
//    @Secured(['ROLE_ADMIN'])
    def save(Hospede hospede) {
        if (hospede == null) {
            notFound()
            return
        }

        try {
            hospedeService.save(hospede)

        } catch (ValidationException e) {
            respond hospede.errors, view:'create'
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
//    @Secured(['ROLE_ADMIN'])
    def edit(Long id) {
         respond hospedeService.get(id)
    }
//    @Secured(['ROLE_ADMIN'])
    def update(Hospede hospede) {
        if (hospede == null) {
            notFound()
            return
        }

        try {
            hospedeService.save(hospede)
        } catch (ValidationException e) {
            respond hospede.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'hospede.label', default: 'Hospede'), hospede.id])
                redirect hospede
            }
            '*'{ respond hospede, [status: OK] }
        }
    }

//    @Secured(['ROLE_ADMIN'])
    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        hospedeService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'hospede.label', default: 'Hospede'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'hospede.label', default: 'Hospede'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }

    def listOfAllHospede = Hospede.executeQuery("from Hospede")
}
