package projecto.intellica.hotel

import grails.testing.mixin.integration.Integration
import grails.gorm.transactions.Rollback
import spock.lang.Specification
import org.hibernate.SessionFactory

@Integration
@Rollback
class AcompanhanteServiceSpec extends Specification {

    AcompanhanteService acompanhanteService
    SessionFactory sessionFactory

    private Long setupData() {
        // TODO: Populate valid domain instances and return a valid ID
        //new Acompanhante(...).save(flush: true, failOnError: true)
        //new Acompanhante(...).save(flush: true, failOnError: true)
        //Acompanhante acompanhante = new Acompanhante(...).save(flush: true, failOnError: true)
        //new Acompanhante(...).save(flush: true, failOnError: true)
        //new Acompanhante(...).save(flush: true, failOnError: true)
        assert false, "TODO: Provide a setupData() implementation for this generated test suite"
        //acompanhante.id
    }

    void "test get"() {
        setupData()

        expect:
        acompanhanteService.get(1) != null
    }

    void "test list"() {
        setupData()

        when:
        List<Acompanhante> acompanhanteList = acompanhanteService.list(max: 2, offset: 2)

        then:
        acompanhanteList.size() == 2
        assert false, "TODO: Verify the correct instances are returned"
    }

    void "test count"() {
        setupData()

        expect:
        acompanhanteService.count() == 5
    }

    void "test delete"() {
        Long acompanhanteId = setupData()

        expect:
        acompanhanteService.count() == 5

        when:
        acompanhanteService.delete(acompanhanteId)
        sessionFactory.currentSession.flush()

        then:
        acompanhanteService.count() == 4
    }

    void "test save"() {
        when:
        assert false, "TODO: Provide a valid instance to save"
        Acompanhante acompanhante = new Acompanhante()
        acompanhanteService.save(acompanhante)

        then:
        acompanhante.id != null
    }
}
