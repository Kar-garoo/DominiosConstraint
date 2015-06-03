package dominiosconstraint

import grails.transaction.Transactional

@Transactional
class LoginService {

    def login(def session, def params){

        def user = User.findByUsername(params.username)

        if(user){
            def regular = Regular.findByUsername(params.username)
            def admin = Admin.findByUsername(params.username)
            if(regular){
                if(user.password == params.password.encodeAsMD5()){
                    session["username"] = params.username
                    return regular
                }
            }
            if(admin){
                if(user.password == params.password){
                    session["username"] = params.username
                    return admin
                }
            }
        }else{
            return null
        }
    }
    def logout(def session){
        if(session.authStatus != true){
            return null
        }
    }
}
