package dominiosconstraint

import grails.transaction.Transactional

@Transactional
class BuscarService {

    def buscarUsuarios(def params) {
        def user = User.findByUsername(params.username)
        Forum.findAllByn
        if( user == null ){
            return null

        }
        else{
            return user
        }
    }

    def buscarForos(def params) {
        def forum = forum.findByName(params.name)
        Forum.findAllByn
        if( forum == null ){
            return null

        }
        else{
            return forum
        }
    }


}
