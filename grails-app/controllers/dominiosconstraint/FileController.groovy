package dominiosconstraint

import org.springframework.web.multipart.commons.CommonsMultipartFile


class FileController {

    private static final validFormats = ['text/plain', 'image/png']

    def beforeInterceptor = {println "Se va a ejecutado la acción ${actionName}"}
    def afterInterceptor = {println "Se ha ejecutado la acción ${actionName}"}

    def index(){
        render(view: 'read')
    }
    def read(){

        [fileInstance:File.list()]
    }
    def create(){

    }
    def createLogic(){
        def file = request.getFile('myFile')

        if (!validFormats.contains(file.getContentType()) && file.bytes != []) {
            flash.message = "fileError"
            render(view:'create', model: [formats:validFormats])
            return
        }else{
            def newFile = new File()
            newFile.content = file.bytes
            newFile.fileType = file.getContentType()
            print newFile.fileType
            newFile.size = file.getSize()
            print newFile.size

            newFile.save()
            print "Cantidad!!!"
            print File.count
            redirect(action: 'read' )
        }


    }
    def update(){

    }
    def updateLogic(){
        def file = request.getFile('myFile')

        if (!validFormats.contains(file.getContentType()) && file.bytes != []) {
            flash.message = "fileError"
            render(view:'update', model: [formats:validFormats])
            return
        }else{
            def oldFile = File.findById(params.id)
            oldFile.content = file.bytes
            oldFile.fileType = file.getContentType()
            oldFile.size = file.getSize()
            oldFile.save()
            redirect(action: 'read' )
        }
    }
    def delete(){
        def f = File.findById(params.id)
        f.delete()
        redirect(action: 'read' )
    }
    def share(){
        render "No se ha implemtado esta fucncionalidad"
    }
    def download(){
        def file = File.findById(params.id)

        if (file.exists()) {
            response.setContentType(file.fileType)
            response.setHeader("Content-disposition", "filename=${file.id}")
            response.outputStream << file.content
            return
        }

        redirect(action: 'read' )
    }
}
