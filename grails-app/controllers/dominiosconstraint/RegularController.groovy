package dominiosconstraint


class RegularController {
    def beforeInterceptor = {println "Se va a ejecutado la acción ${actionName}"}
    def afterInterceptor = {println "Se ha ejecutado la acción ${actionName}"}
    def show(){
        def regularShow = Regular.findById(params.id)
        [regularShow:regularShow]

    }
    def index(){
        render(view:'read')

    }
    def read(){
        ['regularInstance':Regular.list()]
    }

    def create(){

    }

    def createLogic(){

        def newRegular = new Regular(params)
        newRegular.password = newRegular.password.encodeAsMD5()

        if(!newRegular.save(flush: true)){
            render(view:'create',model:[regular:newRegular])
            return
        }else{
            render(view: 'read')
            print(eachError(bean: "${newRegular}"))
        }
    }

    def update(){
        def regularUpdate = Regular.findById(params.id)
        [regularUpdate:regularUpdate]
    }

    def updateLogic(){
        def regularUpdate = Regular.findById(params.id)
        regularUpdate.name = params.name
        regularUpdate.lastname = params.lastname
        regularUpdate.age = Integer.parseInt(params.age)
        regularUpdate.username = params.username
        regularUpdate.password = params.password
        regularUpdate.postViews = Integer.parseInt(params.postViews)
        regularUpdate.strikesNumber = Integer.parseInt(params.strikesNumber)
        regularUpdate.startNumber = Integer.parseInt(params.startNumber)
        regularUpdate.post=Post.findById(params.post)
        if(!regularUpdate.save(flush: true)){
            render(view:'update',model:[regular:regularUpdate])
            return
        }else{
            render(view: 'read')
            print(eachError(bean: "${regularUpdate}"))
        }

    }

    def delete(){
        def deleteRegular = Regular.findById(params.id)
        if(!deleteRegular.delete(flush: true)){
            redirect(action: 'index')
        }else{
            redirect(action: 'index')
            print(eachError(bean: "${deleteRegular}"))
        }
    }

    def profile(){
        def regular = Regular.findByUsername(session.username)
        [regular:regular]
    }
}
