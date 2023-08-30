package projecto.intellica.hotel

import grails.gorm.services.Service

@Service(Hospede)
interface HospedeService {

    Hospede get(Serializable id)

    List<Hospede> list(Map args)

    Long count()

    void delete(Serializable id)

    Hospede save(Hospede hospede)

}