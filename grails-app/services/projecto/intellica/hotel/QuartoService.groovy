package projecto.intellica.hotel

import grails.gorm.services.Service

@Service(Quarto)
interface QuartoService {

    Quarto get(Serializable id)

    List<Quarto> list(Map args)

    Long count()

    void delete(Serializable id)

    Quarto save(Quarto quarto)

}