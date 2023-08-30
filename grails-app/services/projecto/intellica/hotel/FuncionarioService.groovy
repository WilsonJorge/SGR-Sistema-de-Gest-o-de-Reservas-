package projecto.intellica.hotel

import grails.gorm.services.Service

@Service(Funcionario)
interface FuncionarioService {

    Funcionario get(Serializable id)

    List<Funcionario> list(Map args)

    Long count()

    void delete(Serializable id)

    Funcionario save(Funcionario funcionario)

}