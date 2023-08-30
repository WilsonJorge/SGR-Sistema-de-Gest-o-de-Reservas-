package seguranca

import grails.validation.ValidationException
import org.springframework.security.access.annotation.Secured
import static org.springframework.http.HttpStatus.*
class SecUserController {

    SecUserService secUserService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    @Secured(['ROLE_ADMIN'])
    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond secUserService.list(params), model:[secUserCount: secUserService.count()]
    }

    @Secured(['ROLE_ADMIN'])
    def show(Long id) {
        respond secUserService.get(id)
    }

    @Secured(['ROLE_ADMIN'])
    def create() {
        respond new SecUser(params)
        println("Dados Parametro:"+params)
    }

    @Secured(['ROLE_ADMIN'])
    def save(SecUser secUser) {
        if (secUser == null) {
            notFound()
            return
        }

        try {
        } catch (ValidationException e) {
            respond secUser.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'secUser.label', default: 'SecUser'), secUser.id])
                redirect secUser
            }
            '*' { respond secUser, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond secUserService.get(id)
    }

    def update(SecUser secUser) {
        if (secUser == null) {
            notFound()
            return
        }

        try {
            secUserService.save(secUser)
        } catch (ValidationException e) {
            respond secUser.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'secUser.label', default: 'SecUser'), secUser.id])
                redirect secUser
            }
            '*'{ respond secUser, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        secUserService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'secUser.label', default: 'SecUser'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'secUser.label', default: 'SecUser'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
