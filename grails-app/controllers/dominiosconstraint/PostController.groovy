package dominiosconstraint



class PostController {
    def beforeInterceptor = {println "Se va a ejecutado la acción ${actionName}"}
    def afterInterceptor = {println "Se ha ejecutado la acción ${actionName}"}
    def rate(){
        def postShow = Post.findById(params.id)
        postShow.rate++
        postShow.save()
    }
    def comments(){
        def postUpdate = Post.findById(params.id)
        [postUpdate:postUpdate]
    }

    def commentLogic(){
        def postShow = Post.findById(params.id)
        postShow.comments << params.comment
        postShow.save()

    }
    def share(){

    }
    def show(){
        def postShow = Post.findById(params.id)
        [postShow:postShow]

    }
    def index(){
        render(view:'read')
    }
    def read(){
        ['postInstance':Post.list()]
    }

    def create(){

    }

    def createLogic(){

        def newPost = new Post(params)

        if(!newPost.save(flush: true)){
            render(view:'create',model:[post:newPost])
            return
        }else{
            render(view: 'read')
            print(eachError(bean: "${newPost}"))
        }
    }

    def update(){
        def postUpdate = Post.findById(params.id)
        [postUpdate:postUpdate]
    }

    def updateLogic(){
        def postUpdate = Post.findById(params.id)
        postUpdate.topic=params.topic
        postUpdate.itsAllowed=params.itsAllowed
        postUpdate.fatherForum_id = Forum.findById(params.fatherForum_id.id)
        postUpdate.owner_id = Regular.findById(params.owner_id.id)

        if(!postUpdate.save(flush: true)){
            render(view:'update',model:[post:postUpdate])
            return
        }else{
            render(view: 'read')
            print(eachError(bean: "${postUpdate}"))
        }

    }

    def delete(){
        def deletePost = Post.findById(params.id)
        if(!deletePost.delete(flush: true)){
            redirect(action: 'index')
        }else{
            redirect(action: 'index')
            print(eachError(bean: "${deletePost}"))
        }
    }
}
