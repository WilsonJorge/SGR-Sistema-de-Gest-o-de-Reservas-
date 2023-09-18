package projecto.intellica.hotel

import grails.validation.ValidationException
import org.springframework.security.access.annotation.Secured
import org.springframework.web.multipart.MultipartFile

import static org.springframework.http.HttpStatus.*

class QuartoTipoController {

    QuartoTipoService quartoTipoService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond quartoTipoService.list(params), model:[quartoTipoCount: quartoTipoService.count()]
    }

    def show(Long id) {
        respond(quartoTipoService.get(id))

    }
    def create() {
        respond new QuartoTipo(params)
        println("Chegouu")
    }

    def save(QuartoTipo quartoTipo) {
        if (quartoTipo == null) {
            notFound()
            return
        }

        try {
            quartoTipoService.save(quartoTipo)
        } catch (ValidationException e) {
            respond quartoTipo.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'quartoTipo.label', default: 'QuartoTipo'), quartoTipo.id])
                redirect quartoTipo
            }
            '*' { respond quartoTipo, [status: CREATED] }
        }
    }



    def edit(Long id) {
        respond quartoTipoService.get(id)
    }

    def update(QuartoTipo quartoTipo) {
        if (quartoTipo == null) {
            notFound()
            return
        }

        try {
            quartoTipoService.save(quartoTipo)
        } catch (ValidationException e) {
            respond quartoTipo.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'quartoTipo.label', default: 'QuartoTipo'), quartoTipo.id])
                redirect quartoTipo
            }
            '*'{ respond quartoTipo, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        quartoTipoService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'quartoTipo.label', default: 'QuartoTipo'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'quartoTipo.label', default: 'QuartoTipo'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }

    def exibirImagem(){
        def imagem = QuartoTipo.get(params.id)
        byte[] image = imagem.imageData
        response.outputStream << image
    }

    def verLogotipo = {
        def imagem = QuartoTipo.get(params.id)
        byte[] image = imagem.imageData
        response.outputStream << image
        response.outputStream.flush()
    }
}
