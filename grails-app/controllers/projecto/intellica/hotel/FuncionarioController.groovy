package projecto.intellica.hotel

import grails.validation.ValidationException
import org.springframework.security.access.annotation.Secured
import seguranca.SecRole
import seguranca.SecUser
import seguranca.SecUserSecRole
import seguranca.SecUserService
import static org.springframework.http.HttpStatus.*
class FuncionarioController {

    FuncionarioService funcionarioService
    SecUserService secUserService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 1000, 1000)
        respond funcionarioService.list(params), model: [funcionarioCount: funcionarioService.count()]
    }

    def show(Long id) {
        respond(funcionarioService.get(id))
    }

    def create() {
        respond new Funcionario(params)
    }

    def save(Funcionario funcionario) {
        println('Params: '+params)
        if (funcionario == null) {
            notFound()
            return
        }

        try {
            // Criacao de um novo SecUser para um Funcionario
                    def secUser = new SecUser(
                            username: params.secUser.username,
                            password: params.secUser.password,
            )
            // Associar o SecUser ao Funcionario
            funcionario.secUser = secUser
            def sRole = SecRole.get(Integer.parseInt(params.secrole))
            secUser.save(flush: true)
            SecUserSecRole.create(secUser,sRole)

            funcionarioService.save(funcionario)
        } catch (ValidationException e) {
            respond funcionario.errors, view: 'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'funcionario.label', default: 'Funcionario'), funcionario.id])
                redirect funcionario
            }
            '*' { respond funcionario, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond funcionarioService.get(id)
    }

    @Secured(['ROLE_ADMIN'])
    def update(Funcionario funcionario) {
        if (funcionario == null) {
            notFound()
            return
        }

        try {
            funcionarioService.save(funcionario)
        } catch (ValidationException e) {
            respond funcionario.errors, view: 'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'funcionario.label', default: 'Funcionario'), funcionario.id])
                redirect funcionario
            }
            '*'{ respond funcionario, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        funcionarioService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'funcionario.label', default: 'Funcionario'), id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'funcionario.label', default: 'Funcionario'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
