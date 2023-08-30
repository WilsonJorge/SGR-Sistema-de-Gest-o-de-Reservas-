package projecto.intellica.hotel

import grails.testing.mixin.integration.Integration
import grails.gorm.transactions.Rollback
import spock.lang.Specification
import org.hibernate.SessionFactory

@Integration
@Rollback
class QuartoTipoServiceSpec extends Specification {

    QuartoTipoService quartoTipoService
    SessionFactory sessionFactory

    private Long setupData() {
        // TODO: Populate valid domain instances and return a valid ID
        //new QuartoTipo(...).save(flush: true, failOnError: true)
        //new QuartoTipo(...).save(flush: true, failOnError: true)
        //QuartoTipo quartoTipo = new QuartoTipo(...).save(flush: true, failOnError: true)
        //new QuartoTipo(...).save(flush: true, failOnError: true)
        //new QuartoTipo(...).save(flush: true, failOnError: true)
        assert false, "TODO: Provide a setupData() implementation for this generated test suite"
        //quartoTipo.id
    }

    void "test get"() {
        setupData()

        expect:
        quartoTipoService.get(1) != null
    }

    void "test list"() {
        setupData()

        when:
        List<QuartoTipo> quartoTipoList = quartoTipoService.list(max: 2, offset: 2)

        then:
        quartoTipoList.size() == 2
        assert false, "TODO: Verify the correct instances are returned"
    }

    void "test count"() {
        setupData()

        expect:
        quartoTipoService.count() == 5
    }

    void "test delete"() {
        Long quartoTipoId = setupData()

        expect:
        quartoTipoService.count() == 5

        when:
        quartoTipoService.delete(quartoTipoId)
        sessionFactory.currentSession.flush()

        then:
        quartoTipoService.count() == 4
    }

    void "test save"() {
        when:
        assert false, "TODO: Provide a valid instance to save"
        QuartoTipo quartoTipo = new QuartoTipo()
        quartoTipoService.save(quartoTipo)

        then:
        quartoTipo.id != null
    }
}
