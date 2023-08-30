package projecto.intellica.hotel

import grails.testing.mixin.integration.Integration
import grails.gorm.transactions.Rollback
import spock.lang.Specification
import org.hibernate.SessionFactory

@Integration
@Rollback
class QuartoServiceSpec extends Specification {

    QuartoService quartoService
    SessionFactory sessionFactory

    private Long setupData() {
        // TODO: Populate valid domain instances and return a valid ID
        //new Quarto(...).save(flush: true, failOnError: true)
        //new Quarto(...).save(flush: true, failOnError: true)
        //Quarto quarto = new Quarto(...).save(flush: true, failOnError: true)
        //new Quarto(...).save(flush: true, failOnError: true)
        //new Quarto(...).save(flush: true, failOnError: true)
        assert false, "TODO: Provide a setupData() implementation for this generated test suite"
        //quarto.id
    }

    void "test get"() {
        setupData()

        expect:
        quartoService.get(1) != null
    }

    void "test list"() {
        setupData()

        when:
        List<Quarto> quartoList = quartoService.list(max: 2, offset: 2)

        then:
        quartoList.size() == 2
        assert false, "TODO: Verify the correct instances are returned"
    }

    void "test count"() {
        setupData()

        expect:
        quartoService.count() == 5
    }

    void "test delete"() {
        Long quartoId = setupData()

        expect:
        quartoService.count() == 5

        when:
        quartoService.delete(quartoId)
        sessionFactory.currentSession.flush()

        then:
        quartoService.count() == 4
    }

    void "test save"() {
        when:
        assert false, "TODO: Provide a valid instance to save"
        Quarto quarto = new Quarto()
        quartoService.save(quarto)

        then:
        quarto.id != null
    }
}
