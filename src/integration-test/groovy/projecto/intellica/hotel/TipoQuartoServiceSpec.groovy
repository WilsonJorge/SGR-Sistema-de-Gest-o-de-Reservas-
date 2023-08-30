package projecto.intellica.hotel

import grails.testing.mixin.integration.Integration
import grails.gorm.transactions.Rollback
import spock.lang.Specification
import org.hibernate.SessionFactory

@Integration
@Rollback
class TipoQuartoServiceSpec extends Specification {

    TipoQuartoService tipoQuartoService
    SessionFactory sessionFactory

    private Long setupData() {
        // TODO: Populate valid domain instances and return a valid ID
        //new TipoQuarto(...).save(flush: true, failOnError: true)
        //new TipoQuarto(...).save(flush: true, failOnError: true)
        //TipoQuarto tipoQuarto = new TipoQuarto(...).save(flush: true, failOnError: true)
        //new TipoQuarto(...).save(flush: true, failOnError: true)
        //new TipoQuarto(...).save(flush: true, failOnError: true)
        assert false, "TODO: Provide a setupData() implementation for this generated test suite"
        //tipoQuarto.id
    }

    void "test get"() {
        setupData()

        expect:
        tipoQuartoService.get(1) != null
    }

    void "test list"() {
        setupData()

        when:
        List<TipoQuarto> tipoQuartoList = tipoQuartoService.list(max: 2, offset: 2)

        then:
        tipoQuartoList.size() == 2
        assert false, "TODO: Verify the correct instances are returned"
    }

    void "test count"() {
        setupData()

        expect:
        tipoQuartoService.count() == 5
    }

    void "test delete"() {
        Long tipoQuartoId = setupData()

        expect:
        tipoQuartoService.count() == 5

        when:
        tipoQuartoService.delete(tipoQuartoId)
        sessionFactory.currentSession.flush()

        then:
        tipoQuartoService.count() == 4
    }

    void "test save"() {
        when:
        assert false, "TODO: Provide a valid instance to save"
        TipoQuarto tipoQuarto = new TipoQuarto()
        tipoQuartoService.save(tipoQuarto)

        then:
        tipoQuarto.id != null
    }
}
