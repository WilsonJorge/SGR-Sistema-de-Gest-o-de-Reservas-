package projecto.intellica.hotel

import grails.testing.mixin.integration.Integration
import grails.gorm.transactions.Rollback
import spock.lang.Specification
import org.hibernate.SessionFactory

@Integration
@Rollback
class HospedeServiceSpec extends Specification {

    HospedeService hospedeService
    SessionFactory sessionFactory

    private Long setupData() {
        // TODO: Populate valid domain instances and return a valid ID
        //new Hospede(...).save(flush: true, failOnError: true)
        //new Hospede(...).save(flush: true, failOnError: true)
        //Hospede hospede = new Hospede(...).save(flush: true, failOnError: true)
        //new Hospede(...).save(flush: true, failOnError: true)
        //new Hospede(...).save(flush: true, failOnError: true)
        assert false, "TODO: Provide a setupData() implementation for this generated test suite"
        //hospede.id
    }

    void "test get"() {
        setupData()

        expect:
        hospedeService.get(1) != null
    }

    void "test list"() {
        setupData()

        when:
        List<Hospede> hospedeList = hospedeService.list(max: 2, offset: 2)

        then:
        hospedeList.size() == 2
        assert false, "TODO: Verify the correct instances are returned"
    }

    void "test count"() {
        setupData()

        expect:
        hospedeService.count() == 5
    }

    void "test delete"() {
        Long hospedeId = setupData()

        expect:
        hospedeService.count() == 5

        when:
        hospedeService.delete(hospedeId)
        sessionFactory.currentSession.flush()

        then:
        hospedeService.count() == 4
    }

    void "test save"() {
        when:
        assert false, "TODO: Provide a valid instance to save"
        Hospede hospede = new Hospede()
        hospedeService.save(hospede)

        then:
        hospede.id != null
    }
}
