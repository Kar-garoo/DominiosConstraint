package dominiosconstraint

class UserController {

    def index(){

    }
    def logIn(){

    }
    def logInLogic(){
        def user = User.findByUsername(params.username)

        if(user){
            def regular = Regular.findByUsername(params.username)
            def admin = Admin.findByUsername(params.username)
            if(regular){
                if(user.password == params.password){
                    redirect(controller: 'regular',action: 'profile')
                }
            }
            if(admin){
                if(user.password == params.password){
                    session["username"] = params.username
                    redirect(controller: 'admin',action: 'profile')
                }
            }
        }else{
            flash.message = "Login error"
            render(view: 'logIn')
        }
    }

    def userTipe(){

    }

}
