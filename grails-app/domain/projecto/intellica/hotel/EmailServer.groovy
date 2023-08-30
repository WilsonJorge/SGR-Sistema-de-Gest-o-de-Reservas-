package projecto.intellica.hotel

import jdk.nashorn.internal.codegen.CodeGenerator

import javax.mail.*
import javax.mail.internet.*
import javax.websocket.Session

class EmailServer {
    def grailsApplication
    static constraints = {
    }

    def getEmailsFromServer() {
        Properties props = new Properties()
        props.setProperty("mail.store.protocol", grailsApplication.config.emailServer.protocol)
        props.setProperty("mail.pop3.host", grailsApplication.config.emailServer.host)
        props.setProperty("mail.pop3.port", grailsApplication.config.emailServer.port.toString())
        props.setProperty("mail.pop3.ssl.enable", "true")

        Session session = Session.getDefaultInstance(props)
        CodeGenerator.Store store = session.getStore(grailsApplication.config.emailServer.protocol)
        store.connect(grailsApplication.config.emailServer.host,
                grailsApplication.config.emailServer.username,
                grailsApplication.config.emailServer.password)

        Folder folder = store.getFolder("INBOX")
        folder.open(Folder.READ_ONLY)

        Message[] messages = folder.getMessages()

        for (int i = 0; i < messages.length; i++) {
            Message message = messages[i]
            println "De: ${message.from[0]}"
            println "Assunto: ${message.subject}"
            println "Conteúdo: ${message.content}"
        }

        folder.close(false)
        store.close()
    }
}
