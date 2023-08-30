package projecto.intellica.hotel

import grails.validation.ValidationException
import org.springframework.security.access.annotation.Secured

import static org.springframework.http.HttpStatus.*

class QuartoController {

    QuartoService quartoService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]
    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond quartoService.list(params), model:[quartoCount: quartoService.count()]
    }

    def show(Long id) {
        respond(quartoService.get(id))

    }

    def create() {
        respond new Quarto(params)
    }

    def save(Quarto quarto) {
        if (quarto == null) {
            notFound()
            return
        }

        try {
            quartoService.save(quarto)
        } catch (ValidationException e) {
            respond quarto.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'quarto.label', default: 'Quarto'), quarto.id])
                redirect quarto
            }
            '*' { respond quarto, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond quartoService.get(id)
    }

    def update(Quarto quarto) {
        if (quarto == null) {
            notFound()
            return
        }

        try {
            quartoService.save(quarto)
        } catch (ValidationException e) {
            respond quarto.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'quarto.label', default: 'Quarto'), quarto.id])
                redirect quarto
            }
            '*'{ respond quarto, [status: OK] }
        }
    }
    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        quartoService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'quarto.label', default: 'Quarto'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'quarto.label', default: 'Quarto'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
