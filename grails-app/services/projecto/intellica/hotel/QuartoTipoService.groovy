package projecto.intellica.hotel

import grails.gorm.services.Service

@Service(QuartoTipo)
interface QuartoTipoService {

    QuartoTipo get(Serializable id)

    List<QuartoTipo> list(Map args)

    Long count()

    void delete(Serializable id)

    QuartoTipo save(QuartoTipo quartoTipo)

}