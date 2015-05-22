package dominiosconstraint

class ForumController {
    static scaffold = true;
/*
    def index(){
        render(view:'read')
    }
    def read(){
        ['forumList':Forum.list()]
    }

    def create(){
        def newForum = new Forum(params)
        if(!newForum.save(flush: true)){
            redirect(action: 'index')
        }else{
            redirect(action: 'index')
            print(eachError(bean: "${newForum}"))
        }
    }

    def update(){

    }

    def delete(){
        def deleteForum = Forum.findById(session.id)
        if(!deleteForum.delete(flush: true)){
            redirect(action: 'index')
        }else{
            redirect(action: 'index')
            print(eachError(bean: "${newForum}"))
        }
    }
    */
}
