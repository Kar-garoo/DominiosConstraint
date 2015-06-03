package dominiosconstraint

class UserController {
    def BuscarService
    def LoginService
    def beforeInterceptor = {println "Se va a ejecutado la acción ${actionName}"}
    def afterInterceptor = {println "Se ha ejecutado la acción ${actionName}"}
    def index(){

    }

    def logIn() {

    }
    def logInLogic(){

        if(session.authStatus){
            redirect(controller: 'regular', action: 'profile')
        }else if(params.username != null && params.password != null){
            if(LoginService.login(session, params)== null) {
                flash.message = "Login error"
                render(view: 'logIn')
            }else{
                session['authStatus'] = true
                redirect(controller: 'regular',action: 'profile')
            }
        }else{
            render(view: 'logIn')
        }



    }
    def logOut(){
        if(LoginService.logout(session) == null){
            redirect(controller: 'user', action: 'logIn')
        }else{
            session['authStatus'] = false
            redirect(controller: 'user', action: 'logIn')
        }

    }

    def buscar( ){

    }

    def buscarLogic( ){
        def user = BuscarService.buscarUsuarios(params)
        render(view: 'mostrarBusqueda', model: [user:user])


    }

    def userTipe(){

    }

}
