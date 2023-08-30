package projecto.intellica.hotel

class EmailController {
    EmailServer emailServer

    def index() {
        // Chamada para recuperar e-mails da caixa de entrada
        emailServer.getEmailsFromServer()

        render "E-mails recuperados com sucesso!"
    }
}
