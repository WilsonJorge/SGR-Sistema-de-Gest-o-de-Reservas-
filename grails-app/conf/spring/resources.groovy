import projecto.intellica.hotel.EmailServer
import seguranca.SecUserPasswordEncoderListener

// Place your Spring DSL code here
beans = {
    secUserPasswordEncoderListener(SecUserPasswordEncoderListener)
            emailServer(EmailServer) {
                grailsApplication = ref('grailsApplication')
            }
}
