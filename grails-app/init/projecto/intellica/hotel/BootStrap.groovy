package projecto.intellica.hotel

import seguranca.SecRole
import seguranca.SecUser
import seguranca.SecUserSecRole

class BootStrap {

    def init = { servletContext ->

        def admin = SecUser.findByUsername('ADMIN')
        if (!admin) {
            admin = new SecUser(username: 'ADMIN', password: '123456').save(flush: true, failOnError: true)
        }
        def adminRole = SecRole.findByAuthority('ROLE_ADMIN')
         println("ROLE:"+adminRole)
        if (!adminRole) {
            adminRole = new SecRole(authority: 'ROLE_ADMIN').save(flush: true, failOnError: true)
        }

        if (!admin.authorities.contains(adminRole)) {
            admin.authorities.add(adminRole)
            admin.save(flush: true)

        }

        if (!admin.authorities.contains(adminRole)) {
            SecUserSecRole.create(admin,adminRole)

        }

//        def funcionario = SecUser.findByUsername('FUNCIONARIO')
//        println("FUNCIONARIO:"+funcionario)
//        if(!funcionario){
//            funcionario = new SecUser(username: 'FUNCIONARIO', password: '123456').save(flush: true, failOnError: true)
//        }
//
//        def guestRole = SecRole.findByAuthority('ROLE_FUNCIONARIO')
//        println("ROLE:"+guestRole)
//        if(!guestRole){
//            guestRole = new SecRole(authority:'ROLE_GUEST').save(flush:true,failOnError:true)
//        }
//        if (!funcionario.authorities.contains(funcionarioRole)){
//            funcionario.authorities.add(funcionarioRole)
//            funcionario.save(flush:true,failOnError:true)
//        }
//
//        if(!funcionario.authorities.contains(funcionarioRole)){
//            SecUserSecRole.create(funcionario,funcionarioRole)
//        }

//        def guestRole = SecRole.findByAuthority('ROLE_GUEST')
//        println("ROLE:"+guestRole)
//        if (!guestRole) {
//            guestRole = new SecRole(authority: 'ROLE_ADMIN').save(flush: true, failOnError: true)
//        }


        def funcionario = SecUser.findByUsername('FUNCIONARIO')
        println("FUNCIONARIO:"+funcionario)
        if(!funcionario){
            funcionario = new SecUser(username: 'FUNCIONARIO', password: '123456').save(flush: true, failOnError: true)
        }

        def funcionarioRole = SecRole.findByAuthority('ROLE_FUNCIONARIO')
        println("ROLE:"+funcionarioRole)
        if(!funcionarioRole){
            funcionarioRole = new SecRole(authority:'ROLE_FUNCIONARIO').save(flush:true,failOnError:true)
        }
        if (!funcionario.authorities.contains(funcionarioRole)){
            funcionario.authorities.add(funcionarioRole)
            funcionario.save(flush:true,failOnError:true)
        }

        if(!funcionario.authorities.contains(funcionarioRole)){
            SecUserSecRole.create(funcionario,funcionarioRole)
        }

        def guestRole = SecRole.findByAuthority('ROLE_GUEST')
        println("ROLE:"+guestRole)
        if (!guestRole) {
            guestRole = new SecRole(authority: 'ROLE_GUEST').save(flush: true, failOnError: true)
        }



    }

    def destroy = {
    }
}