package dominiosconstraint

class AdminController {

    def beforeInterceptor = {println "Se va a ejecutado la acción ${actionName}"}
    def afterInterceptor = {println "Se ha ejecutado la acción ${actionName}"}

    def index(){
        render(view:'read')
    }
    def read(){
        ['adminInstance':Admin.list()]
    }

    def create(){

    }

    def createLogic(){

        def newAdmin = new Admin(params)
        newAdmin.password = newAdmin.password.encodeAsMD5()

        if(!newAdmin.save(flush: true)){
            render(view:'create',model:[admin:newAdmin])
            return
        }else{
            render(view: 'read')
            print(eachError(bean: "${newAdmin}"))
        }
    }

    def update(){
        def adminUpdate = Admin.findById(params.id)
        [adminUpdate:adminUpdate]
    }

    def updateLogic(){
        def adminUpdate = Admin.findById(params.id)
        adminUpdate.name = params.name
        adminUpdate.lastname = params.lastname
        adminUpdate.age = Integer.parseInt(params.age)
        adminUpdate.username = params.username
        adminUpdate.password = params.password
        adminUpdate.level = Integer.parseInt(params.level)
        adminUpdate.rating = Integer.parseInt(params.rating)
        adminUpdate.forums = params.forums
        if(!adminUpdate.save(flush: true)){
            render(view:'update',model:[admin:adminUpdate])
            return
        }else{
            render(view: 'read')
            print(eachError(bean: "${adminUpdate}"))
    }

    }


    def delete(){
        def deleteAdmin = Admin.findById(params.id)
        if(!deleteAdmin.delete(flush: true)){
            redirect(action: 'index')
        }else{
            redirect(action: 'index')
            print(eachError(bean: "${deleteAdmin}"))
        }
    }

    def profile(){
        def admin = Admin.findByUsername(session.username)
        [admin:admin]
    }

}
